import json
import os
import enum
import pathlib
from typing import List, Set, Dict, Tuple, Union, Sequence

import numpy
from collections.abc import Sequence

from osgeo import gdal, osr

from nbs.bruty.abstract import VABC, abstractmethod
from nbs.bruty.utils import affine, affine_center, inv_affine, remove_file

# investigated the two choices:
#   store full data arrays which should be faster and deltas could be created vs storing deltas which may be smaller but slower
#   By storing the full data in the last position and deltas for everything leading up performance is good for the normal case of adding data
#   and disk space is minimized
# deltas needed a mask so we can tell the difference between no-change and was empty - a MASK layer was added to the Storage class data

LayersEnum = enum.IntEnum('Layers', (("ELEVATION", 0), ("UNCERTAINTY", 1), ("CONTRIBUTOR", 2), ("SCORE", 3), ("FLAGS", 4), ("MASK", 5)))
""" LayersEnum contains the layer numbers for Storage data. 
It can be used as LayersEnum['ELEVATION'] or LayersEnum.ELEVATION and the resulting values are subclasses of an int (see Python enum.IntEnum)"""

ALL_LAYERS = tuple([layer.value for layer in LayersEnum])
INFO_LAYERS = (LayersEnum.ELEVATION, LayersEnum.UNCERTAINTY, LayersEnum.CONTRIBUTOR, LayersEnum.SCORE, LayersEnum.FLAGS)
LAYER_NAMES = list(LayersEnum.__members__.keys())


# @todo  Add a TileDB backend - maybe make it the only storage type.
# FIXME  Add TileDB storage
# Chen investigaed TileDB and it allows "time travel" to recover the data at a certain date but
# it doesn't allow editing or slicing of the history array.  It basically has no more function than this module.
# also it doesn't compress using deltas like this, so each insert of a full tile would cause the full tile to be stored.

# For the problem of contributor numbers needing a large range but having to store float32 in tiffs,
# going to try storing the contributor layer as integers inside the flost area, so on read+write a conversion
# will have to take place.
# import numpy
# a = numpy.array([1,3,5,1234567890], numpy.int32)
# f = numpy.frombuffer(a.tobytes(), numpy.float32)
# f
# array([1.4012985e-45, 4.2038954e-45, 7.0064923e-45, 1.2288902e+06],
#       dtype=float32)
# numpy.frombuffer(f.tobytes(), numpy.int32)
# array([         1,          3,          5, 1234567890])


class Storage(VABC):
    """ Class to store raster data and associated metadata.  Uses numpy arrays to pass data in and out.
    Layers available are dictated by :class:`LayersEnum` and numbers or names are usable from there.

    Metadata should at least supply keys named: 'min_x', 'min_y', 'max_x', 'max_y', 'epsg'
    """

    @staticmethod
    def _layer_as_int(layer: (int, str)):
        """ Convert a single int or string to the matching LayersEnum integer
        Parameters
        ----------
        layer
            string name for the LayersEnum or an int or Enum value

        Returns
        -------
        int
            integer based on LayersEnum
        """
        if isinstance(layer, int):
            int_layer = int(layer)
        elif isinstance(layer, str):
            int_layer = LayersEnum[layer].value
        else:
            raise ValueError(f"{layer} not recognized as a string, int or enum value")
        return int_layer

    @staticmethod
    def _layers_as_ints(layers: List[Union[int, str]]):
        """ Convert names or numbers for layers into a list of integers based on :class:`LayersEnum`

        Parameters
        ----------
        layers
            single int or string or a list of ints and strings
        Returns
        -------
        list
            Integers that equate to the string/int or list of strings and ints passed in
        """
        int_layers = []
        if layers is None:
            int_layers = INFO_LAYERS
        elif isinstance(layers, (int, str)):
            int_layers = [Storage._layer_as_int(layers)]
        elif isinstance(layers, Sequence):
            for lyr in layers:
                int_layers.append(Storage._layer_as_int(lyr))
        else:
            raise TypeError(f"layers {layers} not understood for accessing raster data")
        return int_layers

    @abstractmethod
    def get_arrays(self, layers: List[Union[int, str]] = None):
        """
        Parameters
        ----------
        layers
            List of layers to return, based on :class:`nbs.bruty.raster_data.LayersEnum`
        Returns
        -------
        numpy.arrays
        """
        raise NotImplementedError()

    @abstractmethod
    def get_metadata(self):
        """ Get the metadata for the arrays held

        Returns
        -------
        dict
            Metadata associated with the raster data
        """
        raise NotImplementedError()

    @abstractmethod
    def set_arrays(self, arrays, layers: List[Union[int, str]] = None):
        """ Set the raster arrays for the data being held.  The layers are overwritten based on the list of :class:`LayersEnum`.

        Parameters
        ----------
        arrays
            list or array of numpy.arrays holding the raster layers to store
        layers
            layer numbers to overwrite

        Returns
        -------
        None

        """
        raise NotImplementedError()

    @abstractmethod
    def set_metadata(self, metadata: dict):
        """ Metadata should at least supply keys named: 'min_x', 'min_y', 'max_x', 'max_y', 'epsg'
        Returns
        -------

        """
        raise NotImplementedError()


class TiffStorage(Storage):
    """ Store the raster data as geotiffs and the metadata as json files in the same directory.

    (This might be usable as any gdal raster by making the driver/extension a parameter, or deriving from this class)"""
    extension = ".tif"

    def __init__(self, path, arrays: numpy.array = None, layers: List[Union[int, str]] = None, meta: dict = None):
        """ Create an instance of a TiffStorage or open an existing path for use.

        Parameters
        ----------
        path
            Full path to store the tiff at.  Metadata will be stored at a matching .json path
        arrays
            numpy arrays to set data with, otherwise uses existing data at `path` on disk (if it exists)
        layers
            layers that arrays has passed in.  If None then all layers are expected
        meta
            Dictionary of the metadata, if None then existing data is read from the `path` specified
        """
        self.path = pathlib.Path(path)
        self._version = 1
        if meta is None:
            self.metadata = {}
            self.get_metadata()  # read from disk, if applicable
        else:
            self.set_metadata(meta)

        if arrays is not None:
            self.set_arrays(arrays, layers)

    @property
    def metapath(self):
        """ Gets the metadata path

        Returns
        -------
        pathlib.Path
            .json path metadata is stored in
        """
        return self.build_metapath(self.path)

    @staticmethod
    def build_metapath(path: Union[str, pathlib.Path]):
        """ Given a path return the associated .json path

        Parameters
        ----------
        path
            Path to create a .json filename at, normally pass in the raster storage .tif path

        Returns
        -------
        pathlib.Path
            Path ending in .json.  If "c:\\temp\\test.tif" was passed in then pathlib.Path("c:\\test\\test.json") would be returned
        """
        if not isinstance(path, pathlib.Path):
            path = pathlib.Path(path)
        return path.with_suffix('.json')

    def get_arrays(self, layers: List[Union[int, str]] = None):
        layer_nums = self._layers_as_ints(layers)
        # @todo check the version number and update for additional layers if needed
        dataset = gdal.Open(str(self.path))  # str in case it's a pathlib.Path
        x1, resx, dxy, y1, dyx, resy = dataset.GetGeoTransform()
        if resy > 0:
            raise ValueError("TiffStorage is expecting the y resolution to be negative in order to support VRTs")
        array_list = []
        for lyr in layer_nums:
            band = dataset.GetRasterBand(lyr + 1)
            array_list.append(numpy.flipud(band.ReadAsArray()))
            del band
        del dataset
        return numpy.array(array_list)

    def set(self, data: Storage):
        """ Copy an existing :class:`Storage` object into this TiffStorage object.  Overwrites any existing data.

        Parameters
        ----------
        data
            raster and metadata in a Storage object - could be another Tiff object or a Memory based Storage being serialized to disk.
        Returns
        -------
        None
        """
        # @todo set metadata first, it gets used in set_arrays for writing tiff, maybe should move this to meta!
        self.set_metadata(data.get_metadata())
        # the tifs are not compressing when being updated, so when we are setting all the data just recreate the whole tiff.
        remove_file(self.path, allow_permission_fail=True, raise_on_fail=True)
        # self._create_file(data.get_arrays(ALL_LAYERS).shape)  # this is call in set_arrays
        self.set_arrays(data.get_arrays(ALL_LAYERS), ALL_LAYERS)

    def get_metadata(self):
        if not self.metadata:
            try:
                f = open(self.metapath, 'r')
                self.metadata = json.load(f)
            except:
                self.metadata = {}
        return self.metadata.copy()

    def _create_file(self, shape: Sequence):
        """ Create a gdal file to store the raster data into.  Allocates space for all the bands specified by :class:`LayersEnum`.

        **Metadata must be set first for the geocoding to work**

        Parameters
        ----------
        shape
            Three dimension shape.  The first dimension is ignored (expecting that it comes from the layers being operated on).
            The second dimension is the row count.  The last dimension is the columns count.
            passing in numpy.zeros((3, 12, 20)).shape would create a SIX by 12 by 20 Tiff.
            The first dimension is overridden by the possible layers.

        Returns
        -------
        gdal.Dataset

        """
        driver = gdal.GetDriverByName('GTiff')
        # Is float32 going to work with contributor being a large integer value?
        #   NBS implements a workaround that encodes 32 bit ints into the float32 storage,
        #   requires some translation but enlarges the address space that is usable
        dataset = driver.Create(str(self.path), xsize=shape[2], ysize=shape[1], bands=len(LayersEnum), eType=gdal.GDT_Float32,
                                options=['COMPRESS=LZW', "TILED=YES"])
        meta = self.get_metadata()
        try:
            min_x = meta['min_x']
            min_y = meta['min_y']
            max_x = meta['max_x']
            max_y = meta['max_y']
            dx = (max_x - min_x) / shape[2]
            dy = (max_y - min_y) / shape[1]
            epsg = meta['epsg']
            # set y resolution to negative to support VRTs -- the get_ and set_arrays will flip the data so it looks positive to the caller
            gt = [min_x, dx, 0, min_y, 0, -dy]

            # Set location
            dataset.SetGeoTransform(gt)
            if epsg is not None:
                # Get raster projection
                srs = osr.SpatialReference()
                srs.ImportFromEPSG(epsg)
                dest_wkt = srs.ExportToWkt()

                # Set projection
                dataset.SetProjection(dest_wkt)
        except KeyError:
            pass  # doesn't have full georeferencing

        for band_index in LayersEnum:
            band = dataset.GetRasterBand(band_index + 1)
            if band_index == 0:  # tiff only supports one value of nodata, supress the warning
                band.SetNoDataValue(float(numpy.nan))
            band.SetDescription(LayersEnum(band_index).name)
            del band

        return dataset

    def set_arrays(self, arrays, layers: List[Union[int, str]] = None):
        """ **Metadata must be set first for the geocoding to work in the Tiff file**

            See :meth:`Storage.set_arrays`
        """
        layer_nums = self._layers_as_ints(layers)
        if os.path.exists(self.path):
            dataset = gdal.Open(str(self.path), gdal.GA_Update)
        else:
            dataset = self._create_file(arrays.shape)

        for index, lyr in enumerate(layer_nums):
            band = dataset.GetRasterBand(lyr + 1)
            band.WriteArray(numpy.flipud(arrays[index]))
            del band
        del dataset

    def set_metadata(self, metadata: dict):
        """ Writes a json file alongside the data tiff file.
        _00002.json with _00002.tif for example.

        Parameters
        ----------
        metadata
            Metadata should at least supply keys named: 'min_x', 'min_y', 'max_x', 'max_y', 'epsg'

        Returns
        -------
        None

        """
        self.metadata = metadata.copy()
        f = open(self.metapath, 'w')
        json.dump(metadata, f)
        f.close()


class MemoryStorage(Storage):
    extension = ""

    def __init__(self, arrays=None, layers: List[Union[int, str]] = None, meta: dict = None):  # , shape):
        """ Create an instance of a MemoryStorage.  To serialize this you could use TiffStorage.set().

        Parameters
        ----------
        arrays
            numpy arrays to set data with, otherwise uses existing data at `path` on disk (if it exists)
        layers
            layers that arrays has passed in.  If None then all layers are expected
        meta
            Dictionary of the metadata, if None then existing data is read from the `path` specified
        """
        self._version = 1
        if meta is None:
            self.metadata = {}
        else:
            self.set_metadata(meta)
        self.arrays = None  # numpy.full([self._layers_as_ints(None), *shape], numpy.nan)
        if arrays is not None:
            self.set_arrays(arrays, layers)

    def get_arrays(self, layers: List[Union[int, str]] = None):
        return self.arrays[self._layers_as_ints(layers), :].copy()

    def get_metadata(self):
        return self.metadata.copy()

    def set_arrays(self, arrays, layers: List[Union[int, str]] = None):
        if self.arrays is None:
            # make sure the data is allocated for all layers even if not supplied at this time (MASK layer in particular)
            self.arrays = numpy.full([len(LayersEnum)] + list(arrays.shape[1:]), numpy.nan)
        layer_nums = self._layers_as_ints(layers)
        # this should in theory reorder the arrays to match the LayersEnum ordering
        self.arrays[layer_nums, :] = arrays

    def set_metadata(self, metadata: dict):
        self.metadata = metadata.copy()


# class BagStorage(Storage):
#     extension = ".bag"
#     pass
#
#
# class DatabaseStorage(Storage):
#     pass
#
#
# class XarrayStorage(Storage):
#     pass


class RasterData(VABC):
    """ Class to encapsulate raster and metadata.  Uses an implementation of :class:Storage to implement serialization.
    """
    def __init__(self, storage: Storage, arrays: numpy.array = None, layers: List[Union[int, str]] = None, metadata: dict = None):
        """ Initialize a RasterData instance.  Supply a storage type and optionally arrays and metadata

        Parameters
        ----------
        storage
            :class:`Storage` based instance that holds the arrays and metadata (could be memory or disk storage)
        arrays
            arrays to initially store
        layers
            layers that arrays are describing
        metadata
            metadata describing the arrays being stored
        """
        self.storage = storage
        self._version = 1
        if metadata is not None:
            self.set_metadata(metadata)
        if arrays is not None:
            self.set_arrays(arrays, layers)

    def __repr__(self):
        return str(self.get_arrays())

    @staticmethod
    def from_arrays(arrays, metadata: dict = None, layers: List[Union[int, str]] = None):
        if metadata is None:
            metadata = {}
        r = RasterData(MemoryStorage())
        r.set_arrays(arrays, layers)
        r.set_metadata(metadata)
        return r

    def set_metadata_element(self, key, val):
        meta = self.get_metadata()
        meta[key] = val
        self.set_metadata(meta)

    def set_corners(self, min_x, min_y, max_x, max_y):
        meta = self.get_metadata()
        meta['min_x'] = min_x
        meta['min_y'] = min_y
        meta['max_x'] = max_x
        meta['max_y'] = max_y
        self.set_metadata(meta)

    def set_epsg(self, val):
        self.set_metadata_element('epsg', val)

    def get_epsg(self):
        return self.get_metadata()['epsg']

    def set_last_contributor(self, val, path):
        meta = self.get_metadata()
        meta['contrib_id'] = val
        meta['contrib_path'] = path
        # JSON only allows strings as keys - first tried an integer key which gets weird
        meta.setdefault("contributors", {})[str(val)] = str(path)
        all_paths = set(self.get_all_contributor_paths())
        all_paths.add(path)
        meta['all_paths'] = list(all_paths)
        self.set_metadata(meta)

    def get_last_contributor(self):
        try:
            last = self.get_metadata()['last']
        except KeyError:
            last = None
        return last

    def set_all_contributor_paths(self, val):
        # uses a set to retain the list of all contributors that were used in creating this raster
        self.set_metadata_element('all_paths', list(val))

    def get_all_contributor_paths(self):
        try:
            all = self.get_metadata()['all_paths'].copy()
        except KeyError:
            all = []
        return all

    def get_corners(self):
        meta = self.get_metadata()
        return meta['min_x'], meta['min_y'], meta['max_x'], meta['max_y']

    # @property
    # def min_x(self):
    #     return self.get_metadata()['min_x']
    # @min_x.setter
    # def min_x(self, val):
    #     self.set_metadata_element('min_x', val)

    @property
    def width(self):
        min_x, min_y, max_x, max_y = self.get_corners()
        return max_x - min_x

    @property
    def height(self):
        min_x, min_y, max_x, max_y = self.get_corners()
        return max_y - min_y

    def xy_to_rc_using_dims(self, nrows, ncols, x, y):
        """Convert from real world x,y to row, col indices given the shape of the array or tile to be used"""
        min_x, min_y, max_x, max_y = self.get_corners()
        col = numpy.array(ncols * (x - min_x) / self.width, numpy.int32)
        row = numpy.array(nrows * (y - min_y) / self.height, numpy.int32)
        return row, col

    def xy_to_rc(self, x, y):
        """Convert from real world x,y to raster row, col indices"""
        array = self.get_array(0)
        return self.xy_to_rc_using_dims(array.shape[0], array.shape[1], x, y)

    def rc_to_xy_using_dims(self, nrows, ncols, r, c, center=False):
        """Convert from real world x,y to raster row, col indices"""
        min_x, min_y, max_x, max_y = self.get_corners()
        res_x = (max_x - min_x) / ncols
        res_y = (max_y - min_y) / nrows
        if center:
            fn = affine_center
        else:
            fn = affine
        return fn(r, c, min_x, res_x, 0, min_y, 0, res_y)

    def rc_to_xy(self, r, c):
        """Convert from real world x,y to raster row, col indices"""
        array = self.get_array(0)
        return self.xy_to_rc_using_dims(array.shape[0], array.shape[1], r, c)

    def get_metadata(self):
        return self.storage.get_metadata()

    def set_metadata(self, metadata):
        self.storage.set_metadata(metadata)  # writes to the json file that goes with each tiff

    def get_array(self, layer):
        return self.storage.get_arrays(layer)[0]

    def get_arrays(self, layers=None):
        return self.storage.get_arrays(layers)

    def get_array_at_res(self, res, layers=None):
        """ Return the array at a different resolution than intrinsically stored.
        This could be to change the density of the tile (higher res data being added) or
        to create visualizations that could need higher or lower numbers of pixels.

        Parameters
        ----------
        res
        layers
            list of layer names desired.  If None then get all available,

        Returns
        -------

        """
        pass

    def set_array(self, array, layer):
        self.storage.set_arrays(array, layer)

    def set_arrays(self, arrays, layers=None):
        self.storage.set_arrays(arrays, layers)

    def get_elevation(self):
        return self.storage.get_array(LayersEnum.ELEVATION)

    def get_flags(self):  # include index to survey score parameters (year?)
        pass

    def computed_score(self):
        # @todo look up the score parameters in the database table and then compute a score based on that
        return self.get_array(LayersEnum.SCORE)

    def apply_delta(self, delta):
        current_data = self.get_arrays(ALL_LAYERS)
        d = delta.get_arrays(ALL_LAYERS)
        indices = d[LayersEnum.MASK] == 1  # ~numpy.isnan(d)
        current_data[:, indices] = d[:, indices]
        r = RasterDelta(MemoryStorage(current_data, ALL_LAYERS))
        # r.set_arrays(current_data)
        return r


def arrays_dont_match(new_data, old_data):
    """If both arrays have a nan value treat that as equal even though numpy threats them as not equal"""
    not_both_nan = ~numpy.logical_and(numpy.isnan(new_data[:LayersEnum.MASK]), numpy.isnan(old_data[:LayersEnum.MASK]))
    diff_indices = numpy.logical_and(new_data[:LayersEnum.MASK] != old_data[:LayersEnum.MASK], not_both_nan)
    return diff_indices


def arrays_match(new_data, old_data):
    """If both arrays have a nan value treat that as equal even though numpy threats them as not equal"""
    return ~arrays_dont_match(new_data, old_data)


class RasterDelta(RasterData):
    def __init__(self, storage, arrays=None, layers=None):
        super().__init__(storage, arrays, layers)
        self._ver = 1

    @staticmethod
    def from_rasters(raster_old, raster_new):
        new_data = raster_new.get_arrays(ALL_LAYERS)
        old_data = raster_old.get_arrays(ALL_LAYERS)
        # not_both_nan = ~numpy.logical_and(numpy.isnan(new_data[:LayersEnum.MASK]), numpy.isnan(old_data[:LayersEnum.MASK]))
        # diff_indices = numpy.logical_and(new_data[:LayersEnum.MASK] != old_data[:LayersEnum.MASK], not_both_nan)
        diff_indices = arrays_dont_match(new_data, old_data)
        # numpy.logical_or.reduce(i)
        indices = numpy.any(diff_indices,
                            axis=0)  # if any of the layers had a change then save them all the layers at that location, not strictly necessary
        delta_array = numpy.full(new_data.shape, numpy.nan)
        delta_array[:LayersEnum.MASK, indices] = old_data[:LayersEnum.MASK, indices]
        delta_array[LayersEnum.MASK, indices] = 1
        r = RasterDelta(MemoryStorage(delta_array, ALL_LAYERS))
        r.set_metadata(raster_old.get_metadata())
        # r.set_arrays(delta_array)
        return r
