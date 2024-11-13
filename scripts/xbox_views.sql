CREATE or REPLACE VIEW xbox_navigation_view as SELECT distinct on (tile, utm, datum, resolution, production_branch, hemisphere, locality) CONCAT('Tile ',tile,' ', resolution,'m ', datum, ' ', production_branch, utm, ' at ', export_time) tile_name,
approved, notes, data_location, production_branch, utm, tile, resolution, datum, combine_time, export_time, internal, navigation, public,
mcd_ingested, bluetopo_ingested, hsd_ingested, modeling_ingested, precision_nav_ingested, id,
geometry
FROM xbox
WHERE navigation=TRUE
ORDER BY tile, utm, datum, resolution, production_branch, hemisphere, locality, export_time desc;


CREATE or REPLACE VIEW xbox_public_view as SELECT distinct on (tile, utm, datum, resolution, production_branch, hemisphere, locality) CONCAT('Tile ',tile,' ', resolution,'m ', datum, ' ', production_branch, utm, ' at ',export_time) tile_name,
approved, notes, data_location, production_branch, utm, tile, resolution, datum, combine_time, export_time, internal, navigation, public,
mcd_ingested, bluetopo_ingested, hsd_ingested, modeling_ingested, precision_nav_ingested, id,
geometry
FROM xbox
WHERE public=TRUE AND navigation=FALSE
ORDER BY tile, utm, datum, resolution, production_branch, hemisphere, locality, export_time desc;


CREATE or REPLACE VIEW xbox_internal_view as SELECT distinct on (tile, utm, datum, resolution, production_branch, hemisphere, locality) CONCAT('Tile ',tile,' ', resolution,'m ', datum, ' ', production_branch, utm, ' at ',export_time) tile_name,
approved, notes, data_location, production_branch, utm, tile, resolution, datum, combine_time, export_time, internal, navigation, public,
mcd_ingested, bluetopo_ingested, hsd_ingested, modeling_ingested, precision_nav_ingested, id,
geometry
FROM xbox
WHERE internal=TRUE AND public=FALSE AND navigation=FALSE
ORDER BY tile, utm, datum, resolution, production_branch, hemisphere, locality, export_time desc;

CREATE or REPLACE VIEW xbox_export_complete_view as
SELECT CONCAT('Tile ',tile,' ', resolution,'m ', datum, ' ', production_branch, utm, ' at ',export_time) tile_name,
count(*) cnt, bool_or(navigation) navigation, bool_or(public) public, bool_or(internal) internal, geometry
FROM xbox
-- WHERE utm=19 and tile=13
WHERE export_time > (current_timestamp - interval '90 day')
GROUP BY tile, utm, datum, resolution, production_branch, hemisphere, locality, export_time, geometry
ORDER BY production_branch, utm, tile, export_time desc;

CREATE or REPLACE VIEW xbox_most_recent_export_view as
SELECT
	distinct on (tile, utm, datum, resolution, production_branch, hemisphere, locality)
	CONCAT('Tile ',tile,' ', resolution, 'm ', datum, ' ', production_branch, utm, ' at ', export_time) tile_name,
	production_branch, utm, tile,
	resolution, datum, export_time,
	navigation, public, internal, geometry
FROM (
	SELECT
		tile, utm, datum, resolution, production_branch, hemisphere, locality, export_time,
		count(*) cnt, bool_or(navigation) navigation, bool_or(public) public, bool_or(internal) internal, geometry
	FROM xbox
	GROUP BY tile, utm, datum, resolution, production_branch, hemisphere, locality, export_time, geometry
	ORDER BY production_branch, utm, tile, export_time desc
) x
ORDER BY tile, utm, datum, resolution, production_branch, hemisphere, locality, export_time desc;


CREATE OR REPLACE FUNCTION set_xbox_approved()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
 IF TG_OP = 'UPDATE' THEN
       UPDATE xbox SET approved=NEW.approved WHERE id=OLD.id;
       RETURN NEW;
      END IF;
      RETURN NEW;
    END;
$function$;


CREATE TRIGGER xbox_interal_approved_trig
INSTEAD OF INSERT OR UPDATE OR DELETE
ON  xbox_internal_view
FOR EACH ROW
EXECUTE FUNCTION set_xbox_approved();


CREATE TRIGGER xbox_public_approved_trig
INSTEAD OF INSERT OR UPDATE OR DELETE
ON  xbox_public_view
FOR EACH ROW
EXECUTE FUNCTION set_xbox_approved();


CREATE TRIGGER xbox_navigation_approved_trig
INSTEAD OF INSERT OR UPDATE OR DELETE
ON  xbox_navigation_view
FOR EACH ROW
EXECUTE FUNCTION set_xbox_approved();
