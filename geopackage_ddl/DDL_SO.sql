---
-- title: "Howto: produce a GeoPackage template for INSPIRE Soil data"
-- date: 20/08/2025
-- author: Andrea Lachi - andrea.lachi@crea.gov.it
---

--- a set of sql statements to update a plain geopackage template to a INSPIRE Soil template
/* 
███████ ██████  ███████  ██████      ██████   ██████  ██████  ███████ 
██      ██   ██ ██      ██                ██ ██  ████      ██ ██      
█████   ██████  ███████ ██   ███      █████  ██ ██ ██  █████  ███████ 
██      ██           ██ ██    ██          ██ ████  ██      ██      ██ 
███████ ██      ███████  ██████      ██████   ██████  ██████  ███████ 
 */


INSERT INTO gpkg_spatial_ref_sys (srs_name, srs_id, organization, organization_coordsys_id, definition, description) VALUES ('EPSG:ETRS89 / LAEA Europe', 3035, 'EPSG', 3035, 'PROJCS["ETRS89 / LAEA Europe", 
  GEOGCS["ETRS89", 
    DATUM["European Terrestrial Reference System 1989", 
      SPHEROid["GRS 1980", 6378137.0, 298.257222101, AUTHORITY["EPSG","7019"]], 
      TOWGS84[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], 
      AUTHORITY["EPSG","6258"]], 
    PRIMEM["Greenwich", 0.0, AUTHORITY["EPSG","8901"]], 
    UNIT["degree", 0.017453292519943295], 
    AXIS["Geodetic latitude", NORTH], 
    AXIS["Geodetic longitude", EAST], 
    AUTHORITY["EPSG","4258"]], 
  PROJECTION["Lambert_Azimuthal_Equal_Area", AUTHORITY["EPSG","9820"]], 
  PARAMETER["latitude_of_center", 51.99999999999999], 
  PARAMETER["longitude_of_center", 10.0], 
  PARAMETER["false_easting", 4321000.0], 
  PARAMETER["false_northing", 3210000.0], 
  UNIT["m", 1.0], 
  AXIS["Northing", NORTH], 
  AXIS["Easting", EAST], 
  AUTHORITY["EPSG","3035"]]', 'Use ETRS89 / LCC (code 3034) for conformal mapping at 1:500,000 scale or smaller or ETRS89 / UTM (codes 25828-37 or 3040-49) for conformal mapping at scales larger than 1:500,000.');


/*
 ██████  ██████  ██   ██  ██████          ██████   █████  ████████  █████           ██████  ██████  ██      ██    ██ ███    ███ ███    ██ ███████     
██       ██   ██ ██  ██  ██               ██   ██ ██   ██    ██    ██   ██         ██      ██    ██ ██      ██    ██ ████  ████ ████   ██ ██          
██   ███ ██████  █████   ██   ███         ██   ██ ███████    ██    ███████         ██      ██    ██ ██      ██    ██ ██ ████ ██ ██ ██  ██ ███████     
██    ██ ██      ██  ██  ██    ██         ██   ██ ██   ██    ██    ██   ██         ██      ██    ██ ██      ██    ██ ██  ██  ██ ██  ██ ██      ██     
 ██████  ██      ██   ██  ██████  ███████ ██████  ██   ██    ██    ██   ██ ███████  ██████  ██████  ███████  ██████  ██      ██ ██   ████ ███████ 
*/

CREATE TABLE gpkg_data_columns (
  table_name TEXT NOT NULL,
  column_name TEXT NOT NULL,
  name TEXT,
  title TEXT,
  description TEXT,
  mime_type TEXT,
  constraint_name TEXT,
  CONSTRAINT pk_gdc PRIMARY KEY (table_name, column_name),
  CONSTRAINT gdc_tn UNIQUE (table_name, name)
);




/*                  
███████  ██████  ██ ██      ███████ ██ ████████ ███████ 
██      ██    ██ ██ ██      ██      ██    ██    ██      
███████ ██    ██ ██ ██      ███████ ██    ██    █████   
     ██ ██    ██ ██ ██           ██ ██    ██    ██      
███████  ██████  ██ ███████ ███████ ██    ██    ███████
         */                             


-- Table soilsite ---------------------------------------------------------------------------------------
CREATE TABLE soilsite
( 
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    guidkey TEXT UNIQUE,
    geometry POLYGON NOT NULL, 
    inspireid_localid TEXT, 
    inspireid_namespace TEXT, 
    inspireid_versionid TEXT, 
    soilinvestigationpurpose TEXT NOT NULL, -- Codelist  soilinvestigationpurposevalue
    validfrom DATETIME default (strftime('%Y-%m-%dT%H:%M:%fZ', 'now')) not null,
    validto DATETIME,
    beginlifespanversion DATETIME default (strftime('%Y-%m-%dT%H:%M:%fZ', 'now')) not null, 
    endlifespanversion DATETIME
);

-- spatial index
CREATE INDEX idx_soilsite_geom ON soilsite(geometry);

-- Contents soilsite --------------------------------------------------------------------------------------
INSERT INTO gpkg_contents (
  table_name,
  data_type,
  identifier,
  description,
  last_change,
  min_x,
  min_y,
  max_x,
  max_y,
  srs_id
) VALUES (
  'soilsite', -- table name
  'features', -- data type
  'f_ss', -- unique table identifier
  'soilsite Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL, 
  NULL,
  NULL,
  NULL,
  3035 -- EPSG spatial reference system code
);

-- Geometry soilsite ---------------------------------------------------------------------------------------
INSERT INTO gpkg_geometry_columns (
  table_name,
  column_name,
  geometry_type_name,
  srs_id,
  z,
  m
) VALUES (
  'soilsite', -- table name
  'geometry', -- geometry column name
  'POLYGON', -- geometry type
  3035, -- EPSG spatial reference system code
  0, -- if the geometry has a Z coordinate (0 = no, 1 = yes, 2 = optional)
  0 -- if the geometry has a M coordinate (0 = no, 1 = yes, 2 = optional)
);

-- Trigger soilsite ---------------------------------------------------------------------------------------
CREATE TRIGGER soilsiteguid
AFTER INSERT ON soilsite
FOR EACH ROW
WHEN (NEW.guidkey IS NULL)
BEGIN
   UPDATE soilsite SET guidkey = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER soilsiteguidupdate
AFTER UPDATE OF guidkey ON soilsite
BEGIN
    SELECT CASE
        WHEN NEW.guidkey != OLD.guidkey THEN
            RAISE (ABORT, 'Cannot update guidkey column.')
    END;
END;
--


CREATE TRIGGER i_ceckvalidperiodsoilsite
BEFORE INSERT ON soilsite
WHEN NEW.validfrom > NEW.validto 
BEGIN
    SELECT RAISE(ABORT, 'Table soilsite: validto must be less than validfrom');
END;

CREATE TRIGGER u_ceckvalidperiodsoilsite
BEFORE UPDATE ON soilsite
WHEN NEW.validfrom > NEW.validto 
BEGIN
    SELECT RAISE(ABORT, 'Table soilsite: validto must be less than validfrom');
END; 
--


CREATE TRIGGER i_ceckvalidversionsoilsite
BEFORE INSERT ON soilsite
WHEN NEW.beginlifespanversion > NEW.endlifespanversion
BEGIN
    SELECT RAISE(ABORT, 'Table soilsite: beginlifespanversion must be less than endlifespanversion');
END;
--


CREATE TRIGGER i_soilinvestigationpurpose
BEFORE INSERT ON soilsite
FOR EACH ROW
WHEN NEW.soilinvestigationpurpose NOT IN (SELECT id FROM codelist WHERE collection = 'SoilInvestigationPurposeValue')
BEGIN
    SELECT RAISE(ABORT, 'Table soilsite: Invalid value for soilinvestigationpurpose. Must be present in id of soilinvestigationpurposevalue codelist.');
END;

CREATE TRIGGER u_soilinvestigationpurpose
BEFORE UPDATE ON soilsite
FOR EACH ROW
WHEN NEW.soilinvestigationpurpose NOT IN (SELECT id FROM codelist WHERE collection = 'SoilInvestigationPurposeValue')
BEGIN
    SELECT RAISE(ABORT, 'Table soilsite: Invalid value for soilinvestigationpurpose. Must be present in id of soilinvestigationpurposevalue codelist.');
END;
--


CREATE TRIGGER u_begin_today_soilsite
AFTER UPDATE 
OF inspireid_localid,inspireid_namespace,inspireid_versionid,soilinvestigationpurpose,validfrom,validto,endlifespanversion
ON soilsite
WHEN  datetime('now') < new.endlifespanversion OR NEW.endlifespanversion IS NULL
BEGIN
   UPDATE soilsite
   SET beginlifespanversion  = strftime('%Y-%m-%dT%H:%M:%fZ', 'now','localtime')
   WHERE id = new.id;
END;
--


CREATE TRIGGER u_begin_today_soilsite_error
AFTER UPDATE
OF inspireid_localid,inspireid_namespace,inspireid_versionid,soilinvestigationpurpose,validfrom,validto,endlifespanversion
ON soilsite
WHEN  datetime('now') > new.endlifespanversion
BEGIN
   SELECT RAISE(ABORT,'If you change record endlifespanversion must be greater than today');
END;
--


/* 
███████  ██████  ██ ██      ██████  ██       ██████  ████████ 
██      ██    ██ ██ ██      ██   ██ ██      ██    ██    ██    
███████ ██    ██ ██ ██      ██████  ██      ██    ██    ██    
     ██ ██    ██ ██ ██      ██      ██      ██    ██    ██    
███████  ██████  ██ ███████ ██      ███████  ██████     ██
 */


-- Table soilplot
CREATE TABLE soilplot
(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    guidkey TEXT UNIQUE,
    soilplotlocation POINT NOT NULL, 
    inspireid_localid TEXT,
    inspireid_namespace TEXT,
    inspireid_versionid TEXT,
    soilplottype TEXT NOT NULL,  -- Codelist soilplottypevalue
    beginlifespanversion DATETIME default (strftime('%Y-%m-%dT%H:%M:%fZ', 'now')) not null,
    endlifespanversion DATETIME,
    locatedon TEXT,
    FOREIGN KEY (locatedon)
      REFERENCES soilsite(guidkey)
      ON UPDATE CASCADE
);

-- spatial index
CREATE INDEX idx_soilplot_geom ON soilplot(soilplotlocation);

-- Contents soilplot ---------------------------------------------------------------------------------------
INSERT INTO gpkg_contents (
  table_name,
  data_type,
  identifier,
  description,
  last_change,
  min_x,
  min_y,
  max_x,
  max_y,
  srs_id
) VALUES (
  'soilplot', -- table name
  'features', -- data type
  'f_sp', -- unique table identifier
  'soilplot Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL, 
  NULL,
  NULL,
  NULL,
  3035 -- EPSG spatial reference system code
);

-- Geometry soilplot ---------------------------------------------------------------------------------------
INSERT INTO gpkg_geometry_columns (
  table_name,
  column_name,
  geometry_type_name,
  srs_id,
  z,
  m
) VALUES (
  'soilplot', -- table name
  'soilplotlocation', -- geometry column name
  'POINT', -- geometry type
  3035, -- EPSG spatial reference system code
  0, -- if the geometry has a Z coordinate (0 = no, 1 = yes, 2 = optional)
  0 -- if the geometry has a M coordinate (0 = no, 1 = yes, 2 = optional)
);

-- Trigger soilplot ---------------------------------------------------------------------------------------
CREATE TRIGGER soilplotguid
AFTER INSERT ON soilplot
FOR EACH ROW
WHEN (NEW.guidkey IS NULL)
BEGIN
   UPDATE soilplot SET guidkey = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER soilplotguidupdate
AFTER UPDATE OF guidkey ON soilplot
BEGIN
    SELECT CASE
        WHEN NEW.guidkey != OLD.guidkey THEN
            RAISE (ABORT, 'Cannot update guidkey column.')
    END;
END;
--


CREATE TRIGGER i_ceckvalidversionsoilplot
BEFORE INSERT ON soilplot
WHEN NEW.beginlifespanversion > NEW.endlifespanversion
BEGIN
    SELECT RAISE(ABORT, 'Table soilplot: beginlifespanversion must be less than endlifespanversion');
END;
--  


CREATE TRIGGER i_soilplottype
BEFORE INSERT ON soilplot
FOR EACH ROW
WHEN NEW.soilplottype NOT IN (SELECT id FROM codelist WHERE collection = 'SoilPlotTypeValue')
BEGIN
    SELECT RAISE(ABORT, 'Table soilplot: Invalid value for soilplottype. Must be present in id of  soilplottypevalue codelist.');
END;

CREATE TRIGGER u_soilplottype
BEFORE UPDATE ON soilplot
FOR EACH ROW
WHEN NEW.soilplottype NOT IN (SELECT id FROM codelist WHERE collection = 'SoilPlotTypeValue')
BEGIN
    SELECT RAISE(ABORT, 'Table soilplot: Invalid value for soilplottype. Must be present in id of soilplottypevalue codelist.');
END;
--


CREATE TRIGGER u_begin_today_soilplot
AFTER UPDATE
OF inspireid_localid,inspireid_namespace,inspireid_versionid,soilplottype,endlifespanversion
ON soilplot
WHEN  datetime('now') < new.endlifespanversion OR NEW.endlifespanversion IS NULL
BEGIN

   UPDATE soilplot
   SET beginlifespanversion  = strftime('%Y-%m-%dT%H:%M:%fZ', 'now','localtime')
   WHERE id = new.id;
END;
--


CREATE TRIGGER u_begin_today_soilplot_error
AFTER UPDATE
OF inspireid_localid,inspireid_namespace,inspireid_versionid,soilplottype,endlifespanversion
ON soilplot
WHEN  datetime('now') > new.endlifespanversion
BEGIN
   SELECT RAISE(ABORT,'If you change record endlifespanversion must be greater than today');
END;
--


/* 
███████  ██████  ██ ██      ██████  ██████   ██████  ███████ ██ ██      ███████ 
██      ██    ██ ██ ██      ██   ██ ██   ██ ██    ██ ██      ██ ██      ██      
███████ ██    ██ ██ ██      ██████  ██████  ██    ██ █████   ██ ██      █████   
     ██ ██    ██ ██ ██      ██      ██   ██ ██    ██ ██      ██ ██      ██      
███████  ██████  ██ ███████ ██      ██   ██  ██████  ██      ██ ███████ ███████ 
 */

--------------------------------
-- OBSERVED isderived -> 0   
-- DERIVED  isderived -> 1   
--------------------------------

-- Table soilprofile ---------------------------------------------------------------------------------------
CREATE TABLE soilprofile 
(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    guidkey TEXT UNIQUE,
    inspireid_localid TEXT,
    inspireid_namespace TEXT,
    inspireid_versionid TEXT,
    localidentifier TEXT,
    beginlifespanversion DATETIME default (strftime('%Y-%m-%dT%H:%M:%fZ', 'now')) not null,
    endlifespanversion DATETIME,
    validfrom DATETIME default (strftime('%Y-%m-%dT%H:%M:%fZ', 'now')) not null,
    validto	DATETIME,
    isderived BOOLEAN DEFAULT 0 NOT NULL, 
	wrbversion TEXT,  
    wrbreferencesoilgroup TEXT,    -- Codelist wrbreferencesoilgroupvalue
    isoriginalclassification BOOLEAN DEFAULT 1 NOT NULL,

    location TEXT UNIQUE,
	  CHECK ((wrbreferencesoilgroup IS NULL AND wrbversion IS NULL) OR (wrbreferencesoilgroup IS NOT NULL AND wrbversion IS NOT NULL)),
    FOREIGN KEY (location)
      REFERENCES soilplot(guidkey)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);


-- Contents soilprofile ---------------------------------------------------------------------------------------
INSERT INTO gpkg_contents (
  table_name,
  data_type,
  identifier,
  description,
  last_change,
  min_x,
  min_y,
  max_x,
  max_y,
  srs_id
) VALUES (
  'soilprofile', -- table name
  'attributes', -- data type
  't_sp', -- unique table identifier
  'soilprofile Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL, 
  NULL,
  NULL,
  NULL,
  NULL -- EPSG spatial reference system code
);

-- Trigger soilprofile ---------------------------------------------------------------------------------------
CREATE TRIGGER soilprofileguid
AFTER INSERT ON soilprofile
FOR EACH ROW
WHEN (NEW.guidkey IS NULL)
BEGIN
   UPDATE soilprofile SET guidkey = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER soilprofileguidupdate
AFTER UPDATE OF guidkey ON soilprofile
BEGIN
    SELECT CASE
        WHEN NEW.guidkey != OLD.guidkey THEN
            RAISE (ABORT, 'Cannot update guidkey column.')
    END;
END;
--


CREATE TRIGGER i_ceckvalidperiodsoilprofile
BEFORE INSERT ON soilprofile
WHEN NEW.validfrom > NEW.validto
BEGIN
    SELECT RAISE(ABORT, 'Table soilprofile: validto must be less than validfrom');
END;

CREATE TRIGGER u_ceckvalidperiodsoilprofile
BEFORE UPDATE ON soilprofile
WHEN NEW.validfrom > NEW.validto
BEGIN
    SELECT RAISE(ABORT, 'Table soilprofile: validto must be less than validfrom');
END;
--


CREATE TRIGGER i_ceckvalidversionsoilprofile
BEFORE INSERT ON soilprofile
WHEN NEW.beginlifespanversion >= NEW.endlifespanversion
BEGIN
    SELECT RAISE(ABORT, 'Table soilprofile: beginlifespanversion must be less than endlifespanversion');
END;
--


CREATE TRIGGER i_ceckprofileLocation
BEFORE INSERT ON soilprofile
WHEN NEW.isderived = 1 AND NEW.location IS NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table soilprofile:  For DERIVED profile  (isderived = 1), location must be NULL'); 
END;

CREATE TRIGGER u_ceckprofileLocation
BEFORE UPDATE ON soilprofile
WHEN NEW.isderived = 1 AND NEW.location IS NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table soilprofile:  For DERIVED profile  (isderived = 1), location must be NULL'); 
END;
--


CREATE TRIGGER i_ceckprofileLocationobserved
BEFORE INSERT ON soilprofile
WHEN NEW.isderived = 0 AND NEW.location IS  NULL
BEGIN
    SELECT RAISE(ABORT, 'Table soilprofile:  For OBSERVED profile  (isderived = 0), location must be NOT NULL'); 
END;
--


CREATE TRIGGER u_ceckprofileLocationobserved
BEFORE INSERT ON soilprofile
WHEN NEW.isderived = 0 AND NEW.location IS  NULL
BEGIN
    SELECT RAISE(ABORT, 'Table soilprofile:  For OBSERVED profile  (isderived = 0), location must be NOT NULL'); 
END;
--

CREATE TRIGGER i_wrbreferencesoilgroup
BEFORE INSERT ON soilprofile
FOR EACH ROW
WHEN NEW.wrbversion IS NOT NULL AND (
    (NEW.wrbversion = 'https://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue'
     AND NEW.wrbreferencesoilgroup NOT IN (SELECT id FROM codelist WHERE collection = 'WRBReferenceSoilGroupValue')
     AND NEW.wrbreferencesoilgroup IS NOT NULL)
  OR
    (NEW.wrbversion = 'http://stats-class.fao.uniroma2.it/WRB/v2014/rsg.html'
     AND NEW.wrbreferencesoilgroup NOT IN (SELECT id FROM codelist WHERE collection = 'WRBReferenceSoilGroupValue2014')
     AND NEW.wrbreferencesoilgroup IS NOT NULL)
  OR
    (NEW.wrbversion = 'https://obrl-soil.github.io/wrbsoil2022/'
     AND NEW.wrbreferencesoilgroup NOT IN (SELECT id FROM codelist WHERE collection = 'WRBReferenceSoilGroupValue2022')
     AND NEW.wrbreferencesoilgroup IS NOT NULL)
)
BEGIN
    SELECT RAISE(ABORT, 'Table soilprofile: Invalid value for wrbversion. Must be present in id of the correct year codelist collection.');
END;


CREATE TRIGGER u_wrbreferencesoilgroup
BEFORE UPDATE ON soilprofile
FOR EACH ROW
WHEN NEW.wrbversion IS NOT NULL AND (
    (NEW.wrbversion = 'https://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue'
     AND NEW.wrbreferencesoilgroup NOT IN (SELECT id FROM codelist WHERE collection = 'WRBReferenceSoilGroupValue')
     AND NEW.wrbreferencesoilgroup IS NOT NULL)
  OR
    (NEW.wrbversion = 'http://stats-class.fao.uniroma2.it/WRB/v2014/rsg.html'
     AND NEW.wrbreferencesoilgroup NOT IN (SELECT id FROM codelist WHERE collection = 'WRBReferenceSoilGroupValue2014')
     AND NEW.wrbreferencesoilgroup IS NOT NULL)
  OR
    (NEW.wrbversion = 'https://obrl-soil.github.io/wrbsoil2022/'
     AND NEW.wrbreferencesoilgroup NOT IN (SELECT id FROM codelist WHERE collection = 'WRBReferenceSoilGroupValue2022')
     AND NEW.wrbreferencesoilgroup IS NOT NULL)
)
BEGIN
    SELECT RAISE(ABORT, 'Table soilprofile: Invalid value for wrbversion. Must be present in id of the correct year codelist collection.');
END;
--

CREATE TRIGGER u_begin_today_soilprofile
AFTER UPDATE
OF inspireid_localid,inspireid_namespace,inspireid_versionid,localidentifier,endlifespanversion,validfrom,validto,isderived,wrbreferencesoilgroup,isoriginalclassification
ON soilprofile
WHEN  datetime('now') < new.endlifespanversion OR NEW.endlifespanversion IS NULL
BEGIN
   UPDATE soilprofile
   SET beginlifespanversion  = strftime('%Y-%m-%dT%H:%M:%fZ', 'now','localtime')
   WHERE id = new.id;
END;
--


CREATE TRIGGER u_begin_today_soilprofile_error
AFTER UPDATE
OF inspireid_localid,inspireid_namespace,inspireid_versionid,localidentifier,endlifespanversion,validfrom,validto,isderived,wrbreferencesoilgroup,isoriginalclassification
ON soilprofile
WHEN  datetime('now') > new.endlifespanversion
BEGIN
   SELECT RAISE(ABORT,'If you change record endlifespanversion must be greater than today');
END;
--

CREATE TRIGGER i_wrbproversion
BEFORE INSERT ON soilprofile
FOR EACH ROW
WHEN NEW.wrbversion NOT IN (SELECT id FROM codelist WHERE collection = 'wrbversion') AND NEW.wrbversion NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table soilprofile: Invalid value for wrbversion. Must be present in id of wrbreferencesoilgroupvalue codelist.');
END;
                      
CREATE TRIGGER u_wrbproversion
BEFORE UPDATE ON soilprofile
FOR EACH ROW
WHEN NEW.wrbversion NOT IN (SELECT id FROM codelist WHERE collection = 'wrbversion') AND NEW.wrbversion NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table soilprofile: Invalid value for wrbversion. Must be present in id of wrbreferencesoilgroupvalue codelist.');
END;
--                                

/* 
 ██████  ████████ ██   ██ ███████ ██████  ███████  ██████  ██ ██      ███    ██  █████  ███    ███ ███████ ████████ ██    ██ ██████  ███████ 
██    ██    ██    ██   ██ ██      ██   ██ ██      ██    ██ ██ ██      ████   ██ ██   ██ ████  ████ ██         ██     ██  ██  ██   ██ ██      
██    ██    ██    ███████ █████   ██████  ███████ ██    ██ ██ ██      ██ ██  ██ ███████ ██ ████ ██ █████      ██      ████   ██████  █████   
██    ██    ██    ██   ██ ██      ██   ██      ██ ██    ██ ██ ██      ██  ██ ██ ██   ██ ██  ██  ██ ██         ██       ██    ██      ██      
 ██████     ██    ██   ██ ███████ ██   ██ ███████  ██████  ██ ███████ ██   ████ ██   ██ ██      ██ ███████    ██       ██    ██      ███████ 

 */


-- Table othersoilnametype ---------------------------------------------------------------------------------------
CREATE TABLE othersoilnametype
(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    othersoilname_type TEXT NOT NULL, --Codelist othersoilnametypevalue
    othersoilname_class TEXT,
    isoriginalclassification  BOOLEAN  DEFAULT 0 NOT NULL,
    othersoilname TEXT,
    FOREIGN KEY (othersoilname)
      REFERENCES soilprofile(guidkey)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

-- Contents othersoilnametype ---------------------------------------------------------------------------------------
INSERT INTO gpkg_contents (
  table_name,
  data_type,
  identifier,
  description,
  last_change,
  min_x,
  min_y,
  max_x,
  max_y,
  srs_id
) VALUES (
  'othersoilnametype', -- table name
  'attributes', -- data type
  't_osn', -- unique table identifier
  'othersoilnametype Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL, 
  NULL,
  NULL,
  NULL,
  NULL -- EPSG spatial reference system code
);

-- Trigger othersoilnametype ---------------------------------------------------------------------------------------
CREATE TRIGGER i_soilname
BEFORE INSERT ON othersoilnametype
FOR EACH ROW
WHEN NEW.othersoilname_type NOT IN (SELECT id FROM codelist WHERE collection = 'OtherSoilNameTypeValue')
BEGIN
    SELECT RAISE(ABORT, 'Table othersoilnametype: Invalid value for othersoilname_type. Must be present in id of othersoilnametypevalue codelist.');
END;

CREATE TRIGGER u_soilname
BEFORE UPDATE ON othersoilnametype
FOR EACH ROW
WHEN NEW.othersoilname_type NOT IN (SELECT id FROM codelist WHERE collection = 'OtherSoilNameTypeValue')
BEGIN
    SELECT RAISE(ABORT, 'Table othersoilnametype: Invalid value for othersoilname_type. Must be present in id of othersoilnametypevalue codelist.');
END;
--


/* 
██ ███████ ██████  ███████ ██████  ██ ██    ██ ███████ ██████  ███████ ██████   ██████  ███    ███ 
██ ██      ██   ██ ██      ██   ██ ██ ██    ██ ██      ██   ██ ██      ██   ██ ██    ██ ████  ████ 
██ ███████ ██   ██ █████   ██████  ██ ██    ██ █████   ██   ██ █████   ██████  ██    ██ ██ ████ ██ 
██      ██ ██   ██ ██      ██   ██ ██  ██  ██  ██      ██   ██ ██      ██   ██ ██    ██ ██  ██  ██ 
██ ███████ ██████  ███████ ██   ██ ██   ████   ███████ ██████  ██      ██   ██  ██████  ██      ██
 */


-- Table isderivedfrom ---------------------------------------------------------------------------------------
CREATE TABLE isderivedfrom 
(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  base_id TEXT NOT NULL, -- Derived Profile
  related_id TEXT NOT NULL, -- Observed Profile
  CONSTRAINT unicrelationidf UNIQUE (base_id, related_id),
  FOREIGN KEY (base_id) REFERENCES soilprofile (guidkey) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (related_id) REFERENCES soilprofile (guidkey) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Contents isderivedfrom ---------------------------------------------------------------------------------------
INSERT INTO gpkg_contents (
table_name,
data_type,
identifier,
description,
last_change
) VALUES (
'isderivedfrom', -- table name
'attributes', -- data type
't_idf', -- unique table identifier
'isderivedfrom Table', -- table description
strftime('%Y-%m-%dT%H:%M:%fZ','now') -- last modification date and time
);

-- Trigger isderivedfrom ---------------------------------------------------------------------------------------
CREATE TRIGGER i_checkisderived
BEFORE INSERT ON isderivedfrom
BEGIN
  SELECT
    CASE WHEN NEW.base_id NOT IN (SELECT guidkey FROM soilprofile WHERE isderived = 1)
    THEN RAISE(ABORT, 'Table isderivedfrom:  Attention, the value of the "base_id" field in the "isderivedfrom" table cannot be inserted because profile is not of type derived')
    END;                  
END;

CREATE TRIGGER u_checkisderived
BEFORE UPDATE ON isderivedfrom
BEGIN
  SELECT
    CASE WHEN NEW.base_id NOT IN (SELECT guidkey FROM soilprofile WHERE isderived = 1)
    THEN RAISE(ABORT, 'Table isderivedfrom:  Attention, the value of the "base_id" field in the "isderivedfrom" table cannot be inserted because profile is not of type derived')
    END;
END;
--
 

CREATE TRIGGER i_checkisobserved
BEFORE INSERT ON isderivedfrom
BEGIN
  SELECT
    CASE WHEN NEW.related_id NOT IN (SELECT guidkey FROM soilprofile WHERE isderived = 0)
    THEN RAISE(ABORT, 'Table isderivedfrom:  Attention, the value of the "related_id" field in the "isderivedfrom" table cannot be inserted because profile is not of type observed')
    END;                  
END;

CREATE TRIGGER u_checkisobserved
BEFORE UPDATE ON isderivedfrom
BEGIN
  SELECT
    CASE WHEN NEW.related_id NOT IN (SELECT guidkey FROM soilprofile WHERE isderived = 0)
    THEN RAISE(ABORT, 'Table isderivedfrom:  Attention, the value of the "related_id" field in the "isderivedfrom" table cannot be inserted because profile is not of type observed')
    END;
END;
--


/* 
███████  ██████  ██ ██      ██████   ██████  ██████  ██    ██ 
██      ██    ██ ██ ██      ██   ██ ██    ██ ██   ██  ██  ██  
███████ ██    ██ ██ ██      ██████  ██    ██ ██   ██   ████   
     ██ ██    ██ ██ ██      ██   ██ ██    ██ ██   ██    ██    
███████  ██████  ██ ███████ ██████   ██████  ██████     ██   
 */ 
                                                              

-- Table soilbody ---------------------------------------------------------------------------------------
CREATE TABLE soilbody
(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    guidkey TEXT UNIQUE,
    inspireid_localid TEXT,
    inspireid_namespace TEXT,
    inspireid_versionid TEXT, 
    beginlifespanversion DATETIME default (strftime('%Y-%m-%dT%H:%M:%fZ', 'now')) not null,
    endlifespanversion DATETIME,
    soilbodylabel TEXT NOT NULL
);

-- Contents soilbody ---------------------------------------------------------------------------------------
INSERT INTO gpkg_contents (
  table_name,
  data_type,
  identifier,
  description,
  last_change,
  min_x,
  min_y,
  max_x,
  max_y,
  srs_id
) VALUES (
  'soilbody', -- table name
  'attributes', -- data type
  'f_sb', -- unique table identifier
  'soilbody Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL, 
  NULL,
  NULL,
  NULL,
  NULL -- EPSG spatial reference system code
);

-- Trigger soilbody ---------------------------------------------------------------------------------------
CREATE TRIGGER soilbodyguid
AFTER INSERT ON soilbody
FOR EACH ROW
WHEN (NEW.guidkey IS NULL)
BEGIN
   UPDATE soilbody SET guidkey = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER soilbodyguidupdate
AFTER UPDATE OF guidkey ON soilbody
BEGIN
    SELECT CASE
        WHEN NEW.guidkey != OLD.guidkey THEN
            RAISE (ABORT, 'Cannot update guidkey column.')
    END;
END;
--


CREATE TRIGGER i_ceckvalidversionsoilbody
BEFORE INSERT ON soilbody
WHEN NEW.beginlifespanversion > NEW.endlifespanversion
BEGIN
    SELECT RAISE(ABORT, 'Table soilbody: beginlifespanversion must be less than endlifespanversion');
END;
--


CREATE TRIGGER u_begin_today_soilbody
AFTER UPDATE
OF inspireid_localid,inspireid_namespace,inspireid_versionid,endlifespanversion,soilbodylabel
ON soilbody
WHEN  datetime('now') < new.endlifespanversion OR NEW.endlifespanversion IS NULL
BEGIN
   UPDATE soilbody
   SET beginlifespanversion  = strftime('%Y-%m-%dT%H:%M:%fZ', 'now','localtime')
   WHERE id = new.id;
END;
--


CREATE TRIGGER u_begin_today_soilbody_error
AFTER UPDATE
OF inspireid_localid,inspireid_namespace,inspireid_versionid,endlifespanversion,soilbodylabel
ON soilbody
WHEN  datetime('now') > new.endlifespanversion
BEGIN
   SELECT RAISE(ABORT,'If you change record endlifespanversion must be greater than today');
END;
-- 


/*
███████  ██████  ██ ██      ██████   ██████  ██████  ██    ██          ██████  ███████  ██████  ███    ███ 
██      ██    ██ ██ ██      ██   ██ ██    ██ ██   ██  ██  ██          ██       ██      ██    ██ ████  ████ 
███████ ██    ██ ██ ██      ██████  ██    ██ ██   ██   ████           ██   ███ █████   ██    ██ ██ ████ ██ 
     ██ ██    ██ ██ ██      ██   ██ ██    ██ ██   ██    ██            ██    ██ ██      ██    ██ ██  ██  ██ 
███████  ██████  ██ ███████ ██████   ██████  ██████     ██    ███████  ██████  ███████  ██████  ██      ██ 
*/

-- Table soilbody_geom ---------------------------------------------------------------------------------------
CREATE TABLE soilbody_geom
(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    geom MULTIPOLYGON NOT NULL, 
    idsoilbody TEXT NOT NULL,
     FOREIGN KEY (idsoilbody)
      REFERENCES soilbody(guidkey)
      ON DELETE CASCADE 
      ON UPDATE CASCADE
 
);

-- Contents soilbody_geom ---------------------------------------------------------------------------------------
INSERT INTO gpkg_contents (
  table_name,
  data_type,
  identifier,
  description,
  last_change,
  min_x,
  min_y,
  max_x,
  max_y,
  srs_id
) VALUES (
  'soilbody_geom', -- table name
  'features', -- data type
  'f_sbg', -- unique table identifier
  'soilbody_geom Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL, 
  NULL,
  NULL,
  NULL,
  3035 -- EPSG spatial reference system code
);

-- spatial index
CREATE INDEX idx_soiBody_geom ON soilbody_geom(geom);

-- Geometry soilbody_geom ---------------------------------------------------------------------------------------
INSERT INTO gpkg_geometry_columns (
  table_name,
  column_name,
  geometry_type_name,
  srs_id,
  z,
  m
) VALUES (
  'soilbody_geom', -- table name
  'geom', -- geometry column name
  'MULTIPOLYGON', -- geometry type
  3035, -- EPSG spatial reference system code
  0, -- if the geometry has a Z coordinate (0 = no, 1 = yes, 2 = optional)
  0 -- if the geometry has a M coordinate (0 = no, 1 = yes, 2 = optional)
);


/* 
██████  ███████ ██████  ██ ██    ██ ███████ ██████  ██████  ██████   ██████  ███████ ██ ██      ███████ ██████  ██████  ███████ ███████ ███████ ███    ██  ██████ ███████ ██ ███    ██ ███████  ██████  ██ ██      ██████   ██████  ██████  ██    ██ 
██   ██ ██      ██   ██ ██ ██    ██ ██      ██   ██ ██   ██ ██   ██ ██    ██ ██      ██ ██      ██      ██   ██ ██   ██ ██      ██      ██      ████   ██ ██      ██      ██ ████   ██ ██      ██    ██ ██ ██      ██   ██ ██    ██ ██   ██  ██  ██  
██   ██ █████   ██████  ██ ██    ██ █████   ██   ██ ██████  ██████  ██    ██ █████   ██ ██      █████   ██████  ██████  █████   ███████ █████   ██ ██  ██ ██      █████   ██ ██ ██  ██ ███████ ██    ██ ██ ██      ██████  ██    ██ ██   ██   ████   
██   ██ ██      ██   ██ ██  ██  ██  ██      ██   ██ ██      ██   ██ ██    ██ ██      ██ ██      ██      ██      ██   ██ ██           ██ ██      ██  ██ ██ ██      ██      ██ ██  ██ ██      ██ ██    ██ ██ ██      ██   ██ ██    ██ ██   ██    ██    
██████  ███████ ██   ██ ██   ████   ███████ ██████  ██      ██   ██  ██████  ██      ██ ███████ ███████ ██      ██   ██ ███████ ███████ ███████ ██   ████  ██████ ███████ ██ ██   ████ ███████  ██████  ██ ███████ ██████   ██████  ██████     ██    
 */


-- Table derivedprofilepresenceinsoilbody ---------------------------------------------------------------------------------------
CREATE TABLE derivedprofilepresenceinsoilbody (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  idsoilbody TEXT NOT NULL,
  idsoilprofile TEXT NOT NULL,
  lowervalue REAL,
  uppervalue REAL,
  CONSTRAINT unicrelationdpsb UNIQUE (idsoilbody, idsoilprofile),
  FOREIGN KEY (idsoilbody) REFERENCES soilbody (guidkey) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (idsoilprofile) REFERENCES soilprofile (guidkey) ON DELETE CASCADE ON UPDATE CASCADE
  
);
-- Contents derivedprofilepresenceinsoilbody ---------------------------------------------------------------------------------------
INSERT INTO gpkg_contents (
  table_name,
  data_type,
  identifier,
  description,
  last_change,
  min_x,
  min_y,
  max_x,
  max_y,
  srs_id
) VALUES (
  'derivedprofilepresenceinsoilbody', -- table name
  'attributes', -- data type
  't_dppsb', -- unique table identifier
  'derivedprofilepresenceinsoilbody Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL, 
  NULL,
  NULL,
  NULL,
  NULL -- EPSG spatial reference system code
);


-- Trigger derivedprofilepresenceinsoilbody ---------------------------------------------------------------------------------------------
CREATE TRIGGER i_cecklowervaluesum
BEFORE INSERT ON derivedprofilepresenceinsoilbody
FOR EACH ROW
WHEN (SELECT Round(SUM(lowervalue),2) FROM derivedprofilepresenceinsoilbody WHERE idsoilbody = NEW.idsoilbody) + Round(NEW.lowervalue,2) > 100.00
BEGIN
    SELECT RAISE(ABORT, 'Table derivedprofilepresenceinsoilbody: sum of lowervalue exceeds 100 for the same idsoilbody');
END;

CREATE TRIGGER u_cecklowervaluesum
BEFORE UPDATE ON derivedprofilepresenceinsoilbody
FOR EACH ROW
WHEN (SELECT Round(SUM(lowervalue),2) FROM derivedprofilepresenceinsoilbody WHERE idsoilbody = NEW.idsoilbody) - Round(OLD.lowervalue,2) + Round(NEW.lowervalue,2) > 100.00
BEGIN
    SELECT RAISE(ABORT, 'Table derivedprofilepresenceinsoilbody: sum of lowervalue exceeds 100 for the same idsoilbody');
END;
--
 

CREATE TRIGGER "i_checkisderived_soilbody"
BEFORE INSERT ON derivedprofilepresenceinsoilbody
BEGIN
  SELECT
    CASE WHEN NEW.idsoilprofile NOT IN (SELECT guidkey FROM soilprofile WHERE isderived = 1)
    THEN RAISE(ABORT, 'Table derivedprofilepresenceinsoilbody:  Attention, the value of the "idsoilprofile" field  cannot be inserted because profile is not of type derived')
    END;
END;

CREATE TRIGGER  u_checkisderived_soilbody
BEFORE UPDATE ON derivedprofilepresenceinsoilbody
BEGIN
  SELECT
    CASE WHEN NEW.idsoilprofile NOT IN (SELECT guidkey FROM soilprofile WHERE isderived = 1)
    THEN RAISE(ABORT, 'Table derivedprofilepresenceinsoilbody:  Attention, the value of the "idsoilprofile" field  cannot be inserted because profile is not of type derived')
    END;
END;
--


/* 
███████  ██████  ██ ██      ██████  ███████ ██████  ██ ██    ██ ███████ ██████   ██████  ██████       ██ ███████  ██████ ████████ 
██      ██    ██ ██ ██      ██   ██ ██      ██   ██ ██ ██    ██ ██      ██   ██ ██    ██ ██   ██      ██ ██      ██         ██    
███████ ██    ██ ██ ██      ██   ██ █████   ██████  ██ ██    ██ █████   ██   ██ ██    ██ ██████       ██ █████   ██         ██    
     ██ ██    ██ ██ ██      ██   ██ ██      ██   ██ ██  ██  ██  ██      ██   ██ ██    ██ ██   ██ ██   ██ ██      ██         ██    
███████  ██████  ██ ███████ ██████  ███████ ██   ██ ██   ████   ███████ ██████   ██████  ██████   █████  ███████  ██████    ██    
 */


-- Table soilderivedobject ---------------------------------------------------------------------------------------
CREATE TABLE soilderivedobject
(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    guidkey TEXT UNIQUE,
    inspireid_localid     TEXT,
    inspireid_namespace   TEXT,
    inspireid_versionid    TEXT,
    accessuri   TEXT,
    geometry POLYGON --envelop
);

-- spatial index
CREATE INDEX idx_soilderivedobject_geom ON soilderivedobject (geometry);

-- Contents soilderivedobject ---------------------------------------------------------------------------------------
INSERT INTO gpkg_contents (
  table_name,
  data_type,
  identifier,
  description,
  last_change,
  min_x,
  min_y,
  max_x,
  max_y,
  srs_id
) VALUES (
  'soilderivedobject', -- table name
  'features', -- data type
  't_sdo', -- unique table identifier
  'soilderivedobject Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL, 
  NULL,
  NULL,
  NULL,
  3035 -- EPSG spatial reference system code
);

-- Geometry soilderivedobject ---------------------------------------------------------------------------------------
INSERT INTO gpkg_geometry_columns (
  table_name,
  column_name,
  geometry_type_name,
  srs_id,
  z,
  m
) VALUES (
  'soilderivedobject', -- table name
  'geometry', -- geometry column name
  'POLYGON', -- geometry type
  3035, -- EPSG spatial reference system code
  0, -- if the geometry has a Z coordinate (0 = no, 1 = yes, 2 = optional)
  0 -- if the geometry has a M coordinate (0 = no, 1 = yes, 2 = optional)
);

-- Trigger soilderivedobject ---------------------------------------------------------------------------------------
CREATE TRIGGER soilderivedobjectguid
AFTER INSERT ON soilderivedobject
FOR EACH ROW
WHEN (NEW.guidkey IS NULL)
BEGIN
   UPDATE soilderivedobject SET guidkey = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER soilderivedobjectguidupdate
AFTER UPDATE OF guidkey ON soilderivedobject
BEGIN
    SELECT CASE
        WHEN NEW.guidkey != OLD.guidkey THEN
            RAISE (ABORT, 'Cannot update guidkey column.')
    END;
END;
--


/* 
██ ███████ ██████   █████  ███████ ███████ ██████   ██████  ███    ██  ██████  ██████  ███████ ███████ ██████  ██    ██ ███████ ██████  ███████  ██████  ██ ██      ██████  ██████   ██████  ███████ ██ ██      ███████ 
██ ██      ██   ██ ██   ██ ██      ██      ██   ██ ██    ██ ████   ██ ██    ██ ██   ██ ██      ██      ██   ██ ██    ██ ██      ██   ██ ██      ██    ██ ██ ██      ██   ██ ██   ██ ██    ██ ██      ██ ██      ██      
██ ███████ ██████  ███████ ███████ █████   ██   ██ ██    ██ ██ ██  ██ ██    ██ ██████  ███████ █████   ██████  ██    ██ █████   ██   ██ ███████ ██    ██ ██ ██      ██████  ██████  ██    ██ █████   ██ ██      █████   
██      ██ ██   ██ ██   ██      ██ ██      ██   ██ ██    ██ ██  ██ ██ ██    ██ ██   ██      ██ ██      ██   ██  ██  ██  ██      ██   ██      ██ ██    ██ ██ ██      ██      ██   ██ ██    ██ ██      ██ ██      ██      
██ ███████ ██████  ██   ██ ███████ ███████ ██████   ██████  ██   ████  ██████  ██████  ███████ ███████ ██   ██   ████   ███████ ██████  ███████  ██████  ██ ███████ ██      ██   ██  ██████  ██      ██ ███████ ███████
 */


-- Table isbasedonobservedsoilprofile  ---------------------------------------------------------------------------------------
CREATE TABLE isbasedonobservedsoilprofile 
(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  idsoilderivedobject TEXT NOT NULL,
  idsoilprofile TEXT NOT NULL, --idsoilprofile
  CONSTRAINT unicrelationibosp UNIQUE (idsoilderivedobject, idsoilprofile),
  FOREIGN KEY (idsoilderivedobject) REFERENCES soilderivedobject (guidkey) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (idsoilprofile) REFERENCES soilprofile (guidkey) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Contents isbasedonobservedsoilprofile  ---------------------------------------------------------------------------------------
INSERT INTO gpkg_contents (
table_name,
data_type,
identifier,
description,
last_change
) VALUES (
'isbasedonobservedsoilprofile', -- table name
'attributes', -- data type
't_objop', -- unique table identifier
'isbasedonobservedsoilprofile Table', -- table description
strftime('%Y-%m-%dT%H:%M:%fZ','now') -- last modification date and time
);

-- Trigger isbasedonobservedsoilprofile ---------------------------------------------------------------------------------------
CREATE TRIGGER i_checkisobserved_dobj
BEFORE INSERT ON isbasedonobservedsoilprofile 
BEGIN
  SELECT
    CASE WHEN NEW.idsoilprofile NOT IN (SELECT guidkey FROM soilprofile WHERE isderived = 0)
    THEN RAISE(ABORT, 'Table isbasedonobservedsoilprofile :  Attention, the value of the "idsoilprofile" field  cannot be inserted because profile is not of type observed')
    END;                  
END;

CREATE TRIGGER u_checkisobserved_dobj
BEFORE UPDATE ON isbasedonobservedsoilprofile 
BEGIN
  SELECT
    CASE WHEN NEW.idsoilprofile NOT IN (SELECT guidkey FROM soilprofile WHERE isderived = 0)
    THEN RAISE(ABORT, 'Table isbasedonobservedsoilprofile :  Attention, the value of the "idsoilprofile" field  cannot be inserted because profile is not of type observed')
    END;
END;
--


/* 
██ ███████ ██████   █████  ███████ ███████ ██████   ██████  ███    ██ ███████  ██████  ██ ██      ██████   ██████  ██████  ██    ██     
██ ██      ██   ██ ██   ██ ██      ██      ██   ██ ██    ██ ████   ██ ██      ██    ██ ██ ██      ██   ██ ██    ██ ██   ██  ██  ██      
██ ███████ ██████  ███████ ███████ █████   ██   ██ ██    ██ ██ ██  ██ ███████ ██    ██ ██ ██      ██████  ██    ██ ██   ██   ████       
██      ██ ██   ██ ██   ██      ██ ██      ██   ██ ██    ██ ██  ██ ██      ██ ██    ██ ██ ██      ██   ██ ██    ██ ██   ██    ██        
██ ███████ ██████  ██   ██ ███████ ███████ ██████   ██████  ██   ████ ███████  ██████  ██ ███████ ██████   ██████  ██████     ██      
 */


-- Table isbasedonsoilbody ---------------------------------------------------------------------------------------
CREATE TABLE isbasedonsoilbody
(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  idsoilderivedobject TEXT NOT NULL,
  idsoilbody TEXT NOT NULL,
  CONSTRAINT unicrelationibosb UNIQUE (idsoilderivedobject, idsoilbody),
  FOREIGN KEY (idsoilderivedobject) REFERENCES soilderivedobject (guidkey) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (idsoilbody) REFERENCES soilbody (guidkey)  ON DELETE CASCADE ON UPDATE CASCADE
);

-- Contents isbasedonsoilbody ---------------------------------------------------------------------------------------
INSERT INTO gpkg_contents (
table_name,
data_type,
identifier,
description,
last_change
) VALUES (
'isbasedonsoilbody', -- table name
'attributes', -- data type
't_objsb', -- unique table identifier
'isbasedonsoilbody Table', -- table description
strftime('%Y-%m-%dT%H:%M:%fZ','now') -- last modification date and time
);


/* 
██ ███████ ██████   █████  ███████ ███████ ██████   ██████  ███    ██ ███████  ██████  ██ ██      ██████  ███████ ██████  ██ ██    ██ ███████ ██████   ██████  ██████       ██ ███████  ██████ ████████ 
██ ██      ██   ██ ██   ██ ██      ██      ██   ██ ██    ██ ████   ██ ██      ██    ██ ██ ██      ██   ██ ██      ██   ██ ██ ██    ██ ██      ██   ██ ██    ██ ██   ██      ██ ██      ██         ██    
██ ███████ ██████  ███████ ███████ █████   ██   ██ ██    ██ ██ ██  ██ ███████ ██    ██ ██ ██      ██   ██ █████   ██████  ██ ██    ██ █████   ██   ██ ██    ██ ██████       ██ █████   ██         ██    
██      ██ ██   ██ ██   ██      ██ ██      ██   ██ ██    ██ ██  ██ ██      ██ ██    ██ ██ ██      ██   ██ ██      ██   ██ ██  ██  ██  ██      ██   ██ ██    ██ ██   ██ ██   ██ ██      ██         ██    
██ ███████ ██████  ██   ██ ███████ ███████ ██████   ██████  ██   ████ ███████  ██████  ██ ███████ ██████  ███████ ██   ██ ██   ████   ███████ ██████   ██████  ██████   █████  ███████  ██████    ██    
*/                                                                                                                                                                                  


-- Table isbasedonsoilderivedobject
CREATE TABLE isbasedonsoilderivedobject (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  base_id TEXT NOT NULL,
  related_id TEXT NOT NULL,
  CONSTRAINT unicrelationibosdo UNIQUE (base_id, related_id),
  FOREIGN KEY (base_id) REFERENCES soilderivedobject (guidkey)  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (related_id) REFERENCES soilderivedobject (guidkey)  ON DELETE CASCADE ON UPDATE CASCADE
);

-- Contents soilderivedobject
INSERT INTO gpkg_contents (
table_name,
data_type,
identifier,
description,
last_change
) VALUES (
'isbasedonsoilderivedobject', -- table name
'attributes', -- data type
't_bo', -- unique table identifier
'isbasedonsoilderivedobject Table', -- table description
strftime('%Y-%m-%dT%H:%M:%fZ','now') -- last modification date and time
);


/* 
██████  ██████   ██████  ███████ ██ ██      ███████ ███████ ██      ███████ ███    ███ ███████ ███    ██ ████████ 
██   ██ ██   ██ ██    ██ ██      ██ ██      ██      ██      ██      ██      ████  ████ ██      ████   ██    ██    
██████  ██████  ██    ██ █████   ██ ██      █████   █████   ██      █████   ██ ████ ██ █████   ██ ██  ██    ██    
██      ██   ██ ██    ██ ██      ██ ██      ██      ██      ██      ██      ██  ██  ██ ██      ██  ██ ██    ██    
██      ██   ██  ██████  ██      ██ ███████ ███████ ███████ ███████ ███████ ██      ██ ███████ ██   ████    ██   
 */

-----------------------------------
-- profileelementtype -> 0 (HORIZON)
-- profileelementtype -> 1 (LAYER)
-----------------------------------

-- Table profileelement ---------------------------------------------------------------------------------------
CREATE TABLE profileelement
(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    guidkey TEXT UNIQUE,
    inspireid_localid                    TEXT,      
    inspireid_namespace                  TEXT,     
    inspireid_versionid                   TEXT, 
    profileelementdepthrange_uppervalue  INTEGER, 
    profileelementdepthrange_lowervalue  INTEGER,  
    beginlifespanversion DATETIME default (strftime('%Y-%m-%dT%H:%M:%fZ', 'now')) not null, 
    endlifespanversion                   DATETIME,  

    layertype                            TEXT,      -- Codelist layertypevalue 
    layerrocktype                        TEXT,      -- Codelist lithologyvalue 

    layergenesisprocess                  TEXT,      -- Codelist eventprocessvalue  
    layergenesisenviroment               TEXT,      -- Codelist eventenvironmentvalue 
    layergenesisprocessstate             TEXT,      -- Codelist layergenesisprocessstatevalue 

    profileelementtype                   BOOLEAN DEFAULT 0 NOT NULL,
    ispartof TEXT NOT NULL,
    FOREIGN KEY (ispartof)
      REFERENCES soilprofile(guidkey)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

-- Contents profileelement ---------------------------------------------------------------------------------------
INSERT INTO gpkg_contents (
  table_name,
  data_type,
  identifier,
  description,
  last_change,
  min_x,
  min_y,
  max_x,
  max_y,
  srs_id
) VALUES (
  'profileelement', -- table name
  'attributes', -- data type
  't_pe', -- unique table identifier
  'profileelement Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL, 
  NULL,
  NULL,
  NULL,
  NULL -- EPSG spatial reference system code
);

-- Trigger profileelement ---------------------------------------------------------------------------------------
CREATE TRIGGER profileelementguid
AFTER INSERT ON profileelement
FOR EACH ROW
WHEN (NEW.guidkey IS NULL)
BEGIN
   UPDATE profileelement SET guidkey = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER profileelementguidupdate
AFTER UPDATE OF guidkey ON profileelement
BEGIN
    SELECT CASE
        WHEN NEW.guidkey != OLD.guidkey THEN
            RAISE (ABORT, 'Cannot update guidkey column.')
    END;
END;
--


CREATE TRIGGER i_ceckvalidversionprofileelement
BEFORE INSERT ON profileelement
WHEN NEW.beginlifespanversion > NEW.endlifespanversion
BEGIN
    SELECT RAISE(ABORT, 'Table profileelement: beginlifespanversion must be less than endlifespanversion');
END;
--


CREATE TRIGGER i_ceckvaliddeepprofileelement
BEFORE INSERT ON profileelement
WHEN NEW.profileelementdepthrange_lowervalue <= NEW.profileelementdepthrange_uppervalue
BEGIN
    SELECT RAISE(ABORT, 'Table profileelement: profileelementdepthrange_uppervalue must be less than profileelementdepthrange_lowervalue');
END;

CREATE TRIGGER u_ceckvaliddeepprofileelement
BEFORE UPDATE ON profileelement
WHEN NEW.profileelementdepthrange_lowervalue <= NEW.profileelementdepthrange_uppervalue
BEGIN
    SELECT RAISE(ABORT, 'Table profileelement: profileelementdepthrange_uppervalue must be less than profileelementdepthrange_lowervalue');
END;
--


CREATE TRIGGER i_checkgeogenicfieldsnull
BEFORE INSERT ON profileelement
FOR EACH ROW
WHEN (NEW.layertype <> 'http://inspire.ec.europa.eu/codelist/LayerTypeValue/geogenic')
BEGIN
    SELECT CASE
        WHEN (NEW.layerrocktype IS NOT NULL) THEN
            RAISE(ABORT, 'layerrocktype must be NULL when LayerTypeValue is not "geogenic".')
        WHEN (NEW.layergenesisprocess IS NOT NULL) THEN
            RAISE(ABORT, 'layergenesisprocess must be NULL when LayerTypeValue is not "geogenic".')
        WHEN (NEW.layergenesisenviroment IS NOT NULL) THEN
            RAISE(ABORT, 'layergenesisenviroment must be NULL when LayerTypeValue is not "geogenic".')
        WHEN (NEW.layergenesisprocessstate IS NOT NULL) THEN
            RAISE(ABORT, 'layergenesisprocessstate must be NULL when LayerTypeValue is not "geogenic".')
    END;
END;

CREATE TRIGGER u_checkgeogenicfieldsnotnull
BEFORE UPDATE ON profileelement
FOR EACH ROW
WHEN (NEW.layertype <> 'http://inspire.ec.europa.eu/codelist/LayerTypeValue/geogenic')
BEGIN
    SELECT CASE
        WHEN (NEW.layerrocktype IS NOT NULL) THEN
            RAISE(ABORT, 'layerrocktype must be NULL when LayerTypeValue is not "geogenic".')
        WHEN (NEW.layergenesisprocess IS NOT NULL) THEN
            RAISE(ABORT, 'layergenesisprocess must be NULL when LayerTypeValue is not "geogenic".')
        WHEN (NEW.layergenesisenviroment IS NOT NULL) THEN
            RAISE(ABORT, 'layergenesisenviroment must be NULL when LayerTypeValue is not "geogenic".')
        WHEN (NEW.layergenesisprocessstate IS NOT NULL) THEN
            RAISE(ABORT, 'layergenesisprocessstate must be NULL when LayerTypeValue is not "geogenic".')
    END;
END;
--


CREATE TRIGGER i_ceckhorizonfields
BEFORE INSERT  ON profileelement
FOR EACH ROW
WHEN (NEW.profileelementtype = 0)
BEGIN
    SELECT CASE
        WHEN (NEW.layertype IS NOT NULL) THEN
            RAISE(ABORT, 'layertype must be NULL when profilelement is "HORIZON".')
        WHEN (NEW.layerrocktype IS NOT NULL) THEN
            RAISE(ABORT, 'layerrocktype must be NULL when profilelement is "HORIZON".')
        WHEN (NEW.layergenesisprocess IS NOT NULL) THEN
            RAISE(ABORT, 'layergenesisprocess must be NULL when profilelement is "HORIZON".')
        WHEN (NEW.layergenesisenviroment IS NOT NULL) THEN
            RAISE(ABORT, 'layergenesisenviroment must be NULL when profilelement is "HORIZON".')
        WHEN (NEW.layergenesisprocessstate IS NOT NULL) THEN
            RAISE(ABORT, 'layergenesisprocessstate must be NULL when profilelement is "HORIZON".')
    END;
END;


CREATE TRIGGER u_ceckhorizonfields
BEFORE UPDATE  ON profileelement
FOR EACH ROW
WHEN (NEW.profileelementtype = 0)
BEGIN
    SELECT CASE
        WHEN (NEW.layertype IS NOT NULL OR length(NEW.layertype )<1) THEN
            RAISE(ABORT, 'layertype must be NULL when profilelement is "HORIZON".')
        WHEN (NEW.layerrocktype IS NOT NULL OR length(NEW.layerrocktype )<1) THEN
            RAISE(ABORT, 'layerrocktype must be NULL when profilelement is "HORIZON".')
        WHEN (NEW.layergenesisprocess IS NOT NULL OR length(NEW.layergenesisprocess )<1) THEN
            RAISE(ABORT, 'layergenesisprocess must be NULL when profilelement is "HORIZON".')
        WHEN (NEW.layergenesisenviroment IS NOT NULL OR length(NEW.layergenesisenviroment )<1) THEN
            RAISE(ABORT, 'layergenesisenviroment must be NULL when profilelement is "HORIZON".')
        WHEN (NEW.layergenesisprocessstate IS NOT NULL OR length(NEW.layergenesisprocessstate )<1) THEN
            RAISE(ABORT, 'layergenesisprocessstate must be NULL when profilelement is "HORIZON".')
    END;
END;
--


CREATE TRIGGER i_layertype
BEFORE INSERT ON profileelement
FOR EACH ROW
WHEN NEW.layertype NOT IN (SELECT id FROM codelist WHERE collection = 'LayerTypeValue')
BEGIN
    SELECT RAISE(ABORT, 'Table profileelement: Invalid value for layertype. Must be present in id of layertypevalue codelist.');
END;

CREATE TRIGGER u_layertype
BEFORE UPDATE ON profileelement
FOR EACH ROW
WHEN NEW.layertype NOT IN (SELECT id FROM codelist WHERE collection = 'LayerTypeValue')
BEGIN
    SELECT RAISE(ABORT, 'Table profileelement: Invalid value for layertype. Must be present in id of layertypevalue codelist.');
END;
--


CREATE TRIGGER i_layergenesisenviroment
BEFORE INSERT ON profileelement
FOR EACH ROW
WHEN NEW.layergenesisenviroment NOT IN (SELECT id FROM codelist WHERE collection = 'EventEnvironmentValue')  AND NEW.layergenesisenviroment NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table profileelement: Invalid value for layergenesisenviroment. Must be present in id of eventenvironmentvalue codelist.');
END;

CREATE TRIGGER u_layergenesisenviroment
BEFORE UPDATE ON profileelement
FOR EACH ROW
WHEN NEW.layergenesisenviroment NOT IN (SELECT id FROM codelist WHERE collection = 'EventEnvironmentValue')  AND NEW.layergenesisenviroment NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table profileelement: Invalid value for layergenesisenviroment. Must be present in id of eventenvironmentvalue codelist.');
END;
--


CREATE TRIGGER i_layergenesisprocess
BEFORE INSERT ON profileelement
FOR EACH ROW
WHEN NEW.layergenesisprocess NOT IN (SELECT id FROM codelist WHERE collection = 'EventProcessValue')  AND NEW.layergenesisprocess NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table profileelement: Invalid value for layergenesisprocess. Must be present in id of  eventprocessvalue codelist.');
END;

CREATE TRIGGER u_layergenesisprocess
BEFORE UPDATE ON profileelement
FOR EACH ROW
WHEN NEW.layergenesisprocess NOT IN (SELECT id FROM codelist WHERE collection = 'EventProcessValue')  AND NEW.layergenesisprocess NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table profileelement: Invalid value for layergenesisprocess. Must be present in id of eventprocessvalue codelist.');
END;
--


CREATE TRIGGER "i_layergenesisprocessstate"
BEFORE INSERT ON profileelement
FOR EACH ROW
WHEN NEW.layergenesisprocessstate NOT IN (SELECT id FROM codelist WHERE collection = 'LayerGenesisProcessStateValue')  AND NEW.layergenesisprocessstate NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table profileelement: Invalid value for layergenesisprocessstate. Must be present in id of layergenesisprocessstatevalue codelist.');
END;

CREATE TRIGGER u_layergenesisprocessstate
BEFORE UPDATE ON profileelement
FOR EACH ROW
WHEN NEW.layergenesisprocessstate NOT IN (SELECT id FROM codelist WHERE collection = 'LayerGenesisProcessStateValue')  AND NEW.layergenesisprocessstate NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table profileelement: Invalid value for layergenesisprocessstate. Must be present in id of layergenesisprocessstatevalue codelist.');
END;
--


CREATE TRIGGER i_layerrocktype
BEFORE INSERT ON profileelement
FOR EACH ROW
WHEN NEW.layerrocktype NOT IN (SELECT id FROM codelist WHERE collection = 'LithologyValue')  AND NEW.layerrocktype NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table profileelement: Invalid value for layerrocktype. Must be present in id of lithologyvalue codelist .');
END;

CREATE TRIGGER u_layerrocktype
BEFORE UPDATE ON profileelement
FOR EACH ROW
WHEN NEW.layerrocktype NOT IN (SELECT id FROM codelist WHERE collection = 'LithologyValue')  AND NEW.layerrocktype NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table profileelement: Invalid value for layerrocktype. Must be present in id of lithologyvalue codelist.');
END;
--


CREATE TRIGGER i_check_depth_range
BEFORE INSERT ON profileelement
FOR EACH ROW
BEGIN
    SELECT CASE
        WHEN (NEW.profileelementdepthrange_uppervalue IS NULL AND NEW.profileelementdepthrange_lowervalue IS NULL)
        THEN RAISE(ABORT, 'At least one of profileelementdepthrange_uppervalue and profileelementdepthrange_lowervalue must not be null')
    END;
END;

CREATE TRIGGER u_check_depth_range
BEFORE UPDATE ON profileelement
FOR EACH ROW
BEGIN
    SELECT CASE
        WHEN (NEW.profileelementdepthrange_uppervalue IS NULL AND NEW.profileelementdepthrange_lowervalue IS NULL)
        THEN RAISE(ABORT, 'At least one of profileelementdepthrange_uppervalue and profileelementdepthrange_lowervalue must not be null')
    END;
END;
--

CREATE TRIGGER u_begin_today_profileelement
AFTER UPDATE
OF inspireid_localid,inspireid_namespace,inspireid_versionid,profileelementdepthrange_uppervalue,profileelementdepthrange_lowervalue,endlifespanversion,layertype,layerrocktype,layergenesisprocess,layergenesisenviroment,layergenesisprocessstate,profileelementtype
ON profileelement
WHEN  datetime('now') < new.endlifespanversion OR NEW.endlifespanversion IS NULL
BEGIN
   UPDATE profileelement
   SET beginlifespanversion  = strftime('%Y-%m-%dT%H:%M:%fZ', 'now','localtime')
   WHERE id = new.id;
END;
--


CREATE TRIGGER u_begin_today_profileelement_error
AFTER UPDATE
OF inspireid_localid,inspireid_namespace,inspireid_versionid,profileelementdepthrange_uppervalue,profileelementdepthrange_lowervalue,endlifespanversion,layertype,layerrocktype,layergenesisprocess,layergenesisenviroment,layergenesisprocessstate,profileelementtype
ON profileelement
WHEN  datetime('now') > new.endlifespanversion
BEGIN
   SELECT RAISE(ABORT,'If you change record endlifespanversion must be greater than today');
END;
--



/* 
██████   █████  ██████  ████████ ██  ██████ ██      ███████ ███████ ██ ███████ ███████ ███████ ██████   █████   ██████ ████████ ██  ██████  ███    ██ ████████ ██    ██ ██████  ███████ 
██   ██ ██   ██ ██   ██    ██    ██ ██      ██      ██      ██      ██    ███  ██      ██      ██   ██ ██   ██ ██         ██    ██ ██    ██ ████   ██    ██     ██  ██  ██   ██ ██      
██████  ███████ ██████     ██    ██ ██      ██      █████   ███████ ██   ███   █████   █████   ██████  ███████ ██         ██    ██ ██    ██ ██ ██  ██    ██      ████   ██████  █████   
██      ██   ██ ██   ██    ██    ██ ██      ██      ██           ██ ██  ███    ██      ██      ██   ██ ██   ██ ██         ██    ██ ██    ██ ██  ██ ██    ██       ██    ██      ██      
██      ██   ██ ██   ██    ██    ██  ██████ ███████ ███████ ███████ ██ ███████ ███████ ██      ██   ██ ██   ██  ██████    ██    ██  ██████  ██   ████    ██       ██    ██      ███████
 */


-- Table particlesizefractiontype ---------------------------------------------------------------------------------------
CREATE TABLE particlesizefractiontype
(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    fractioncontent                 REAL NOT NULL, 
    particlesize_lower                 INTEGER NOT NULL, 
    particlesize_upper                 INTEGER NOT NULL, 
    idprofileelement TEXT NOT NULL,
    CHECK (particlesize_lower >= 0 AND particlesize_lower <= 1999),
    CHECK (particlesize_upper >= 1 AND particlesize_upper <= 2000),
    CHECK (particlesize_lower < particlesize_upper),
    FOREIGN KEY (idprofileelement)
      REFERENCES profileelement(guidkey) 
      ON DELETE CASCADE 
      ON UPDATE CASCADE

);

-- Contents particlesizefractiontype ---------------------------------------------------------------------------------------
INSERT INTO gpkg_contents (
  table_name,
  data_type,
  identifier,
  description,
  last_change,
  min_x,
  min_y,
  max_x,
  max_y,
  srs_id
) VALUES (
  'particlesizefractiontype', -- table name
  'attributes', -- data type
  't_psft', -- unique table identifier
  'particlesizefractiontype Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL, 
  NULL,
  NULL,
  NULL,
  NULL -- EPSG spatial reference system code
);


-- Trigger particlesizefractiontype ---------------------------------------------------------------------------------------
CREATE TRIGGER i_check_fraction_sum
BEFORE INSERT ON particlesizefractiontype
FOR EACH ROW
BEGIN
    SELECT CASE
        WHEN (
            SELECT ROUND(SUM(fractioncontent), 1) + ROUND(NEW.fractioncontent, 1)
            FROM particlesizefractiontype
            WHERE idprofileelement = NEW.idprofileelement
        ) > 100 THEN
            RAISE(ABORT, 'The sum of fractioncontent for idprofileelement cannot exceed 100')
    END;
END;


CREATE TRIGGER u_check_fraction_sum
BEFORE UPDATE ON particlesizefractiontype
FOR EACH ROW
BEGIN
    SELECT CASE
        WHEN (
            SELECT ROUND(SUM(fractioncontent), 1)
            FROM particlesizefractiontype
            WHERE idprofileelement = NEW.idprofileelement
            AND id <> OLD.id
        ) + ROUND(NEW.fractioncontent, 1) > 100 THEN
            RAISE(ABORT, 'The sum of fractioncontent for idprofileelement cannot exceed 100')
    END;
END;


CREATE TRIGGER i_check_particlesize_overlap
BEFORE INSERT ON particlesizefractiontype
FOR EACH ROW
BEGIN
    SELECT CASE
        WHEN EXISTS (
            SELECT 1
            FROM particlesizefractiontype
            WHERE idprofileelement = NEW.idprofileelement
              AND (
                  (NEW.particlesize_lower > particlesize_lower AND NEW.particlesize_lower < particlesize_upper) OR
                  (NEW.particlesize_upper > particlesize_lower AND NEW.particlesize_upper < particlesize_upper) OR
                  (NEW.particlesize_lower <= particlesize_lower AND NEW.particlesize_upper >= particlesize_upper) OR
                  (NEW.particlesize_upper = particlesize_lower) OR
                  (NEW.particlesize_lower = particlesize_upper)
              )
        ) THEN
            RAISE(ABORT, 'New range overlaps with or touches an existing range for the same idprofileelement')
    END;
END;


CREATE TRIGGER u_check_particlesize_overlap
BEFORE UPDATE ON particlesizefractiontype
FOR EACH ROW
BEGIN
    SELECT CASE
        WHEN EXISTS (
            SELECT 1
            FROM particlesizefractiontype
            WHERE idprofileelement = NEW.idprofileelement
              AND (
                  (NEW.particlesize_lower > particlesize_lower AND NEW.particlesize_lower < particlesize_upper) OR
                  (NEW.particlesize_upper > particlesize_lower AND NEW.particlesize_upper < particlesize_upper) OR
                  (NEW.particlesize_lower <= particlesize_lower AND NEW.particlesize_upper >= particlesize_upper) OR
                  (NEW.particlesize_upper = particlesize_lower) OR
                  (NEW.particlesize_lower = particlesize_upper)
              )
        ) THEN
            RAISE(ABORT, 'New range overlaps with or touches an existing range for the same idprofileelement')
    END;
END;

/* 
███████  █████   ██████  ██   ██  ██████  ██████  ██ ███████  ██████  ███    ██ ███    ██  ██████  ████████  █████  ████████ ██  ██████  ███    ██ ████████ ██    ██ ██████  ███████ 
██      ██   ██ ██    ██ ██   ██ ██    ██ ██   ██ ██    ███  ██    ██ ████   ██ ████   ██ ██    ██    ██    ██   ██    ██    ██ ██    ██ ████   ██    ██     ██  ██  ██   ██ ██      
█████   ███████ ██    ██ ███████ ██    ██ ██████  ██   ███   ██    ██ ██ ██  ██ ██ ██  ██ ██    ██    ██    ███████    ██    ██ ██    ██ ██ ██  ██    ██      ████   ██████  █████   
██      ██   ██ ██    ██ ██   ██ ██    ██ ██   ██ ██  ███    ██    ██ ██  ██ ██ ██  ██ ██ ██    ██    ██    ██   ██    ██    ██ ██    ██ ██  ██ ██    ██       ██    ██      ██      
██      ██   ██  ██████  ██   ██  ██████  ██   ██ ██ ███████  ██████  ██   ████ ██   ████  ██████     ██    ██   ██    ██    ██  ██████  ██   ████    ██       ██    ██      ███████ 
 */


-- Table faohorizonnotationtype ---------------------------------------------------------------------------------------
CREATE TABLE faohorizonnotationtype
(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    faohorizondiscontinuity           INTEGER, 
    faohorizonmaster_1                TEXT NOT NULL, -- Codelist faohorizonmastervalue
    faohorizonmaster_2                TEXT, -- Codelist faohorizonmastervalue
    faohorizonsubordinate_1           TEXT, -- Codelist faohorizonsubordinatevalue
    faohorizonsubordinate_2           TEXT, -- Codelist faohorizonsubordinatevalue
    faohorizonsubordinate_3           TEXT, -- Codelist faohorizonsubordinatevalue
    faohorizonvertical                 INTEGER,
    faoprime                          TEXT  NOT NULL,  -- Codelist faoprimevalue
    isoriginalclassification          BOOLEAN  DEFAULT 0 NOT NULL,
    idprofileelement                  TEXT UNIQUE, 
    FOREIGN KEY (idprofileelement) 
      REFERENCES profileelement(guidkey)  ON DELETE CASCADE ON UPDATE CASCADE
);

-- Contents faohorizonnotationtype ---------------------------------------------------------------------------------------
INSERT INTO gpkg_contents (
  table_name,
  data_type,
  identifier,
  description,
  last_change,
  min_x,
  min_y,
  max_x,
  max_y,
  srs_id
) VALUES (
  'faohorizonnotationtype', -- table name
  'attributes', -- data type
  't_faohnt', -- unique table identifier
  'faohorizonnotationtype Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL, 
  NULL,
  NULL,
  NULL,
  NULL -- EPSG spatial reference system code
);

-- Trigger faohorizonnotationtype ---------------------------------------------------------------------------------------
CREATE TRIGGER i_checkfaoprofileelementtype
BEFORE INSERT ON faohorizonnotationtype
FOR EACH ROW
BEGIN
    SELECT 
        CASE 
            WHEN (SELECT profileelementtype FROM profileelement WHERE profileelement.guidkey = NEW.idprofileelement) = 1
            THEN
                RAISE(ABORT, 'Table faohorizonnotationtype: The associated profileelement must have profileelementtype = 0 (HORIZON)')
        END;
END;

CREATE TRIGGER u_ceckfaoprofileelementtype
BEFORE UPDATE ON faohorizonnotationtype
FOR EACH ROW
BEGIN
    SELECT 
        CASE 
            WHEN (SELECT profileelementtype FROM profileelement WHERE profileelement.guidkey = NEW.idprofileelement) = 1
            THEN
                RAISE(ABORT, 'Table faohorizonnotationtype: The associated profileelement must have profileelementtype = 0 (HORIZON)')
        END;
END;
--


CREATE TRIGGER i_faohorizonmaster_1
BEFORE INSERT ON faohorizonnotationtype
FOR EACH ROW
WHEN NEW.faohorizonmaster_1 NOT IN (SELECT id FROM codelist WHERE collection = 'FAOHorizonMasterValue') AND NEW.faohorizonmaster_1 NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table faohorizonnotationtype: Invalid value for faohorizonmaster. Must be present in id of faohorizonmastervalue codelist.');
END;

CREATE TRIGGER u_faohorizonmaster_1
BEFORE UPDATE ON faohorizonnotationtype
FOR EACH ROW
WHEN NEW.faohorizonmaster_1 NOT IN (SELECT id FROM codelist WHERE collection = 'FAOHorizonMasterValue') AND NEW.faohorizonmaster_1 NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table faohorizonnotationtype: Invalid value for faohorizonmaster. Must be present in id of faohorizonmastervalue codelist.');
END;
--

CREATE TRIGGER i_faohorizonmaster_2
BEFORE INSERT ON faohorizonnotationtype
FOR EACH ROW
WHEN NEW.faohorizonmaster_2 NOT IN (SELECT id FROM codelist WHERE collection = 'FAOHorizonMasterValue') AND NEW.faohorizonmaster_2 NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table faohorizonnotationtype: Invalid value for faohorizonmaster. Must be present in id of faohorizonmastervalue codelist.');
END;

CREATE TRIGGER u_faohorizonmaster_2
BEFORE UPDATE ON faohorizonnotationtype
FOR EACH ROW
WHEN NEW.faohorizonmaster_2 NOT IN (SELECT id FROM codelist WHERE collection = 'FAOHorizonMasterValue') AND NEW.faohorizonmaster_2 NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table faohorizonnotationtype: Invalid value for faohorizonmaster. Must be present in id of faohorizonmastervalue codelist.');
END;
--

CREATE TRIGGER i_faohorizonsubordinate_1
BEFORE INSERT ON faohorizonnotationtype
FOR EACH ROW
WHEN NEW.faohorizonsubordinate_1 NOT IN (SELECT id FROM codelist WHERE collection = 'FAOHorizonSubordinateValue') AND NEW.faohorizonsubordinate_1  NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table faohorizonnotationtype: Invalid value for faohorizonsubordinate. Must be present in id of faohorizonsubordinatevalue codelist.');
END;

CREATE TRIGGER u_faohorizonsubordinate_1
BEFORE UPDATE ON faohorizonnotationtype
FOR EACH ROW
WHEN NEW.faohorizonsubordinate_1 NOT IN (SELECT id FROM codelist WHERE collection = 'FAOHorizonSubordinateValue') AND NEW.faohorizonsubordinate_1  NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table faohorizonnotationtype: Invalid value for faohorizonsubordinate. Must be present in id of faohorizonsubordinatevalue codelist.');
END;
--

CREATE TRIGGER i_faohorizonsubordinate_2
BEFORE INSERT ON faohorizonnotationtype
FOR EACH ROW
WHEN NEW.faohorizonsubordinate_2 NOT IN (SELECT id FROM codelist WHERE collection = 'FAOHorizonSubordinateValue') AND NEW.faohorizonsubordinate_2  NOT NULL AND NEW.faohorizonsubordinate_1  NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table faohorizonnotationtype: Invalid value for faohorizonsubordinate. Must be present in id of faohorizonsubordinatevalue codelist.');
END;

CREATE TRIGGER u_faohorizonsubordinate_2
BEFORE UPDATE ON faohorizonnotationtype
FOR EACH ROW
WHEN NEW.faohorizonsubordinate_2 NOT IN (SELECT id FROM codelist WHERE collection = 'FAOHorizonSubordinateValue') AND NEW.faohorizonsubordinate_2  NOT NULL AND NEW.faohorizonsubordinate_1  NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table faohorizonnotationtype: Invalid value for faohorizonsubordinate. Must be present in id of faohorizonsubordinatevalue codelist.');
END;
--

CREATE TRIGGER i_faohorizonsubordinate_3
BEFORE INSERT ON faohorizonnotationtype
FOR EACH ROW
WHEN NEW.faohorizonsubordinate_3 NOT IN (SELECT id FROM codelist WHERE collection = 'FAOHorizonSubordinateValue') AND NEW.faohorizonsubordinate_3  NOT NULL AND NEW.faohorizonsubordinate_2  NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table faohorizonnotationtype: Invalid value for faohorizonsubordinate. Must be present in id of faohorizonsubordinatevalue codelist.');
END;

CREATE TRIGGER u_faohorizonsubordinate_3
BEFORE UPDATE ON faohorizonnotationtype
FOR EACH ROW
WHEN NEW.faohorizonsubordinate_3 NOT IN (SELECT id FROM codelist WHERE collection = 'FAOHorizonSubordinateValue') AND NEW.faohorizonsubordinate_3  NOT NULL AND NEW.faohorizonsubordinate_2  NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table faohorizonnotationtype: Invalid value for faohorizonsubordinate. Must be present in id of faohorizonsubordinatevalue codelist.');
END;
--


CREATE TRIGGER i_faoprime
BEFORE INSERT ON faohorizonnotationtype
FOR EACH ROW
WHEN NEW.faoprime NOT IN (SELECT id FROM codelist WHERE collection = 'FAOPrimeValue') AND NEW.faoprime NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table faohorizonnotationtype: Invalid value for faoprime. Must be present in id of faoprimevalue codelist.');
END;

CREATE TRIGGER u_faoprime
BEFORE UPDATE ON faohorizonnotationtype
FOR EACH ROW
WHEN NEW.faoprime NOT IN (SELECT id FROM codelist WHERE collection = 'FAOPrimeValue') AND NEW.faoprime NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table faohorizonnotationtype: Invalid value for faoprime. Must be present in id of faoprimevalue codelist.');
END;
--


/* 
 ██████  ████████ ██   ██ ███████ ██████  ██   ██  ██████  ██████  ██ ███████  ██████  ███    ██ ███    ██  ██████  ████████  █████  ████████ ██  ██████  ███    ██ ████████ ██    ██ ██████  ███████ 
██    ██    ██    ██   ██ ██      ██   ██ ██   ██ ██    ██ ██   ██ ██    ███  ██    ██ ████   ██ ████   ██ ██    ██    ██    ██   ██    ██    ██ ██    ██ ████   ██    ██     ██  ██  ██   ██ ██      
██    ██    ██    ███████ █████   ██████  ███████ ██    ██ ██████  ██   ███   ██    ██ ██ ██  ██ ██ ██  ██ ██    ██    ██    ███████    ██    ██ ██    ██ ██ ██  ██    ██      ████   ██████  █████   
██    ██    ██    ██   ██ ██      ██   ██ ██   ██ ██    ██ ██   ██ ██  ███    ██    ██ ██  ██ ██ ██  ██ ██ ██    ██    ██    ██   ██    ██    ██ ██    ██ ██  ██ ██    ██       ██    ██      ██      
 ██████     ██    ██   ██ ███████ ██   ██ ██   ██  ██████  ██   ██ ██ ███████  ██████  ██   ████ ██   ████  ██████     ██    ██   ██    ██    ██  ██████  ██   ████    ██       ██    ██      ███████
 */


-- Table otherhorizonnotationtype ---------------------------------------------------------------------------------------
CREATE TABLE otherhorizonnotationtype
(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    guidkey TEXT UNIQUE,
    horizonnotation                      TEXT NOT NULL, --Codelist otherhorizonnotationtypevalue
    diagnostichorizon                    TEXT, -- Codelist wrbdiagnostichorizonvalue 
    isoriginalclassification             BOOLEAN  DEFAULT 0 NOT NULL, 
    otherhorizonnotation TEXT
);

-- Contents otherhorizonnotationtype ---------------------------------------------------------------------------------------
INSERT INTO gpkg_contents (
  table_name,
  data_type,
  identifier,
  description,
  last_change,
  min_x,
  min_y,
  max_x,
  max_y,
  srs_id
) VALUES (
  'otherhorizonnotationtype', -- table name
  'attributes', -- data type
  't_ohnt', -- unique table identifier
  'otherhorizonnotationtype Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL, 
  NULL,
  NULL,
  NULL,
  NULL -- EPSG spatial reference system code
);

-- Trigger otherhorizonnotationtype ---------------------------------------------------------------------------------------
CREATE TRIGGER otherhorizonnotationtypeguid
AFTER INSERT ON otherhorizonnotationtype
FOR EACH ROW
WHEN (NEW.guidkey IS NULL)
BEGIN
   UPDATE otherhorizonnotationtype SET guidkey = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER otherhorizonnotationtypeguidupdate
AFTER UPDATE OF guidkey ON otherhorizonnotationtype
BEGIN
    SELECT CASE
        WHEN NEW.guidkey != OLD.guidkey THEN
            RAISE (ABORT, 'Cannot update guidkey column.')
    END;
END;
--


CREATE TRIGGER i_otherhorizonnotationtype
BEFORE INSERT ON otherhorizonnotationtype
FOR EACH ROW
WHEN NEW.horizonnotation NOT IN (SELECT id FROM codelist WHERE collection = 'OtherHorizonNotationTypeValue') AND NEW.horizonnotation NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table otherhorizonnotationtype: Invalid value for horizonnotation. Must be present in id of otherhorizonnotationtypevalue codelist.');
END;

CREATE TRIGGER u_otherhorizonnotationtype
BEFORE UPDATE ON otherhorizonnotationtype
FOR EACH ROW
WHEN NEW.horizonnotation NOT IN (SELECT id FROM codelist WHERE collection = 'OtherHorizonNotationTypeValue') AND NEW.horizonnotation NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table otherhorizonnotationtype: Invalid value for horizonnotation. Must be present in id of otherhorizonnotationtypevalue codelist.');
END;
--


CREATE TRIGGER i_diagnostichorizon
BEFORE INSERT ON otherhorizonnotationtype
FOR EACH ROW
WHEN NEW.diagnostichorizon NOT IN (SELECT id FROM codelist WHERE collection = NEW.horizonnotation) AND NEW.diagnostichorizon NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table otherhorizonnotationtype: Invalid value for diagnostichorizon. Must be present in the relativecodelist.');
END;

CREATE TRIGGER u_diagnostichorizon
BEFORE UPDATE ON otherhorizonnotationtype
FOR EACH ROW
WHEN NEW.diagnostichorizon NOT IN (SELECT id FROM codelist WHERE collection = NEW.horizonnotation) AND NEW.diagnostichorizon NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table otherhorizonnotationtype: Invalid value for diagnostichorizon. Must be present in the relativecodelist.');
END;
--


/*
 ██████  ████████ ██   ██ ███████ ██████  ██   ██  ██████  ██████  ██ ███████  ██████  ███    ██         ██████  ██████   ██████  ███████ ██ ██      ███████ ███████ ██      ███████ ███    ███ ███████ ███    ██ ████████ 
██    ██    ██    ██   ██ ██      ██   ██ ██   ██ ██    ██ ██   ██ ██    ███  ██    ██ ████   ██         ██   ██ ██   ██ ██    ██ ██      ██ ██      ██      ██      ██      ██      ████  ████ ██      ████   ██    ██    
██    ██    ██    ███████ █████   ██████  ███████ ██    ██ ██████  ██   ███   ██    ██ ██ ██  ██         ██████  ██████  ██    ██ █████   ██ ██      █████   █████   ██      █████   ██ ████ ██ █████   ██ ██  ██    ██    
██    ██    ██    ██   ██ ██      ██   ██ ██   ██ ██    ██ ██   ██ ██  ███    ██    ██ ██  ██ ██         ██      ██   ██ ██    ██ ██      ██ ██      ██      ██      ██      ██      ██  ██  ██ ██      ██  ██ ██    ██    
 ██████     ██    ██   ██ ███████ ██   ██ ██   ██  ██████  ██   ██ ██ ███████  ██████  ██   ████ ███████ ██      ██   ██  ██████  ██      ██ ███████ ███████ ███████ ███████ ███████ ██      ██ ███████ ██   ████    ██    
*/


-- Table otherhorizon_profileelement ---------------------------------------------------------------------------------------
CREATE TABLE otherhorizon_profileelement
(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  idprofileelement TEXT NOT NULL,
  idotherhorizonnotationtype TEXT NOT NULL,
  CONSTRAINT unicrelationprooth UNIQUE (idprofileelement, idotherhorizonnotationtype),
  FOREIGN KEY (idprofileelement) REFERENCES profileelement (guidkey) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (idotherhorizonnotationtype) REFERENCES otherhorizonnotationtype (guidkey)  ON DELETE CASCADE ON UPDATE CASCADE
);

-- Contents otherhorizon_profileelement ---------------------------------------------------------------------------------------
INSERT INTO gpkg_contents (
table_name,
data_type,
identifier,
description,
last_change
) VALUES (
'otherhorizon_profileelement', -- table name
'attributes', -- data type
't_othproe', -- unique table identifier
'otherhorizon_profileelement Table', -- table description
strftime('%Y-%m-%dT%H:%M:%fZ','now') -- last modification date and time
);

-- Trigger otherhorizon_profileelement ---------------------------------------------------------------------------------------
CREATE TRIGGER   i_ceckothprofileelementtype
BEFORE INSERT ON otherhorizon_profileelement
FOR EACH ROW
WHEN (
    SELECT profileelementtype FROM profileelement WHERE guidkey = NEW.idprofileelement
    ) = 1
BEGIN
    SELECT RAISE(ABORT, 'Table otherhorizon_profileelement: The associated profileelement must have profileelementtype = 0 (HORIZON)');
END;

CREATE TRIGGER   u_ceckothprofileelementtype
BEFORE UPDATE ON otherhorizon_profileelement
FOR EACH ROW
WHEN  (
    SELECT profileelementtype FROM profileelement WHERE guidkey = NEW.idprofileelement
    ) = 1
BEGIN
    SELECT RAISE(ABORT, 'Table otherhorizon_profileelement: The associated profileelement must have profileelementtype = 0 (HORIZON)');
END;
--


/* 
██     ██ ██████  ██████   ██████  ██    ██  █████  ██      ██ ███████ ██ ███████ ██████   ██████  ██████   ██████  ██    ██ ██████  ████████ ██    ██ ██████  ███████ 
██     ██ ██   ██ ██   ██ ██    ██ ██    ██ ██   ██ ██      ██ ██      ██ ██      ██   ██ ██       ██   ██ ██    ██ ██    ██ ██   ██    ██     ██  ██  ██   ██ ██      
██  █  ██ ██████  ██████  ██    ██ ██    ██ ███████ ██      ██ █████   ██ █████   ██████  ██   ███ ██████  ██    ██ ██    ██ ██████     ██      ████   ██████  █████   
██ ███ ██ ██   ██ ██   ██ ██ ▄▄ ██ ██    ██ ██   ██ ██      ██ ██      ██ ██      ██   ██ ██    ██ ██   ██ ██    ██ ██    ██ ██         ██       ██    ██      ██      
 ███ ███  ██   ██ ██████   ██████   ██████  ██   ██ ███████ ██ ██      ██ ███████ ██   ██  ██████  ██   ██  ██████   ██████  ██         ██       ██    ██      ███████ 
 */


-- Table wrbqualifiergrouptype ---------------------------------------------------------------------------------------
CREATE TABLE wrbqualifiergrouptype 
(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    guidkey TEXT UNIQUE,
	wrbversion TEXT DEFAULT 'https://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue' NOT NULL,  
    qualifierplace            TEXT NOT NULL, -- Codelist wrbqualifierplacevalue
    wrbqualifier              TEXT NOT NULL,  --Codelist wrbqualifiervalue 
    wrbspecifier_1            TEXT,    -- Codelist wrbspecifiervalue
    wrbspecifier_2 			  TEXT,    -- Codelist wrbspecifiervalue
    UNIQUE (wrbversion, qualifierplace, wrbqualifier, wrbspecifier_1, wrbspecifier_2)
);

-- Contents wrbqualifiergrouptype ---------------------------------------------------------------------------------------
INSERT INTO gpkg_contents (
  table_name,
  data_type,
  identifier,
  description,
  last_change,
  min_x,
  min_y,
  max_x,
  max_y,
  srs_id
) VALUES (
  'wrbqualifiergrouptype', -- table name
  'attributes', -- data type
  't_wrbqgt', -- unique table identifier
  'wrbqualifiergrouptype Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL, 
  NULL,
  NULL,
  NULL,
  NULL -- EPSG spatial reference system code
);

-- Trigger wrbqualifiergrouptype ---------------------------------------------------------------------------------------
CREATE TRIGGER wrbqualifiergrouptypeguid
AFTER INSERT ON wrbqualifiergrouptype
FOR EACH ROW
WHEN (NEW.guidkey IS NULL)
BEGIN
   UPDATE wrbqualifiergrouptype SET guidkey = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER wrbqualifiergrouptypeguidupdate
AFTER UPDATE OF guidkey ON wrbqualifiergrouptype
BEGIN
    SELECT CASE
        WHEN NEW.guidkey != OLD.guidkey THEN
            RAISE (ABORT, 'Cannot update guidkey column.')
    END;
END;
--

CREATE TRIGGER i_wrbqualifier
BEFORE INSERT ON wrbqualifiergrouptype
FOR EACH ROW
WHEN 
  (NEW.wrbversion = 'https://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue' AND NEW.wrbqualifier NOT IN (SELECT id FROM codelist WHERE collection = 'WRBQualifierValue')AND NEW.wrbqualifier NOT NULL) OR
  (NEW.wrbversion = 'http://stats-class.fao.uniroma2.it/WRB/v2014/rsg.html' AND NEW.wrbqualifier NOT IN (SELECT id FROM codelist WHERE collection = 'WRBQualifierValue2014')AND NEW.wrbqualifier NOT NULL) OR
  (NEW.wrbversion = 'https://obrl-soil.github.io/wrbsoil2022/' AND NEW.wrbqualifier NOT IN (SELECT id FROM codelist WHERE collection = 'WRBQualifierValue2022')AND NEW.wrbqualifier NOT NULL)
BEGIN
    SELECT RAISE(ABORT, 'Table wrbqualifiergrouptype: Invalid value for wrbversion. Must be present in id of the correct year codelist collection.');
END;

CREATE TRIGGER u_wrbqualifier
BEFORE UPDATE ON wrbqualifiergrouptype
FOR EACH ROW
WHEN 
  (NEW.wrbversion = 'https://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue' AND NEW.wrbqualifier NOT IN (SELECT id FROM codelist WHERE collection = 'WRBQualifierValue')AND NEW.wrbqualifier NOT NULL) OR
  (NEW.wrbversion = 'http://stats-class.fao.uniroma2.it/WRB/v2014/rsg.html' AND NEW.wrbqualifier NOT IN (SELECT id FROM codelist WHERE collection = 'WRBQualifierValue2014')AND NEW.wrbqualifier NOT NULL) OR
  (NEW.wrbversion = 'https://obrl-soil.github.io/wrbsoil2022/' AND NEW.wrbqualifier NOT IN (SELECT id FROM codelist WHERE collection = 'WRBQualifierValue2022')AND NEW.wrbqualifier NOT NULL)
BEGIN
    SELECT RAISE(ABORT, 'Table wrbqualifiergrouptype: Invalid value for wrbversion. Must be present in id of the correct year codelist collection.');
END;
--


CREATE TRIGGER i_qualifierplace
BEFORE INSERT ON wrbqualifiergrouptype
FOR EACH ROW
WHEN NEW.qualifierplace NOT IN (SELECT id FROM codelist WHERE collection = 'WRBQualifierPlaceValue') 
BEGIN
    SELECT RAISE(ABORT, 'Table wrbqualifiergrouptype: Invalid value for qualifierplace. Must be present in id of wrbqualifierplacevalue codelist.');
END;

CREATE TRIGGER u_qualifierplace
BEFORE UPDATE ON wrbqualifiergrouptype
FOR EACH ROW
WHEN NEW.qualifierplace NOT IN (SELECT id FROM codelist WHERE collection = 'WRBQualifierPlaceValue') 
BEGIN
    SELECT RAISE(ABORT, 'Table wrbqualifiergrouptype: Invalid value for qualifierplace. Must be present in id of wrbqualifierplacevalue codelist.');
END;
--


CREATE TRIGGER i_wrbspecifier_1
BEFORE INSERT ON wrbqualifiergrouptype
FOR EACH ROW
WHEN 
  (NEW.wrbversion = 'https://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue' AND NEW.wrbspecifier_1 NOT IN (SELECT id FROM codelist WHERE collection = 'WRBSpecifierValue')AND NEW.wrbspecifier_1 NOT NULL) OR
  (NEW.wrbversion = 'http://stats-class.fao.uniroma2.it/WRB/v2014/rsg.html' AND NEW.wrbspecifier_1 NOT IN (SELECT id FROM codelist WHERE collection = 'WRBSpecifierValue2014')AND NEW.wrbspecifier_1 NOT NULL) OR
  (NEW.wrbversion = 'https://obrl-soil.github.io/wrbsoil2022/' AND NEW.wrbspecifier_1 NOT IN (SELECT id FROM codelist WHERE collection = 'WRBSpecifierValue2022')AND NEW.wrbspecifier_1 NOT NULL)
BEGIN
    SELECT RAISE(ABORT, 'Table wrbqualifiergrouptype: Invalid value for wrbversion. Must be present in id of the correct year codelist collection.');
END;


CREATE TRIGGER u_wrbspecifier_1
BEFORE UPDATE ON wrbqualifiergrouptype
FOR EACH ROW
WHEN 
  (NEW.wrbversion = 'https://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue' AND NEW.wrbspecifier_1 NOT IN (SELECT id FROM codelist WHERE collection = 'WRBSpecifierValue')AND NEW.wrbspecifier_1 NOT NULL) OR
  (NEW.wrbversion = 'http://stats-class.fao.uniroma2.it/WRB/v2014/rsg.html' AND NEW.wrbspecifier_1 NOT IN (SELECT id FROM codelist WHERE collection = 'WRBSpecifierValue2014')AND NEW.wrbspecifier_1 NOT NULL) OR
  (NEW.wrbversion = 'https://obrl-soil.github.io/wrbsoil2022/' AND NEW.wrbspecifier_1 NOT IN (SELECT id FROM codelist WHERE collection = 'WRBSpecifierValue2022')AND NEW.wrbspecifier_1 NOT NULL)
BEGIN
    SELECT RAISE(ABORT, 'Table wrbqualifiergrouptype: Invalid value for wrbversion. Must be present in id of the correct year codelist collection.');
END;
--


CREATE TRIGGER i_wrbspecifier_2
BEFORE INSERT ON wrbqualifiergrouptype
FOR EACH ROW
WHEN 
  (NEW.wrbversion = 'https://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue' AND NEW.wrbspecifier_2 NOT IN (SELECT id FROM codelist WHERE collection = 'WRBSpecifierValue')AND NEW.wrbspecifier_2 NOT NULL) OR
  (NEW.wrbversion = 'http://stats-class.fao.uniroma2.it/WRB/v2014/rsg.html' AND NEW.wrbspecifier_2 NOT IN (SELECT id FROM codelist WHERE collection = 'WRBSpecifierValue2014')AND NEW.wrbspecifier_2 NOT NULL) OR
  (NEW.wrbversion = 'https://obrl-soil.github.io/wrbsoil2022/' AND NEW.wrbspecifier_2 NOT IN (SELECT id FROM codelist WHERE collection = 'WRBSpecifierValue2022')AND NEW.wrbspecifier_2 NOT NULL)
BEGIN
    SELECT RAISE(ABORT, 'Table wrbqualifiergrouptype: Invalid value for wrbversion. Must be present in id of the correct year codelist collection.');
END;


CREATE TRIGGER u_wrbspecifier_2
BEFORE UPDATE ON wrbqualifiergrouptype
FOR EACH ROW
WHEN 
  (NEW.wrbversion = 'https://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue' AND NEW.wrbspecifier_2 NOT IN (SELECT id FROM codelist WHERE collection = 'WRBSpecifierValue')AND NEW.wrbspecifier_2 NOT NULL) OR
  (NEW.wrbversion = 'http://stats-class.fao.uniroma2.it/WRB/v2014/rsg.html' AND NEW.wrbspecifier_2 NOT IN (SELECT id FROM codelist WHERE collection = 'WRBSpecifierValue2014')AND NEW.wrbspecifier_2 NOT NULL) OR
  (NEW.wrbversion = 'https://obrl-soil.github.io/wrbsoil2022/' AND NEW.wrbspecifier_2 NOT IN (SELECT id FROM codelist WHERE collection = 'WRBSpecifierValue2022')AND NEW.wrbspecifier_2 NOT NULL)
BEGIN
    SELECT RAISE(ABORT, 'Table wrbqualifiergrouptype: Invalid value for wrbversion. Must be present in id of the correct year codelist collection.');
END;
--

CREATE TRIGGER i_wrbqualversion
BEFORE INSERT ON wrbqualifiergrouptype
FOR EACH ROW
WHEN NEW.wrbversion NOT IN (SELECT id FROM codelist WHERE collection = 'wrbversion') AND NEW.wrbversion NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table soilprofile: Invalid value for wrbversion. Must be present in id of wrbreferencesoilgroupvalue codelist.');
END;
                      
CREATE TRIGGER u_wrbqualversion
BEFORE UPDATE ON wrbqualifiergrouptype
FOR EACH ROW
WHEN NEW.wrbversion NOT IN (SELECT id FROM codelist WHERE collection = 'wrbversion') AND NEW.wrbversion NOT NULL
BEGIN
    SELECT RAISE(ABORT, 'Table soilprofile: Invalid value for wrbversion. Must be present in id of wrbreferencesoilgroupvalue codelist.');
END;
--

CREATE TRIGGER i_unique_wrbqualifiergrouptype
BEFORE INSERT ON wrbqualifiergrouptype
FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'Duplicate entry found for wrbversion, qualifierplace, wrbqualifier, wrbspecifier_1, wrbspecifier_2.')
    FROM wrbqualifiergrouptype
    WHERE wrbversion = NEW.wrbversion
      AND qualifierplace = NEW.qualifierplace
      AND wrbqualifier = NEW.wrbqualifier
      AND (wrbspecifier_1 = NEW.wrbspecifier_1 OR (wrbspecifier_1 IS NULL AND NEW.wrbspecifier_1 IS NULL))
      AND (wrbspecifier_2 = NEW.wrbspecifier_2 OR (wrbspecifier_2 IS NULL AND NEW.wrbspecifier_2 IS NULL))
      AND id != NEW.id
    LIMIT 1;
END;

CREATE TRIGGER u_unique_wrbqualifiergrouptype
BEFORE UPDATE ON wrbqualifiergrouptype
FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'Duplicate entry found for wrbversion, qualifierplace, wrbqualifier, wrbspecifier_1, wrbspecifier_2.')
    FROM wrbqualifiergrouptype
    WHERE wrbversion = NEW.wrbversion
      AND qualifierplace = NEW.qualifierplace
      AND wrbqualifier = NEW.wrbqualifier
      AND (wrbspecifier_1 = NEW.wrbspecifier_1 OR (wrbspecifier_1 IS NULL AND NEW.wrbspecifier_1 IS NULL))
      AND (wrbspecifier_2 = NEW.wrbspecifier_2 OR (wrbspecifier_2 IS NULL AND NEW.wrbspecifier_2 IS NULL))
      AND id != NEW.id
    LIMIT 1;
END;


CREATE TRIGGER i_check_specifiers_not_equal
BEFORE INSERT ON wrbqualifiergrouptype
FOR EACH ROW
BEGIN   
    SELECT RAISE(ABORT, 'wrbspecifier_1 and wrbspecifier_2 must not be equal')
    WHERE NEW.wrbspecifier_1 = NEW.wrbspecifier_2;


    SELECT RAISE(ABORT, 'wrbspecifier_1 must not be NULL when wrbspecifier_2 is not NULL')
    WHERE NEW.wrbspecifier_2 IS NOT NULL AND NEW.wrbspecifier_1 IS NULL;
END;

CREATE TRIGGER u_check_specifiers_not_equal
BEFORE UPDATE ON wrbqualifiergrouptype
FOR EACH ROW
BEGIN

    SELECT RAISE(ABORT, 'wrbspecifier_1 and wrbspecifier_2 must not be equal')
    WHERE NEW.wrbspecifier_1 = NEW.wrbspecifier_2;

    SELECT RAISE(ABORT, 'wrbspecifier_1 must not be NULL when wrbspecifier_2 is not NULL')
    WHERE NEW.wrbspecifier_2 IS NOT NULL AND NEW.wrbspecifier_1 IS NULL;
END;
--

/*
██     ██ ██████  ██████   ██████  ██    ██  █████  ██      ██ ███████ ██ ███████ ██████   ██████  ██████   ██████  ██    ██ ██████          ██████  ██████   ██████  ███████ ██ ██      ███████ 
██     ██ ██   ██ ██   ██ ██    ██ ██    ██ ██   ██ ██      ██ ██      ██ ██      ██   ██ ██       ██   ██ ██    ██ ██    ██ ██   ██         ██   ██ ██   ██ ██    ██ ██      ██ ██      ██      
██  █  ██ ██████  ██████  ██    ██ ██    ██ ███████ ██      ██ █████   ██ █████   ██████  ██   ███ ██████  ██    ██ ██    ██ ██████          ██████  ██████  ██    ██ █████   ██ ██      █████   
██ ███ ██ ██   ██ ██   ██ ██ ▄▄ ██ ██    ██ ██   ██ ██      ██ ██      ██ ██      ██   ██ ██    ██ ██   ██ ██    ██ ██    ██ ██              ██      ██   ██ ██    ██ ██      ██ ██      ██      
 ███ ███  ██   ██ ██████   ██████   ██████  ██   ██ ███████ ██ ██      ██ ███████ ██   ██  ██████  ██   ██  ██████   ██████  ██      ███████ ██      ██   ██  ██████  ██      ██ ███████ ███████ 
*/


-- Table wrbqualifiergroup_profile ---------------------------------------------------------------------------------------
CREATE TABLE wrbqualifiergroup_profile
(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  idsoilprofile TEXT NOT NULL,
  idwrbqualifiergrouptype TEXT NOT NULL,
  qualifierposition      INTEGER NOT NULL,
  CONSTRAINT unicrelationspwbr UNIQUE (idsoilprofile, idwrbqualifiergrouptype),
  FOREIGN KEY (idsoilprofile) REFERENCES soilprofile (guidkey) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (idwrbqualifiergrouptype) REFERENCES wrbqualifiergrouptype (guidkey)  ON DELETE CASCADE ON UPDATE CASCADE
);

-- Contents wrbqualifiergroup_profile ---------------------------------------------------------------------------------------
INSERT INTO gpkg_contents (
table_name,
data_type,
identifier,
description,
last_change
) VALUES (
'wrbqualifiergroup_profile', -- table name
'attributes', -- data type
't_wrbpro', -- unique table identifier
'wrbqualifiergroup_profile Table', -- table description
strftime('%Y-%m-%dT%H:%M:%fZ','now') -- last modification date and time
);

-- Trigger wrbqualifiergroup_profile ---------------------------------------------------------------------------------------
CREATE TRIGGER i_check_wrbversion_match
BEFORE INSERT ON wrbqualifiergroup_profile
FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'Mismatch in wrbversion values.')
    WHERE (SELECT wrbversion FROM soilprofile WHERE guidkey = NEW.idsoilprofile) <> 
          (SELECT wrbversion FROM wrbqualifiergrouptype WHERE guidkey = NEW.idwrbqualifiergrouptype);
END;


CREATE TRIGGER u_check_wrbversion_match
BEFORE UPDATE ON wrbqualifiergroup_profile
FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'Mismatch in wrbversion values.')
    WHERE (SELECT wrbversion FROM soilprofile WHERE guidkey = NEW.idsoilprofile) <> 
          (SELECT wrbversion FROM wrbqualifiergrouptype WHERE guidkey = NEW.idwrbqualifiergrouptype);
END;
--

CREATE TRIGGER i_check_qualifier_position_unique
BEFORE INSERT ON wrbqualifiergroup_profile
FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'qualifierposition must be unique for each qualifierplace within the same soilprofile')
    FROM wrbqualifiergroup_profile
    JOIN wrbqualifiergrouptype ON wrbqualifiergroup_profile.idwrbqualifiergrouptype = wrbqualifiergrouptype.guidkey
    WHERE wrbqualifiergroup_profile.idsoilprofile = NEW.idsoilprofile
      AND wrbqualifiergroup_profile.qualifierposition = NEW.qualifierposition
      AND wrbqualifiergrouptype.qualifierplace = (SELECT qualifierplace
                                                  FROM wrbqualifiergrouptype
                                                  WHERE guidkey = NEW.idwrbqualifiergrouptype)
      AND wrbqualifiergroup_profile.id != NEW.id;
END;


CREATE TRIGGER u_check_qualifier_position_unique
BEFORE UPDATE ON wrbqualifiergroup_profile
FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'qualifierposition must be unique for each qualifierplace within the same soilprofile')
    FROM wrbqualifiergroup_profile
    JOIN wrbqualifiergrouptype ON wrbqualifiergroup_profile.idwrbqualifiergrouptype = wrbqualifiergrouptype.guidkey
    WHERE wrbqualifiergroup_profile.idsoilprofile = NEW.idsoilprofile
      AND wrbqualifiergroup_profile.qualifierposition = NEW.qualifierposition
      AND wrbqualifiergrouptype.qualifierplace = (SELECT qualifierplace
                                                  FROM wrbqualifiergrouptype
                                                  WHERE guidkey = NEW.idwrbqualifiergrouptype)
      AND wrbqualifiergroup_profile.id != NEW.id;
END;




/*
 ██████   ██████   ██████     ███████ ███████ ███    ██ ███████  ██████  ██████  ████████ ██   ██ ██ ███    ██  ██████  ███████      █████  ██████  ██     ██████      ██████  
██    ██ ██       ██          ██      ██      ████   ██ ██      ██    ██ ██   ██    ██    ██   ██ ██ ████   ██ ██       ██          ██   ██ ██   ██ ██          ██    ██  ████ 
██    ██ ██   ███ ██          ███████ █████   ██ ██  ██ ███████ ██    ██ ██████     ██    ███████ ██ ██ ██  ██ ██   ███ ███████     ███████ ██████  ██      █████     ██ ██ ██ 
██    ██ ██    ██ ██               ██ ██      ██  ██ ██      ██ ██    ██ ██   ██    ██    ██   ██ ██ ██  ██ ██ ██    ██      ██     ██   ██ ██      ██     ██         ████  ██ 
 ██████   ██████   ██████     ███████ ███████ ██   ████ ███████  ██████  ██   ██    ██    ██   ██ ██ ██   ████  ██████  ███████     ██   ██ ██      ██     ███████ ██  ██████  

============================================================================================================================================================================================================
*/


/*
███████ ███████  █████  ████████ ██    ██ ██████  ███████ 
██      ██      ██   ██    ██    ██    ██ ██   ██ ██      
█████   █████   ███████    ██    ██    ██ ██████  █████   
██      ██      ██   ██    ██    ██    ██ ██   ██ ██      
██      ███████ ██   ██    ██     ██████  ██   ██ ███████ 
*/

-- Table feature ---------------------------------------------------------------------------------------
CREATE TABLE  feature (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    definition TEXT, --URI -- sembra funzionare, ma non accetta i null
    description TEXT,
    encodingtype TEXT NOT NULL, -- encodingType values
    feature_soilsite TEXT,
    feature_soilprofile TEXT,
    feature_profileelement TEXT,
    feature_soilderivedobject TEXT,
    properties  TEXT, --JSON
    idfeaturetype INTEGER,
    FOREIGN KEY (feature_soilsite) REFERENCES soilsite (guidkey) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (feature_soilprofile) REFERENCES soilprofile (guidkey) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (feature_profileelement) REFERENCES profileelement (guidkey) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (feature_soilderivedobject) REFERENCES soilderivedobject (guidkey) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (idfeaturetype) REFERENCES featuretype (id) ON DELETE SET NULL ON UPDATE CASCADE,
    UNIQUE (feature_soilsite),
    UNIQUE (feature_soilprofile),
    UNIQUE (feature_profileelement),
    UNIQUE (feature_soilderivedobject),

    -- Only one among Soil Site, Soil Profile, Profile Element, and Soil Derived Object can be populated.
    CHECK (
        ((feature_soilsite IS NOT NULL) +
        (feature_soilprofile IS NOT NULL) +
        (feature_profileelement IS NOT NULL) +
        (feature_soilderivedobject IS NOT NULL)) IN (0, 1)
    ),

    CHECK (
    definition IS NULL
    OR (
        -- dev’essere testo non vuoto
        typeof(definition) = 'text'
        AND length(trim(definition)) > 0
        -- niente spazi
        AND instr(definition, ' ') = 0
        -- normalizzo per sicurezza il confronto sullo schema
        AND (
            lower(definition) GLOB 'http://*.*'
            OR lower(definition) GLOB 'https://*.*'
            OR lower(definition) GLOB 'ftp://*.*'
        )
        -- deve contenere "://"
        AND instr(definition, '://') > 0
        -- il dominio non deve terminare con un punto
        AND substr(definition, -1, 1) <> '.'
      )
    ),

    CHECK (
            encodingtype IN (
                'application/geo+json',
                'application/geopose+json',
                'text/plain'
            )
        )
);



-- JSON mime type ---------------------------------------------------------------------------------------
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('feature', 'properties', 'Properties', 'Properties', 'A JSON Object containing user-annotated properties as key-value pairs.', 'application/json', null);

-- Contents  codelist -----------------------------------------------------------------------------
INSERT INTO gpkg_contents (
  table_name,
  data_type,
  identifier,
  description,
  last_change,
  min_x,
  min_y,
  max_x,
  max_y,
  srs_id
) VALUES (
  'feature', -- table name
  'attributes', -- data type
  'feat', -- unique table identifier
  'feature Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL, 
  NULL,
  NULL,
  NULL,
  NULL -- EPSG spatial reference system code
);


-- Trigger Feature ----------------------------------------------------

-- Custom triggers are implemented to enforce foreign key constraints
-- even when PRAGMA foreign_keys is disabled (set to 0).
-- These triggers act as a fallback mechanism to maintain referential integrity
-- in environments or connections where foreign key enforcement is not enabled by default.

-- NOTE: SQLite does not enforce foreign key constraints unless PRAGMA foreign_keys = ON
-- is explicitly set for each connection. To prevent data inconsistencies when this setting
-- is OFF, we use custom triggers that manually validate foreign key relationships.


/*
███████ ███████  █████  ████████ ██    ██ ██████  ███████     ████████ ██    ██ ██████  ███████ 
██      ██      ██   ██    ██    ██    ██ ██   ██ ██             ██     ██  ██  ██   ██ ██      
█████   █████   ███████    ██    ██    ██ ██████  █████          ██      ████   ██████  █████   
██      ██      ██   ██    ██    ██    ██ ██   ██ ██             ██       ██    ██      ██      
██      ███████ ██   ██    ██     ██████  ██   ██ ███████        ██       ██    ██      ███████                                                                                                                                                                                                                           
*/                                                        

-- Table feature ---------------------------------------------------------------------------------------
CREATE TABLE  featuretype (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name  TEXT NOT NULL,
    definition TEXT, --URI
    description TEXT,
    properties  TEXT, --JSON

    CHECK (
    definition IS NULL
    OR (
        -- dev’essere testo non vuoto
        typeof(definition) = 'text'
        AND length(trim(definition)) > 0
        -- niente spazi
        AND instr(definition, ' ') = 0
        -- normalizzo per sicurezza il confronto sullo schema
        AND (
            lower(definition) GLOB 'http://*.*'
            OR lower(definition) GLOB 'https://*.*'
            OR lower(definition) GLOB 'ftp://*.*'
        )
        -- deve contenere "://"
        AND instr(definition, '://') > 0
        -- il dominio non deve terminare con un punto
        AND substr(definition, -1, 1) <> '.'
      )
    )
);


-- JSON mime type ---------------------------------------------------------------------------------------
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('featuretype', 'properties', 'Properties', 'Properties', 'A JSON Object containing user-annotated properties as key-value pairs.', 'application/json', null);

-- Contents  codelist -----------------------------------------------------------------------------
INSERT INTO gpkg_contents (
  table_name,
  data_type,
  identifier,
  description,
  last_change,
  min_x,
  min_y,
  max_x,
  max_y,
  srs_id
) VALUES (
  'featuretype', -- table name
  'attributes', -- data type
  'feattype', -- unique table identifier
  'featuretype Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL, 
  NULL,
  NULL,
  NULL,
  NULL -- EPSG spatial reference system code
);

/*
██████   █████  ████████  █████  ███████ ████████ ██████  ███████  █████  ███    ███ 
██   ██ ██   ██    ██    ██   ██ ██         ██    ██   ██ ██      ██   ██ ████  ████ 
██   ██ ███████    ██    ███████ ███████    ██    ██████  █████   ███████ ██ ████ ██ 
██   ██ ██   ██    ██    ██   ██      ██    ██    ██   ██ ██      ██   ██ ██  ██  ██ 
██████  ██   ██    ██    ██   ██ ███████    ██    ██   ██ ███████ ██   ██ ██      ██ 
*/

-- Table datastream ---------------------------------------------------------------------------------------
CREATE TABLE datastream
( 
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name text NOT NULL, 
    definition TEXT,
    description TEXT,
    resulttype TEXT NOT NULL,
    resultEncoding TEXT,
    observedarea POLYGON,
    phenomenontime_start DATETIME, 
    phenomenontime_end DATETIME,
    resulttime_start DATETIME,
    resulttime_end DATETIME,
    properties TEXT,
    idfeature INTEGER,  -- It is not clear whether the presence of at least one between UltimateFeatureOfInterest and ProximateFeatureOfInterest is mandatory.
    --thing_id INTEGER NOT NULL,  
    --sensor_id INTEGER NOT NULL,
    --observedproperty_id INTEGER NOT NULL,

     --CHECK (definition IS NULL OR definition REGEXP '^(https?|ftp)://[^\s/$.?#].[^\s]*$'), -- URI validation
    FOREIGN KEY (idfeature) REFERENCES feature (id)  --verify cascade
    --FOREIGN KEY (thing_id) REFERENCES thing (id),  --verify cascade
    --FOREIGN KEY (sensor_id) REFERENCES sensor (id),  --verify cascade
    --FOREIGN KEY (observedproperty_id) REFERENCES observedproperty (id)  --verify cascade
);



-- JSON mime type ---------------------------------------------------------------------------------------
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream  ', 'resulttype', null, null, 'key/value Json', 'application/json', null);
-- JSON mime type ---------------------------------------------------------------------------------------
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream  ', 'resultEncoding', null, null, 'key/value Json', 'application/json', null);
-- JSON mime type ---------------------------------------------------------------------------------------
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream  ', 'properties', null, null, 'key/value Json', 'application/json', null);


-- spatial index
CREATE INDEX idx_datastream_geom ON datastream(observedarea);

-- Contents datastream --------------------------------------------------------------------------------------
INSERT INTO gpkg_contents (
  table_name,
  data_type,
  identifier,
  description,
  last_change,
  min_x,
  min_y,
  max_x,
  max_y,
  srs_id
) VALUES (
  'datastream', -- table name
  'features', -- data type
  'ds_ss', -- unique table identifier
  'datastream Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL, 
  NULL,
  NULL,
  NULL,
  3035 -- EPSG spatial reference system code
);

-- Geometry datastream ---------------------------------------------------------------------------------------
INSERT INTO gpkg_geometry_columns (
  table_name,
  column_name,
  geometry_type_name,
  srs_id,
  z,
  m
) VALUES (
  'datastream', -- table name
  'observedarea', -- geometry column name
  'MULTIPOLYGON', -- geometry type
  3035, -- EPSG spatial reference system code
  0, -- if the geometry has a Z coordinate (0 = no, 1 = yes, 2 = optional)
  0 -- if the geometry has a M coordinate (0 = no, 1 = yes, 2 = optional)
);

-- Trigger datastream ---------------------------------------------------------------------------------------

CREATE TRIGGER i_check_definition_url
BEFORE INSERT ON datastream
FOR EACH ROW
WHEN NOT (
    (NEW.definition LIKE 'http://%' OR NEW.definition LIKE 'https://%')
    AND NEW.definition LIKE '%.%' -- there must be at least one point in the domain
    AND LENGTH(NEW.definition) > 10 -- to avoid things like "http://x"
)
BEGIN
    SELECT RAISE(ABORT, 'The definition field does not appear to be a valid URL');
END;


CREATE TRIGGER u_check_definition_url
BEFORE UPDATE ON datastream
FOR EACH ROW
WHEN NOT (
    (NEW.definition LIKE 'http://%' OR NEW.definition LIKE 'https://%')
    AND NEW.definition LIKE '%.%' -- there must be at least one point in the domain
    AND LENGTH(NEW.definition) > 10 -- to avoid things like "http://x"
)
BEGIN
    SELECT RAISE(ABORT, 'The definition field does not appear to be a valid URL');
END;



/* 
 ██████  ██████  ██████  ███████ ██      ██ ███████ ████████ 
██      ██    ██ ██   ██ ██      ██      ██ ██         ██    
██      ██    ██ ██   ██ █████   ██      ██ ███████    ██    
██      ██    ██ ██   ██ ██      ██      ██      ██    ██    
 ██████  ██████  ██████  ███████ ███████ ██ ███████    ██    
 */



-- Table codelist -----------------------------------------------------------------------------
create table codelist
(
    id             TEXT,
    label          TEXT,
    definition     TEXT,
    collection     TEXT,
    featuretype            TEXT,
    phenomenon     TEXT,
    featuretype_phenomenon TEXT,
    parent         TEXT
);

-- Contents  codelist -----------------------------------------------------------------------------
INSERT INTO gpkg_contents (
  table_name,
  data_type,
  identifier,
  description,
  last_change,
  min_x,
  min_y,
  max_x,
  max_y,
  srs_id
) VALUES (
  'codelist', -- table name
  'attributes', -- data type
  't_cod', -- unique table identifier
  'codelist Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL, 
  NULL,
  NULL,
  NULL,
  NULL -- EPSG spatial reference system code
);


---------------------------------------------------------------- 
----------------------------  INDEX ---------------------------- 
---------------------------------------------------------------- 


CREATE INDEX IF NOT EXISTS idx_soilplot_locatedon                          ON soilplot(locatedon);
CREATE INDEX IF NOT EXISTS idx_soilprofile_location                        ON soilprofile(location);
CREATE INDEX IF NOT EXISTS idx_othersoilnametype_othersoilname             ON othersoilnametype(othersoilname);
CREATE INDEX IF NOT EXISTS idx_isderivedfrom_base_id                       ON isderivedfrom(base_id);
CREATE INDEX IF NOT EXISTS idx_isderivedfrom_related_id                    ON isderivedfrom(related_id);
CREATE INDEX IF NOT EXISTS idx_soilbody_geom_idsoilbody                    ON soilbody_geom(idsoilbody);
CREATE INDEX IF NOT EXISTS idx_derivedprofilepresenceinsoilbody_idsoilbody ON derivedprofilepresenceinsoilbody(idsoilbody);
CREATE INDEX IF NOT EXISTS idx_derivedprofilepresenceinsoilbody_idsoilprofile ON derivedprofilepresenceinsoilbody(idsoilprofile);
CREATE INDEX IF NOT EXISTS idx_isbasedonobservedsoilprofile_idsoilderivedobject ON isbasedonobservedsoilprofile(idsoilderivedobject);
CREATE INDEX IF NOT EXISTS idx_isbasedonobservedsoilprofile_idsoilprofile  ON isbasedonobservedsoilprofile(idsoilprofile);
CREATE INDEX IF NOT EXISTS idx_isbasedonsoilbody_idsoilderivedobject       ON isbasedonsoilbody(idsoilderivedobject);
CREATE INDEX IF NOT EXISTS idx_isbasedonsoilbody_idsoilbody                ON isbasedonsoilbody(idsoilbody);
CREATE INDEX IF NOT EXISTS idx_isbasedonsoilderivedobject_base_id          ON isbasedonsoilderivedobject(base_id);
CREATE INDEX IF NOT EXISTS idx_isbasedonsoilderivedobject_related_id       ON isbasedonsoilderivedobject(related_id);
CREATE INDEX IF NOT EXISTS idx_profileelement_ispartof                     ON profileelement(ispartof);
CREATE INDEX IF NOT EXISTS idx_particlesizefractiontype_idprofileelement   ON particlesizefractiontype(idprofileelement);
CREATE INDEX IF NOT EXISTS idx_faohorizonnotationtype_idprofileelement     ON faohorizonnotationtype(idprofileelement);
CREATE INDEX IF NOT EXISTS idx_otherhorizon_profileelement_idprofileelement ON otherhorizon_profileelement(idprofileelement);
CREATE INDEX IF NOT EXISTS idx_otherhorizon_profileelement_idotherhorizonnotationtype ON otherhorizon_profileelement(idotherhorizonnotationtype);
CREATE INDEX IF NOT EXISTS idx_wrbqualifiergroup_profile_idsoilprofile     ON wrbqualifiergroup_profile(idsoilprofile);
CREATE INDEX IF NOT EXISTS idx_wrbqualifiergroup_profile_idwrbqualifiergrouptype ON wrbqualifiergroup_profile(idwrbqualifiergrouptype);
CREATE INDEX IF NOT EXISTS idx_feature_feature_soilsite                    ON feature(feature_soilsite);
CREATE INDEX IF NOT EXISTS idx_feature_feature_soilprofile                 ON feature(feature_soilprofile);
CREATE INDEX IF NOT EXISTS idx_feature_feature_profileelement              ON feature(feature_profileelement);
CREATE INDEX IF NOT EXISTS idx_feature_feature_soilderivedobject           ON feature(feature_soilderivedobject);
CREATE INDEX IF NOT EXISTS idx_feature_idfeaturetype                       ON feature(idfeaturetype);
CREATE INDEX IF NOT EXISTS idx_datastream_idfeature                        ON datastream(idfeature);
--CREATE INDEX IF NOT EXISTS idx_datastream_thing_id                         ON datastream(thing_id);
--CREATE INDEX IF NOT EXISTS idx_datastream_sensor_id                        ON datastream(sensor_id);
--CREATE INDEX IF NOT EXISTS idx_datastream_observedproperty_id              ON datastream(observedproperty_id);

CREATE INDEX IF NOT EXISTS idx_isderivedfrom_base_related                   ON isderivedfrom(base_id, related_id);
CREATE INDEX IF NOT EXISTS idx_derivedprofilepresenceinsoilbody_pair        ON derivedprofilepresenceinsoilbody(idsoilbody, idsoilprofile);
CREATE INDEX IF NOT EXISTS idx_isbasedonobservedsoilprofile_pair            ON isbasedonobservedsoilprofile(idsoilderivedobject, idsoilprofile);
CREATE INDEX IF NOT EXISTS idx_isbasedonsoilbody_pair                        ON isbasedonsoilbody(idsoilderivedobject, idsoilbody);
CREATE INDEX IF NOT EXISTS idx_isbasedonsoilderivedobject_pair               ON isbasedonsoilderivedobject(base_id, related_id);
CREATE INDEX IF NOT EXISTS idx_otherhorizon_profileelement_pair              ON otherhorizon_profileelement(idprofileelement, idotherhorizonnotationtype);
CREATE INDEX IF NOT EXISTS idx_wrbqualifiergroup_profile_pair                ON wrbqualifiergroup_profile(idsoilprofile, idwrbqualifiergrouptype);
-- Se interroghi spesso per più chiavi in feature/datastream, valuta anche:
-- CREATE INDEX IF NOT EXISTS idx_feature_allrefs                               ON feature(feature_soilsite, feature_soilprofile, feature_profileelement, feature_soilderivedobject, idfeaturetype);
-- CREATE INDEX IF NOT EXISTS idx_datastream_allrefs                            ON datastream(idfeature, thing_id, sensor_id, observedproperty_id);

CREATE INDEX IF NOT EXISTS idx_codelist_id                 ON codelist(id);
CREATE INDEX IF NOT EXISTS idx_codelist_collection         ON codelist(collection);
CREATE INDEX IF NOT EXISTS idx_codelist_featuretype        ON codelist(featuretype);
CREATE INDEX IF NOT EXISTS idx_codelist_phenomenon         ON codelist(phenomenon);
CREATE INDEX IF NOT EXISTS idx_codelist_ft_ph              ON codelist(featuretype_phenomenon);
