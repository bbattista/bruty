-- Useful queries:
-- Show the running combines
SELECT * FROM (SELECT c_id, (SELECT c_id NOT IN (SELECT c_id FROM spec_combines FOR UPDATE SKIP LOCKED)) AS running from view_individual_combines) as a WHERE a.running=True
-- See how many combines are running for a tile
SELECT count(*) FROM (SELECT (SELECT res_id NOT IN (SELECT r_id FROM spec_resolutions FOR UPDATE SKIP LOCKED)) AS running from view_individual_combines WHERE tile_id=1256) as a WHERE a.running=True





-- Create the primary tile table which holds the review tile geometry and production_branch, locality, hemisphere, utm zone, datum, and other parameters
CREATE TABLE IF NOT EXISTS public.spec_tiles
(
    build boolean,
    geometry geometry(Polygon,4326),
    combine_internal boolean,
    combine_public boolean,
    combine_navigation boolean,
    tile smallint NOT NULL,
    utm smallint NOT NULL,
    datum character varying COLLATE pg_catalog."default" NOT NULL,
    production_branch character varying COLLATE pg_catalog."default" NOT NULL,
    locality citext COLLATE pg_catalog."default" NOT NULL,
    hemisphere character(1) COLLATE pg_catalog."default" NOT NULL,
    erode boolean,
    t_id bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    request_combine boolean,
    combine_request_time timestamp without time zone,
    priority integer,
    request_export boolean,
    export_request_time timestamp without time zone,
    request_enc boolean,
    enc_request_time timestamp without time zone,
    CONSTRAINT spec_tiles_pkey PRIMARY KEY (t_id),
    CONSTRAINT tile_uniqueness UNIQUE (tile, utm, datum, production_branch, locality, hemisphere)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.spec_tiles
    OWNER to postgres;

GRANT ALL ON TABLE public.spec_tiles TO postgres;

-- Trigger: after_edit_tiles_trg

-- DROP TRIGGER IF EXISTS after_edit_tiles_trg ON public.spec_tiles;

CREATE OR REPLACE TRIGGER after_edit_tiles_trg
    AFTER INSERT OR UPDATE
    ON public.spec_tiles
    FOR EACH ROW
    EXECUTE FUNCTION public.after_edit_tiles();

COMMENT ON TRIGGER after_edit_tiles_trg ON public.spec_tiles
    IS 'When the geometry, utm zone or hemisphere are changed then force an update of the spec_resolutions.geometry_buffered';

-- Trigger: before_edit_tiles_trg

-- DROP TRIGGER IF EXISTS before_edit_tiles_trg ON public.spec_tiles;

CREATE OR REPLACE TRIGGER before_edit_tiles_trg
    BEFORE INSERT OR UPDATE
    ON public.spec_tiles
    FOR EACH ROW
    EXECUTE FUNCTION public.before_edit_tiles();

COMMENT ON TRIGGER before_edit_tiles_trg ON public.spec_tiles
    IS 'when the combine_now is set to True the fill the combine_time with now() and set the combine_now to False';


-- Create a spec_resolutions table for each resolution of a review tile
CREATE TABLE IF NOT EXISTS public.spec_resolutions
(
    resolution real NOT NULL,
    closing_distance real NOT NULL,
    tile_id bigint NOT NULL,
    r_id bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    geometry_buffered geometry,
    msg character varying COLLATE pg_catalog."default",
    export_start_time timestamp without time zone,
    export_end_time timestamp without time zone,
    export_code bigint,
    export_warnings_log character varying COLLATE pg_catalog."default",
    export_info_log character varying COLLATE pg_catalog."default",
    export_tries integer,
    export_data_location character varying COLLATE pg_catalog."default",
    export_running boolean,
    CONSTRAINT spec_res_pkey PRIMARY KEY (r_id),
    CONSTRAINT unique_tile_res UNIQUE (resolution, tile_id),
    CONSTRAINT tile_reference FOREIGN KEY (tile_id)
        REFERENCES public.spec_tiles (t_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.spec_resolutions
    OWNER to postgres;

-- Trigger: edit_resolutions

-- DROP TRIGGER IF EXISTS edit_resolutions ON public.spec_resolutions;

CREATE OR REPLACE TRIGGER edit_resolutions
    BEFORE INSERT OR UPDATE
    ON public.spec_resolutions
    FOR EACH ROW
    EXECUTE FUNCTION public.buffer_geom();

-- Create the bruty combines table with a record for each datatype/for_nav pair of a resolution of a review tile
CREATE TABLE IF NOT EXISTS public.spec_combines
(
    combine_code bigint,
    combine_warnings_log character varying COLLATE pg_catalog."default",
    combine_data_location character varying COLLATE pg_catalog."default",
    out_of_date boolean,
    change_summary character varying COLLATE pg_catalog."default",
    summary_datetime time without time zone,
    c_id bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    datatype character varying COLLATE pg_catalog."default",
    for_navigation boolean,
    res_id bigint,
    combine_start_time timestamp without time zone,
    combine_end_time timestamp without time zone,
    combine_tries integer,
    combine_info_log character varying COLLATE pg_catalog."default",
    combine_running boolean,
    CONSTRAINT spec_resolutions_pkey PRIMARY KEY (c_id),
    CONSTRAINT resolution_reference FOREIGN KEY (res_id)
        REFERENCES public.spec_resolutions (r_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        NOT VALID
)



TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.spec_combines
    OWNER to nbs_admin;


-- To have a boolean that signals to rebuild all versions of a tile, this script will fill the time field if the boolean is updated to True (and sets the boolean back to False).
-- It also resets the number of tries in the spec_combines table
-- Use now() instead of current_timestamp since we want date and current_timestamp was just time.

CREATE OR REPLACE FUNCTION before_edit_tiles()
RETURNS trigger AS $BODY$
BEGIN
	IF new.request_combine = TRUE THEN
		new.combine_request_time := now();
		new.request_combine := FALSE;
		UPDATE spec_combines SET combine_tries=0 WHERE spec_combines.datatype<>'enc' AND spec_combines.res_id IN (SELECT r_id FROM spec_resolutions WHERE spec_resolutions.tile_id=new.t_id);
	END IF;
	IF new.request_enc = TRUE THEN
		new.enc_request_time := now();
		new.request_enc := FALSE;
		UPDATE spec_combines SET combine_tries=0 WHERE spec_combines.datatype='enc' AND spec_combines.res_id IN (SELECT r_id FROM spec_resolutions WHERE spec_resolutions.tile_id=new.t_id);
	END IF;
	IF new.request_export = TRUE THEN
		new.export_request_time := now();
		new.request_export := FALSE;
		UPDATE spec_resolutions SET export_tries=0 WHERE tile_id=new.t_id;
	END IF;
	RETURN NEW;
END;
$BODY$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER before_edit_tiles_trg
    BEFORE INSERT OR UPDATE
    ON public.spec_tiles
    FOR EACH ROW
    EXECUTE FUNCTION public.before_edit_tiles();

COMMENT ON TRIGGER before_edit_tiles_trg ON public.spec_tiles
    IS 'when the combine_now is set to True the fill the combine_time with now() and set the combine_now to False';


CREATE OR REPLACE FUNCTION after_edit_tiles()
RETURNS trigger AS $BODY$
BEGIN
-- SQL was giving an error about the geometry comparison being “non-unique” so comparing as text seems to work.  This is inefficient but shouldn’t happen often.
  IF st_astext(new.geometry) <> st_astext(old.geometry) OR new.hemisphere<>old.hemisphere OR new.utm<>old.utm THEN
	  UPDATE spec_resolutions SET geometry_buffered=new.geometry WHERE spec_resolutions.tile_id=new.t_id;
  END IF;
  RETURN NEW;
END;
$BODY$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER after_edit_tiles_trg
    AFTER INSERT OR UPDATE
    ON public.spec_tiles
    FOR EACH ROW
    EXECUTE FUNCTION public.after_edit_tiles();

COMMENT ON TRIGGER after_edit_tiles_trg ON public.spec_tiles
    IS 'When the geometry, utm zone or hemisphere are changed then force an update of the spec_resolutions.geometry_buffered';


-- Create a buffered geometry in the correct projection based on utm and closing_distance parameters
CREATE OR REPLACE FUNCTION buffer_geom()
RETURNS trigger AS $BODY$
	DECLARE
		_utm integer;
		_hemi char;
		_geom geometry;
		_srid integer;
	BEGIN
		-- get the utm zone and geometry field from the tiles table
		SELECT utm, hemisphere, geometry INTO _utm, _hemi, _geom from spec_tiles WHERE t_id=NEW.tile_id;
		_hemi:=LOWER(_hemi);
		-- detemine the projection to use for buffering
		IF _hemi='n' THEN
			IF _utm = 59 THEN
				_srid:=3372; -- 59N
			ELSIF _utm = 60 THEN
				_srid:=3373; -- 60N
			ELSIF _utm = 60 THEN
				_srid:=8692; -- 54N
			ELSIF _utm = 60 THEN
				_srid:=8693; -- 55N
			ELSE
				_srid:=26900+_utm;
			END IF;
		ELSIF _hemi='s' THEN
			_srid:=32700+_utm;
		END IF;
		-- buffer by the closing_dist column based on utm zone and place in buffered_geometry
		NEW.geometry_buffered := st_setsrid(st_buffer(st_transform(st_segmentize(_geom, 0.00277778::double precision), _srid), GREATEST(NEW.closing_distance::integer, 1500)::double precision, 'join=mitre'::text), _srid);
		new.msg:= CONCAT('epsg:',_srid,' ',GREATEST(NEW.closing_distance::integer, 1500),'m');
		RETURN NEW;
	END;
$BODY$ LANGUAGE plpgsql;


CREATE OR REPLACE TRIGGER edit_resolutions
    BEFORE INSERT OR UPDATE
    ON public.spec_resolutions
    FOR EACH ROW
    EXECUTE FUNCTION public.buffer_geom();



-- Primary view for the bruty combines
DROP VIEW IF EXISTS view_tiles;
DROP VIEW IF EXISTS view_individual_combines;
CREATE VIEW view_individual_combines AS
	-- QGIS likes a key as the first column unless you used "setKeyColumn" in api so add it first (as a different name to avoid conflict)
	-- Also I want to remove the buffered_geometry (makes QGIS really slow) so have to manually add the spec_resolutions columns
	SELECT B.c_id as view_id, TI.request_combine, TI.combine_request_time, B.combine_running,
		TI.request_export, TI.export_request_time,R.export_running,
		TI.production_branch, TI.utm, TI.hemisphere, TI.tile, TI.datum, TI.locality,
		R.resolution, R.closing_distance, B.datatype, B.for_navigation,
		TI.priority,
		((B.datatype<>'enc' and (TI.combine_request_time>B.combine_start_time OR TI.combine_request_time>B.combine_end_time OR (TI.combine_request_time IS NOT NULL AND (B.combine_start_time IS NULL OR B.combine_end_time IS NULL)))) OR
		(B.datatype='enc' and (TI.enc_request_time>B.combine_start_time OR TI.enc_request_time>B.combine_end_time OR (TI.enc_request_time IS NOT NULL AND (B.combine_start_time IS NULL OR B.combine_end_time IS NULL))))) combine_waiting,
		(TI.export_request_time>R.export_start_time OR TI.export_request_time>R.export_end_time OR (TI.export_request_time IS NOT NULL AND (R.export_start_time IS NULL OR R.export_end_time IS NULL))) export_waiting,
		(R.export_end_time<B.combine_start_time OR R.export_end_time<B.combine_end_time OR (R.export_end_time IS NULL AND (B.combine_end_time IS NOT NULL))) combined_after_export,
		(TI.export_request_time IS NOT NULL AND TI.export_request_time<=R.export_start_time AND R.export_start_time<=R.export_end_time AND R.export_start_time>B.combine_end_time AND R.export_end_time>B.combine_end_time AND R.export_code<=0) exported,
		B.combine_start_time, B.combine_end_time,
		B.combine_code, B.combine_tries, B.combine_data_location, B.combine_warnings_log, B.combine_info_log,
		R.export_start_time, R.export_end_time,
		R.export_code, R.export_tries, R.export_warnings_log, R.export_info_log, R.export_data_location,
		B.change_summary, B.summary_datetime, B.out_of_date,
		TI.request_enc, TI.enc_request_time,
		B.c_id, B.res_id, R.tile_id, TI.geometry
	FROM spec_combines B JOIN spec_resolutions R ON (B.res_id = R.r_id) JOIN spec_tiles TI ON (R.tile_id = TI.t_id)
	WHERE TI.build is True;


CREATE OR REPLACE FUNCTION edit_combine_view()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
DECLARE
	_combine_locked bool;
	_export_locked bool;
	_combine_lock_cnt int;
	_export_lock_cnt int;
BEGIN
	IF TG_OP = 'UPDATE' THEN
		-- check if the row is locked for data changes or if another related record is locked in the case of combine/export requests
		SELECT (SELECT c_id NOT IN (SELECT c_id FROM spec_combines FOR UPDATE SKIP LOCKED)) INTO _combine_locked from spec_combines WHERE c_id=NEW.c_id;
		SELECT (SELECT r_id NOT IN (SELECT r_id FROM spec_resolutions FOR UPDATE SKIP LOCKED)) INTO _export_locked from spec_resolutions WHERE r_id=NEW.res_id;
		SELECT count(*) INTO _combine_lock_cnt FROM (SELECT (SELECT c_id NOT IN (SELECT c_id FROM spec_combines FOR UPDATE SKIP LOCKED)) AS running from view_individual_combines WHERE tile_id=NEW.tile_id) as a WHERE a.running=True;
		SELECT count(*) INTO _export_lock_cnt FROM (SELECT (SELECT res_id NOT IN (SELECT r_id FROM spec_resolutions FOR UPDATE SKIP LOCKED)) AS running from view_individual_combines WHERE tile_id=NEW.tile_id) as a WHERE a.running=True;
		-- TODO this error message should be a variable rather than copied four times.
		-- raise 'c:% e:% cc:% % ec:% %', _combine_locked, _export_locked, _combine_lock_cnt, NEW.request_combine, _export_lock_cnt, NEW.request_export;
		if _combine_lock_cnt>0 AND (NEW.request_combine OR NEW.request_enc) THEN
			raise '% combines are running for % % % tile:% %m % nav:%', _combine_lock_cnt, NEW.production_branch, NEW.utm, NEW.locality, NEW.tile, NEW.resolution, NEW.datatype, NEW.for_navigation;
		END IF;
		if _export_lock_cnt>0 AND NEW.request_export THEN
			raise '% exports are running for % % % tile:% %m % nav:%', _export_lock_cnt, NEW.production_branch, NEW.utm, NEW.locality, NEW.tile, NEW.resolution, NEW.datatype, NEW.for_navigation;
		END IF;
		-- Avoid writing to the spec_combines or spec_resolutions as they might be locked.  If a user is pressing the request export/combine tool then we wouldn't need to update the other tables
		IF OLD.combine_start_time<>NEW.combine_start_time OR OLD.combine_end_time<>NEW.combine_end_time OR OLD.combine_code<>NEW.combine_code OR
			OLD.combine_info_log<>NEW.combine_info_log OR OLD.combine_warnings_log<>NEW.combine_warnings_log OR
			OLD.combine_tries<>NEW.combine_tries OR OLD.combine_data_location<>NEW.combine_data_location OR
			OLD.out_of_date<>NEW.out_of_date OR OLD.change_summary<>NEW.change_summary OR OLD.summary_datetime<>NEW.summary_datetime THEN

			if _combine_locked THEN
				raise 'combine is running and the record is locked for % % % tile:% %m % nav:%', NEW.production_branch, NEW.utm, NEW.locality, NEW.tile, NEW.resolution, NEW.datatype, NEW.for_navigation;
			END IF;

		END IF;
		IF OLD.export_start_time<>NEW.export_start_time OR OLD.export_end_time<>NEW.export_end_time OR OLD.export_code<>NEW.export_code OR
			OLD.export_info_log<>NEW.export_info_log OR OLD.export_warnings_log<>NEW.export_warnings_log OR
			OLD.export_tries<>NEW.export_tries OR OLD.export_data_location<>NEW.export_data_location THEN

			if _export_locked THEN
				raise 'export is running and the record is locked for % % % tile:% %m % nav:%', NEW.production_branch, NEW.utm, NEW.locality, NEW.tile, NEW.resolution, NEW.datatype, NEW.for_navigation;
			END IF;

		END IF;
		-- Now write the data since we checked on the related locks
		UPDATE spec_combines SET combine_start_time=NEW.combine_start_time, combine_end_time=NEW.combine_end_time, combine_code=NEW.combine_code,
			combine_info_log=NEW.combine_info_log, combine_warnings_log=NEW.combine_warnings_log,
			combine_tries=NEW.combine_tries, combine_data_location=NEW.combine_data_location,
			out_of_date=NEW.out_of_date, change_summary=NEW.change_summary, summary_datetime=NEW.summary_datetime
			WHERE c_id=OLD.c_id;
		UPDATE spec_resolutions SET export_start_time=NEW.export_start_time, export_end_time=NEW.export_end_time, export_code=NEW.export_code,
			export_info_log=NEW.export_info_log, export_warnings_log=NEW.export_warnings_log,
			export_tries=NEW.export_tries, export_data_location=NEW.export_data_location
			WHERE r_id=OLD.res_id;
		IF NEW.request_combine = True OR NEW.request_enc THEN
			UPDATE spec_tiles SET request_combine=NEW.request_combine, request_enc=NEW.request_enc WHERE t_id = (select tile_id from spec_resolutions WHERE r_id=NEW.res_id);
		END IF;
		IF NEW.request_export = True THEN
			UPDATE spec_tiles SET request_export=TRUE WHERE t_id = (select tile_id from spec_resolutions WHERE r_id=NEW.res_id);
		END IF;
		RETURN NEW;
	ELSIF TG_OP = 'DELETE' THEN
		DELETE FROM spec_combines WHERE c_id=OLD.c_id;
		RETURN NULL;
	END IF;
	RETURN NEW;
END;
$function$;

CREATE OR REPLACE TRIGGER edit_combine_view_trigger
    INSTEAD OF INSERT OR DELETE OR UPDATE
    ON public.view_individual_combines
    FOR EACH ROW
    EXECUTE FUNCTION public.edit_combine_view();



DROP VIEW IF EXISTS view_tiles;
CREATE or REPLACE VIEW view_tiles as
--CONCAT('Tile ',tile,' ', resolution,'m ', datum, ' ', production_branch, '_', utm, hemisphere, ' ', locality) tile_name,
SELECT tile_id, production_branch, utm, tile, datum, hemisphere, locality, priority,
	sum((combine_running)::int) combining,
	sum((datatype<>'enc' and combine_waiting)::int) combine_waiting,
	sum((datatype='enc' and combine_waiting)::int) enc_combine_waiting,
	bool_or(combine_code IS NULL) never_combined,
	bool_or(combine_code>0) combine_errors,

	sum((export_running)::int) exporting,
	sum((datatype='enc' and combined_after_export)::int) enc_newer_than_export,
	sum((datatype<>'enc' and combined_after_export)::int) combine_newer_than_export,
	-- I don't think we need to separate the export waiting based on ENC
	-- sum((datatype<>'enc' and export_waiting)::int) export_waiting,
	-- sum((datatype='enc' and export_waiting)::int) enc_export_waiting,
	sum(export_waiting::int) export_waiting,
	bool(sum((NOT(datatype='enc' OR (datatype<>'enc' and exported)))::int)=0) export_complete,
	bool_or(export_code>0 OR (export_code IS NULL AND NOT (export_tries IS NULL OR export_tries <=0))) export_errors,

	string_agg(CASE WHEN datatype='qualified' AND for_navigation THEN CONCAT(combine_data_location,';') ELSE '' END, '') qualified_data_locations,
	string_agg(CASE WHEN combine_code>0 THEN CONCAT(combine_warnings_log,';') ELSE '' END, '') combine_warnings,
	string_agg(CASE WHEN export_code>0 and datatype='qualified' and for_navigation THEN CONCAT(export_warnings_log,';') ELSE '' END, '') export_warnings,
 	MIN(combine_end_time) age,
	request_combine, request_export, geometry
FROM view_individual_combines
GROUP BY tile, utm, datum, production_branch, hemisphere, locality, request_combine, request_export, tile_id, priority, geometry
ORDER BY production_branch, utm, locality, tile desc;


CREATE OR REPLACE FUNCTION edit_view_tiles()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
      IF TG_OP = 'UPDATE' THEN
       UPDATE spec_tiles SET priority=NEW.priority, request_combine=NEW.request_combine, request_export=NEW.request_export WHERE t_id=NEW.tile_id;
       RETURN NEW;
      -- ELSIF TG_OP = 'DELETE' THEN
      --  DELETE FROM spec_combines WHERE c_id=OLD.c_id;
      --  DELETE FROM spec_resolutions WHERE r_id=OLD.r_id
      --  RETURN NULL;
      END IF;
      RETURN NEW;
    END;
$function$;

CREATE OR REPLACE TRIGGER edit_view_tiles_trigger
    INSTEAD OF DELETE OR UPDATE OR INSERT
    ON public.view_tiles
    FOR EACH ROW
    EXECUTE FUNCTION public.edit_view_tiles();
