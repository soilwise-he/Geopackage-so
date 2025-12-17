---
-- title: "Howto: produce a GeoPackage template for INSPIRE Soil data"
-- date: 02/12/2025
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
    guid TEXT UNIQUE,
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
WHEN (NEW.guid IS NULL)
BEGIN
   UPDATE soilsite SET guid = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER soilsiteguidupdate
AFTER UPDATE OF guid ON soilsite
BEGIN
    SELECT CASE
        WHEN NEW.guid != OLD.guid THEN
            RAISE (ABORT, 'Cannot update guid column.')
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
    guid TEXT UNIQUE,
    soilplotlocation POINT NOT NULL, 
    inspireid_localid TEXT,
    inspireid_namespace TEXT,
    inspireid_versionid TEXT,
    soilplottype TEXT NOT NULL,  -- Codelist soilplottypevalue
    beginlifespanversion DATETIME default (strftime('%Y-%m-%dT%H:%M:%fZ', 'now')) not null,
    endlifespanversion DATETIME,
    locatedon TEXT,
    FOREIGN KEY (locatedon)
      REFERENCES soilsite(guid)
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
WHEN (NEW.guid IS NULL)
BEGIN
   UPDATE soilplot SET guid = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER soilplotguidupdate
AFTER UPDATE OF guid ON soilplot
BEGIN
    SELECT CASE
        WHEN NEW.guid != OLD.guid THEN
            RAISE (ABORT, 'Cannot update guid column.')
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
    guid TEXT UNIQUE,
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
      REFERENCES soilplot(guid)
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
WHEN (NEW.guid IS NULL)
BEGIN
   UPDATE soilprofile SET guid = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER soilprofileguidupdate
AFTER UPDATE OF guid ON soilprofile
BEGIN
    SELECT CASE
        WHEN NEW.guid != OLD.guid THEN
            RAISE (ABORT, 'Cannot update guid column.')
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
    guid TEXT UNIQUE,
    othersoilname_type TEXT NOT NULL, --Codelist othersoilnametypevalue
    othersoilname_class TEXT,
    isoriginalclassification  BOOLEAN  DEFAULT 0 NOT NULL,
    othersoilname TEXT,
    FOREIGN KEY (othersoilname)
      REFERENCES soilprofile(guid)
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
CREATE TRIGGER othersoilnametypeguid
AFTER INSERT ON othersoilnametype
FOR EACH ROW
WHEN (NEW.guid IS NULL)
BEGIN
   UPDATE othersoilnametype SET guid = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER othersoilnametypeguidupdate
AFTER UPDATE OF guid ON othersoilnametype
BEGIN
    SELECT CASE
        WHEN NEW.guid != OLD.guid THEN
            RAISE (ABORT, 'Cannot update guid column.')
    END;
END;

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
  guid_base TEXT NOT NULL, -- Derived Profile
  guid_related TEXT NOT NULL, -- Observed Profile
  CONSTRAINT unicrelationidf UNIQUE (guid_base, guid_related),
  FOREIGN KEY (guid_base) REFERENCES soilprofile (guid) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (guid_related) REFERENCES soilprofile (guid) ON DELETE CASCADE ON UPDATE CASCADE
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
    CASE WHEN NEW.guid_base NOT IN (SELECT guid FROM soilprofile WHERE isderived = 1)
    THEN RAISE(ABORT, 'Table isderivedfrom:  Attention, the value of the "guid_base" field in the "isderivedfrom" table cannot be inserted because profile is not of type derived')
    END;                  
END;

CREATE TRIGGER u_checkisderived
BEFORE UPDATE ON isderivedfrom
BEGIN
  SELECT
    CASE WHEN NEW.guid_base NOT IN (SELECT guid FROM soilprofile WHERE isderived = 1)
    THEN RAISE(ABORT, 'Table isderivedfrom:  Attention, the value of the "guid_base" field in the "isderivedfrom" table cannot be inserted because profile is not of type derived')
    END;
END;
--
 

CREATE TRIGGER i_checkisobserved
BEFORE INSERT ON isderivedfrom
BEGIN
  SELECT
    CASE WHEN NEW.guid_related NOT IN (SELECT guid FROM soilprofile WHERE isderived = 0)
    THEN RAISE(ABORT, 'Table isderivedfrom:  Attention, the value of the "guid_related" field in the "isderivedfrom" table cannot be inserted because profile is not of type observed')
    END;                  
END;

CREATE TRIGGER u_checkisobserved
BEFORE UPDATE ON isderivedfrom
BEGIN
  SELECT
    CASE WHEN NEW.guid_related NOT IN (SELECT guid FROM soilprofile WHERE isderived = 0)
    THEN RAISE(ABORT, 'Table isderivedfrom:  Attention, the value of the "guid_related" field in the "isderivedfrom" table cannot be inserted because profile is not of type observed')
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
    guid TEXT UNIQUE,
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
WHEN (NEW.guid IS NULL)
BEGIN
   UPDATE soilbody SET guid = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER soilbodyguidupdate
AFTER UPDATE OF guid ON soilbody
BEGIN
    SELECT CASE
        WHEN NEW.guid != OLD.guid THEN
            RAISE (ABORT, 'Cannot update guid column.')
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
    guid TEXT UNIQUE,
    geom MULTIPOLYGON NOT NULL, 
    guid_soilbody TEXT NOT NULL,
     FOREIGN KEY (guid_soilbody)
      REFERENCES soilbody(guid)
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

-- Trigger soilbody_geom ---------------------------------------------------------------------------------------
CREATE TRIGGER soilbody_geomguid
AFTER INSERT ON soilbody_geom
FOR EACH ROW
WHEN (NEW.guid IS NULL)
BEGIN
   UPDATE soilbody_geom SET guid = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER soilbody_geomguidupdate
AFTER UPDATE OF guid ON soilbody_geom
BEGIN
    SELECT CASE
        WHEN NEW.guid != OLD.guid THEN
            RAISE (ABORT, 'Cannot update guid column.')
    END;
END;


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
  guid_soilbody TEXT NOT NULL,
  guid_soilprofile TEXT NOT NULL,
  lowervalue REAL,
  uppervalue REAL,
  CONSTRAINT unicrelationdpsb UNIQUE (guid_soilbody, guid_soilprofile),
  FOREIGN KEY (guid_soilbody) REFERENCES soilbody (guid) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (guid_soilprofile) REFERENCES soilprofile (guid) ON DELETE CASCADE ON UPDATE CASCADE
  
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
WHEN (SELECT Round(SUM(lowervalue),2) FROM derivedprofilepresenceinsoilbody WHERE guid_soilbody = NEW.guid_soilbody) + Round(NEW.lowervalue,2) > 100.00
BEGIN
    SELECT RAISE(ABORT, 'Table derivedprofilepresenceinsoilbody: sum of lowervalue exceeds 100 for the same guid_soilbody');
END;

CREATE TRIGGER u_cecklowervaluesum
BEFORE UPDATE ON derivedprofilepresenceinsoilbody
FOR EACH ROW
WHEN (SELECT Round(SUM(lowervalue),2) FROM derivedprofilepresenceinsoilbody WHERE guid_soilbody = NEW.guid_soilbody) - Round(OLD.lowervalue,2) + Round(NEW.lowervalue,2) > 100.00
BEGIN
    SELECT RAISE(ABORT, 'Table derivedprofilepresenceinsoilbody: sum of lowervalue exceeds 100 for the same guid_soilbody');
END;
--
 

CREATE TRIGGER "i_checkisderived_soilbody"
BEFORE INSERT ON derivedprofilepresenceinsoilbody
BEGIN
  SELECT
    CASE WHEN NEW.guid_soilprofile NOT IN (SELECT guid FROM soilprofile WHERE isderived = 1)
    THEN RAISE(ABORT, 'Table derivedprofilepresenceinsoilbody:  Attention, the value of the "guid_soilprofile" field  cannot be inserted because profile is not of type derived')
    END;
END;

CREATE TRIGGER  u_checkisderived_soilbody
BEFORE UPDATE ON derivedprofilepresenceinsoilbody
BEGIN
  SELECT
    CASE WHEN NEW.guid_soilprofile NOT IN (SELECT guid FROM soilprofile WHERE isderived = 1)
    THEN RAISE(ABORT, 'Table derivedprofilepresenceinsoilbody:  Attention, the value of the "guid_soilprofile" field  cannot be inserted because profile is not of type derived')
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
    guid TEXT UNIQUE,
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
WHEN (NEW.guid IS NULL)
BEGIN
   UPDATE soilderivedobject SET guid = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER soilderivedobjectguidupdate
AFTER UPDATE OF guid ON soilderivedobject
BEGIN
    SELECT CASE
        WHEN NEW.guid != OLD.guid THEN
            RAISE (ABORT, 'Cannot update guid column.')
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
  guid_soilderivedobject TEXT NOT NULL,
  guid_soilprofile TEXT NOT NULL, --guid_soilprofile
  CONSTRAINT unicrelationibosp UNIQUE (guid_soilderivedobject, guid_soilprofile),
  FOREIGN KEY (guid_soilderivedobject) REFERENCES soilderivedobject (guid) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (guid_soilprofile) REFERENCES soilprofile (guid) ON DELETE CASCADE ON UPDATE CASCADE
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
    CASE WHEN NEW.guid_soilprofile NOT IN (SELECT guid FROM soilprofile WHERE isderived = 0)
    THEN RAISE(ABORT, 'Table isbasedonobservedsoilprofile :  Attention, the value of the "guid_soilprofile" field  cannot be inserted because profile is not of type observed')
    END;                  
END;

CREATE TRIGGER u_checkisobserved_dobj
BEFORE UPDATE ON isbasedonobservedsoilprofile 
BEGIN
  SELECT
    CASE WHEN NEW.guid_soilprofile NOT IN (SELECT guid FROM soilprofile WHERE isderived = 0)
    THEN RAISE(ABORT, 'Table isbasedonobservedsoilprofile :  Attention, the value of the "guid_soilprofile" field  cannot be inserted because profile is not of type observed')
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
  guid_soilderivedobject TEXT NOT NULL,
  guid_soilbody TEXT NOT NULL,
  CONSTRAINT unicrelationibosb UNIQUE (guid_soilderivedobject, guid_soilbody),
  FOREIGN KEY (guid_soilderivedobject) REFERENCES soilderivedobject (guid) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (guid_soilbody) REFERENCES soilbody (guid)  ON DELETE CASCADE ON UPDATE CASCADE
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
  guid_base TEXT NOT NULL,
  guid_related TEXT NOT NULL,
  CONSTRAINT unicrelationibosdo UNIQUE (guid_base, guid_related),
  FOREIGN KEY (guid_base) REFERENCES soilderivedobject (guid)  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (guid_related) REFERENCES soilderivedobject (guid)  ON DELETE CASCADE ON UPDATE CASCADE
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
    guid TEXT UNIQUE,
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
      REFERENCES soilprofile(guid)
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
WHEN (NEW.guid IS NULL)
BEGIN
   UPDATE profileelement SET guid = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER profileelementguidupdate
AFTER UPDATE OF guid ON profileelement
BEGIN
    SELECT CASE
        WHEN NEW.guid != OLD.guid THEN
            RAISE (ABORT, 'Cannot update guid column.')
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
    guid TEXT UNIQUE,
    faohorizondiscontinuity           INTEGER, 
    faohorizonmaster_1                TEXT NOT NULL, -- Codelist faohorizonmastervalue
    faohorizonmaster_2                TEXT, -- Codelist faohorizonmastervalue
    faohorizonsubordinate_1           TEXT, -- Codelist faohorizonsubordinatevalue
    faohorizonsubordinate_2           TEXT, -- Codelist faohorizonsubordinatevalue
    faohorizonsubordinate_3           TEXT, -- Codelist faohorizonsubordinatevalue
    faohorizonvertical                 INTEGER,
    faoprime                          TEXT  NOT NULL,  -- Codelist faoprimevalue
    isoriginalclassification          BOOLEAN  DEFAULT 0 NOT NULL,
    guid_profileelement                  TEXT UNIQUE, 
    FOREIGN KEY (guid_profileelement) 
      REFERENCES profileelement(guid)  ON DELETE CASCADE ON UPDATE CASCADE
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

CREATE TRIGGER faohorizonnotationtypeguid
AFTER INSERT ON faohorizonnotationtype
FOR EACH ROW
WHEN (NEW.guid IS NULL)
BEGIN
   UPDATE faohorizonnotationtype SET guid = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER faohorizonnotationtypeguidupdate
AFTER UPDATE OF guid ON faohorizonnotationtype
BEGIN
    SELECT CASE
        WHEN NEW.guid != OLD.guid THEN
            RAISE (ABORT, 'Cannot update guid column.')
    END;
END;

CREATE TRIGGER i_checkfaoprofileelementtype
BEFORE INSERT ON faohorizonnotationtype
FOR EACH ROW
BEGIN
    SELECT 
        CASE 
            WHEN (SELECT profileelementtype FROM profileelement WHERE profileelement.guid = NEW.guid_profileelement) = 1
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
            WHEN (SELECT profileelementtype FROM profileelement WHERE profileelement.guid = NEW.guid_profileelement) = 1
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
    guid TEXT UNIQUE,
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
WHEN (NEW.guid IS NULL)
BEGIN
   UPDATE otherhorizonnotationtype SET guid = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER otherhorizonnotationtypeguidupdate
AFTER UPDATE OF guid ON otherhorizonnotationtype
BEGIN
    SELECT CASE
        WHEN NEW.guid != OLD.guid THEN
            RAISE (ABORT, 'Cannot update guid column.')
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
  guid_profileelement TEXT NOT NULL,
  guid_otherhorizonnotationtype TEXT NOT NULL,
  CONSTRAINT unicrelationprooth UNIQUE (guid_profileelement, guid_otherhorizonnotationtype),
  FOREIGN KEY (guid_profileelement) REFERENCES profileelement (guid) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (guid_otherhorizonnotationtype) REFERENCES otherhorizonnotationtype (guid)  ON DELETE CASCADE ON UPDATE CASCADE
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
    SELECT profileelementtype FROM profileelement WHERE guid = NEW.guid_profileelement
    ) = 1
BEGIN
    SELECT RAISE(ABORT, 'Table otherhorizon_profileelement: The associated profileelement must have profileelementtype = 0 (HORIZON)');
END;

CREATE TRIGGER   u_ceckothprofileelementtype
BEFORE UPDATE ON otherhorizon_profileelement
FOR EACH ROW
WHEN  (
    SELECT profileelementtype FROM profileelement WHERE guid = NEW.guid_profileelement
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
    guid TEXT UNIQUE,
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
WHEN (NEW.guid IS NULL)
BEGIN
   UPDATE wrbqualifiergrouptype SET guid = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER wrbqualifiergrouptypeguidupdate
AFTER UPDATE OF guid ON wrbqualifiergrouptype
BEGIN
    SELECT CASE
        WHEN NEW.guid != OLD.guid THEN
            RAISE (ABORT, 'Cannot update guid column.')
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
  guid_soilprofile TEXT NOT NULL,
  guid_wrbqualifiergrouptype TEXT NOT NULL,
  qualifierposition      INTEGER NOT NULL,
  CONSTRAINT unicrelationspwbr UNIQUE (guid_soilprofile, guid_wrbqualifiergrouptype),
  FOREIGN KEY (guid_soilprofile) REFERENCES soilprofile (guid) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (guid_wrbqualifiergrouptype) REFERENCES wrbqualifiergrouptype (guid)  ON DELETE CASCADE ON UPDATE CASCADE
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
    WHERE (SELECT wrbversion FROM soilprofile WHERE guid = NEW.guid_soilprofile) <> 
          (SELECT wrbversion FROM wrbqualifiergrouptype WHERE guid = NEW.guid_wrbqualifiergrouptype);
END;


CREATE TRIGGER u_check_wrbversion_match
BEFORE UPDATE ON wrbqualifiergroup_profile
FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'Mismatch in wrbversion values.')
    WHERE (SELECT wrbversion FROM soilprofile WHERE guid = NEW.guid_soilprofile) <> 
          (SELECT wrbversion FROM wrbqualifiergrouptype WHERE guid = NEW.guid_wrbqualifiergrouptype);
END;
--

CREATE TRIGGER i_check_qualifier_position_unique
BEFORE INSERT ON wrbqualifiergroup_profile
FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'qualifierposition must be unique for each qualifierplace within the same soilprofile')
    FROM wrbqualifiergroup_profile
    JOIN wrbqualifiergrouptype ON wrbqualifiergroup_profile.guid_wrbqualifiergrouptype = wrbqualifiergrouptype.guid
    WHERE wrbqualifiergroup_profile.guid_soilprofile = NEW.guid_soilprofile
      AND wrbqualifiergroup_profile.qualifierposition = NEW.qualifierposition
      AND wrbqualifiergrouptype.qualifierplace = (SELECT qualifierplace
                                                  FROM wrbqualifiergrouptype
                                                  WHERE guid = NEW.guid_wrbqualifiergrouptype)
      AND wrbqualifiergroup_profile.id != NEW.id;
END;


CREATE TRIGGER u_check_qualifier_position_unique
BEFORE UPDATE ON wrbqualifiergroup_profile
FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'qualifierposition must be unique for each qualifierplace within the same soilprofile')
    FROM wrbqualifiergroup_profile
    JOIN wrbqualifiergrouptype ON wrbqualifiergroup_profile.guid_wrbqualifiergrouptype = wrbqualifiergrouptype.guid
    WHERE wrbqualifiergroup_profile.guid_soilprofile = NEW.guid_soilprofile
      AND wrbqualifiergroup_profile.qualifierposition = NEW.qualifierposition
      AND wrbqualifiergrouptype.qualifierplace = (SELECT qualifierplace
                                                  FROM wrbqualifiergrouptype
                                                  WHERE guid = NEW.guid_wrbqualifiergrouptype)
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
    guid TEXT UNIQUE,
    name text NOT NULL, 
    definition TEXT,
    description TEXT,
    --
    type TEXT NOT NULL, 
    codespace TEXT,
    code_unitofmeasure TEXT,
    value_min REAL,
    value_max REAL,
    --
    observedarea POLYGON,
    phenomenontime_start DATETIME, 
    phenomenontime_end DATETIME,
    resulttime_start DATETIME,
    resulttime_end DATETIME,
    properties TEXT,


    -- FK block
    --idfeature INTEGER,  -- It is not clear whether the presence of at least one between UltimateFeatureOfInterest and ProximateFeatureOfInterest is mandatory.
    guid_thing TEXT NOT NULL,
    guid_sensor TEXT NOT NULL,
    guid_observedproperty TEXT NOT NULL,
    guid_observingprocedure TEXT,
    
    -- FK FOI block
    guid_soilsite TEXT,
    guid_soilprofile TEXT,
    guid_profileelement TEXT,
    guid_soilderivedobject TEXT,

    -- FK Feature Type
    --idfeaturetype INTEGER,

    -- Only one among Soil Site, Soil Profile, Profile Element, and Soil Derived Object can be populated.
    -- In this case, there can be none or only one occurrence; if we want to make it mandatory, that is, require that at least one exists, we must write
    -- (guid_soilderivedobject IS NOT NULL) = 1
    CHECK (
        ((guid_soilsite IS NOT NULL) +
        (guid_soilprofile IS NOT NULL) +
        (guid_profileelement IS NOT NULL) +
        (guid_soilderivedobject IS NOT NULL)) IN (0, 1)
    ),

    --CONSTRAINT chk_phenomenontime
    CHECK (
        (phenomenontime_start IS NULL AND phenomenontime_end IS NULL)
        OR
        (
            phenomenontime_start IS NOT NULL
            AND phenomenontime_end IS NOT NULL
            AND phenomenontime_end >= phenomenontime_start
        )
    ),

    --CONSTRAINT chk_resulttime
    CHECK (
        (resulttime_start IS NULL AND resulttime_end IS NULL)
        OR
        (
            resulttime_start IS NOT NULL
            AND resulttime_end IS NOT NULL
            AND resulttime_end > resulttime_start
        )
    ),

 -- Allow only the two values 'Quantity' and 'Category' for 'type'.
    --CONSTRAINT chk_type_values    
    CHECK (type IN (
            'Quantity', 
            'Category',
            'Boolean',
            'Count',
            'Text')
        ),

    --CONSTRAINT chk_type_combos
    CHECK (
        (
            type = 'Quantity'
            AND code_unitofmeasure    IS NOT NULL
            AND codespace IS NULL
        )
        OR
        (
            type = 'Category'
            AND code_unitofmeasure     IS NULL
            AND codespace IS NOT NULL
            AND value_min IS NULL
            AND value_max IS NULL
        )
		 OR
        (
            type = 'Boolean'
            AND code_unitofmeasure     IS NULL
            AND codespace IS NULL
            AND value_min IS NULL
            AND value_max IS NULL
        )
		 OR
        (
            type = 'Count'
            AND code_unitofmeasure     IS NULL
            AND codespace IS NULL
        )
         OR
        (
            type = 'Text'
            AND code_unitofmeasure     IS NULL
            AND codespace IS NULL
            AND value_min IS NULL
            AND value_max IS NULL
        )
    ),

    --CONSTRAINT chk_minmax_order
    CHECK (
        value_min IS NULL
        OR value_max IS NULL
        OR value_max > value_min
    ),

    -- Validate that column `definition` is a well-formed URI
    -- URL with http/https/ftp scheme and a non-empty authority
    CHECK (
        definition IS NULL OR (
            typeof(definition) = 'text'
            AND trim(definition) = definition          -- no leading or trailing spaces
            AND length(definition) > 0
            -- no whitespace characters allowed
            AND instr(definition, ' ') = 0
            AND instr(definition, char(9)) = 0         -- TAB
            AND instr(definition, char(10)) = 0        -- LF
            AND instr(definition, char(13)) = 0        -- CR

            -- scheme: case-insensitive prefix check
            AND (
            lower(substr(definition, 1, 7)) = 'http://'
            OR lower(substr(definition, 1, 8)) = 'https://'
            OR lower(substr(definition, 1, 6)) = 'ftp://'
            )

            -- must contain "://" and at least one character in the authority (no "http:///...")
            AND instr(definition, '://') > 0
            AND substr(definition, instr(definition, '://') + 3, 1) <> '/'

            -- extract the authority (up to the first '/' or end of string) and ensure it does not end with '.'
            AND substr(
                CASE
                    WHEN instr(substr(definition, instr(definition,'://')+3), '/') > 0
                    THEN substr(
                        substr(definition, instr(definition,'://')+3),
                        1,
                        instr(substr(definition, instr(definition,'://')+3), '/') - 1
                        )
                    ELSE substr(definition, instr(definition,'://')+3)
                END,
                -1, 1
                ) <> '.'
            )
        ),

    -- Validate that column `codespace` is a well-formed URI
    -- URL with http/https/ftp scheme and a non-empty authority
    CHECK (
        codespace IS NULL OR (
            typeof(codespace) = 'text'
            AND trim(codespace) = codespace          -- no leading or trailing spaces
            AND length(codespace) > 0
            -- no whitespace characters allowed
            AND instr(codespace, ' ') = 0
            AND instr(codespace, char(9)) = 0         -- TAB
            AND instr(codespace, char(10)) = 0        -- LF
            AND instr(codespace, char(13)) = 0        -- CR

            -- scheme: case-insensitive prefix check
            AND (
            lower(substr(codespace, 1, 7)) = 'http://'
            OR lower(substr(codespace, 1, 8)) = 'https://'
            OR lower(substr(codespace, 1, 6)) = 'ftp://'
            )

            -- must contain "://" and at least one character in the authority (no "http:///...")
            AND instr(codespace, '://') > 0
            AND substr(codespace, instr(codespace, '://') + 3, 1) <> '/'

            -- extract the authority (up to the first '/' or end of string) and ensure it does not end with '.'
            AND substr(
                CASE
                    WHEN instr(substr(codespace, instr(codespace,'://')+3), '/') > 0
                    THEN substr(
                        substr(codespace, instr(codespace,'://')+3),
                        1,
                        instr(substr(codespace, instr(codespace,'://')+3), '/') - 1
                        )
                    ELSE substr(codespace, instr(codespace,'://')+3)
                END,
                -1, 1
                ) <> '.'
            )
        ),

    
    FOREIGN KEY (code_unitofmeasure) REFERENCES unitofmeasure (code) ON DELETE CASCADE   ON UPDATE CASCADE,
    --FOREIGN KEY (idfeature) REFERENCES feature (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (guid_thing) REFERENCES thing (guid) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (guid_sensor) REFERENCES sensor (guid) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (guid_observedproperty) REFERENCES observedproperty (guid) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (guid_observingprocedure) REFERENCES observingprocedure (guid) ON DELETE SET NULL ON UPDATE CASCADE,

    FOREIGN KEY (guid_soilsite) REFERENCES soilsite (guid) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (guid_soilprofile) REFERENCES soilprofile (guid) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (guid_profileelement) REFERENCES profileelement (guid) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (guid_soilderivedobject) REFERENCES soilderivedobject (guid) ON DELETE CASCADE ON UPDATE CASCADE
    --FOREIGN KEY (idfeaturetype) REFERENCES featuretype (id) ON DELETE CASCADE ON UPDATE CASCADE

    
);


-- JSON mime type ---------------------------------------------------------------------------------------
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'properties', 'Properties', 'Properties', 'A JSON Object containing user-annotated properties as key-value pairs.', 'application/json', null);


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
  'POLYGON', -- geometry type
  3035, -- EPSG spatial reference system code
  0, -- if the geometry has a Z coordinate (0 = no, 1 = yes, 2 = optional)
  0 -- if the geometry has a M coordinate (0 = no, 1 = yes, 2 = optional)
);

-- Trigger datastream ---------------------------------------------------------------------------------------
CREATE TRIGGER datastreamguid
AFTER INSERT ON datastream
FOR EACH ROW
WHEN (NEW.guid IS NULL)
BEGIN
   UPDATE datastream SET guid = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER datastreamguidupdate
AFTER UPDATE OF guid ON datastream
BEGIN
    SELECT CASE
        WHEN NEW.guid != OLD.guid THEN
            RAISE (ABORT, 'Cannot update guid column.')
    END;
END;


-- Enforce (guid_observingprocedure, guid_observedproperty) membership on INSERT
CREATE TRIGGER datastream_bi_check_proc_prop_pair
BEFORE INSERT ON datastream
FOR EACH ROW
WHEN NEW.guid_observingprocedure IS NOT NULL
AND NOT EXISTS (
    SELECT 1
    FROM obsprocedure_obsdproperty m
    WHERE m.guid_observingprocedure = NEW.guid_observingprocedure
      AND m.guid_observedproperty  = NEW.guid_observedproperty
)
BEGIN
    SELECT RAISE(
        ABORT,
        'Insert denied: the (guid_observingprocedure, guid_observedproperty) pair is not registered in obsprocedure_obsdproperty.'
    );
END;

-- Enforce (guid_observingprocedure, guid_observedproperty) membership on UPDATE
CREATE TRIGGER datastream_bu_check_proc_prop_pair
BEFORE UPDATE OF guid_observingprocedure, guid_observedproperty ON datastream
FOR EACH ROW
WHEN NEW.guid_observingprocedure IS NOT NULL
AND NOT EXISTS (
    SELECT 1
    FROM obsprocedure_obsdproperty m
    WHERE m.guid_observingprocedure = NEW.guid_observingprocedure
      AND m.guid_observedproperty  = NEW.guid_observedproperty
)
BEGIN
    SELECT RAISE(
        ABORT,
        'Update denied: the (guid_observingprocedure, guid_observedproperty) pair is not registered in obsprocedure_obsdproperty.'
    );
END;



CREATE TRIGGER i_codespace
BEFORE INSERT ON datastream
FOR EACH ROW
WHEN NEW.codespace IS NOT NULL
     AND NEW.codespace NOT IN (
         SELECT id FROM codelist WHERE collection = 'Category'
     )
BEGIN
    SELECT RAISE(ABORT, 'Table datastream: Invalid value for codespace. Must be present in id of Category codelist.');
END;


CREATE TRIGGER u_codespace
BEFORE UPDATE ON datastream
FOR EACH ROW
WHEN NEW.codespace IS NOT NULL
     AND NEW.codespace NOT IN (
         SELECT id FROM codelist WHERE collection = 'Category'
     )
BEGIN
    SELECT RAISE(ABORT, 'Table datastream: Invalid value for codespace. Must be present in id of Category codelist.');
END;

/* 
██    ██ ███    ██ ██ ████████  ██████  ███████ ███    ███ ███████  █████  ███████ ██    ██ ██████  ███████ 
██    ██ ████   ██ ██    ██    ██    ██ ██      ████  ████ ██      ██   ██ ██      ██    ██ ██   ██ ██      
██    ██ ██ ██  ██ ██    ██    ██    ██ █████   ██ ████ ██ █████   ███████ ███████ ██    ██ ██████  █████   
██    ██ ██  ██ ██ ██    ██    ██    ██ ██      ██  ██  ██ ██      ██   ██      ██ ██    ██ ██   ██ ██      
 ██████  ██   ████ ██    ██     ██████  ██      ██      ██ ███████ ██   ██ ███████  ██████  ██   ██ ███████ 
 */


-- Table  unitofmeasure ---------------------------------------------------------------------------------------
CREATE TABLE unitofmeasure 
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    code TEXT UNIQUE ,
    label TEXT,
    symbol TEXT,
    qudt_unit TEXT,
    conversionoffset REAL, 
    conversionmultiplier REAL
);

-- Contents unitofmeasure ---------------------------------------------------------------------------------------
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
  'unitofmeasure', -- table name
  'attributes', -- data type
  't_uom', -- unique table identifier
  'unitofmeasure  Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL,  
  NULL,
  NULL,
  NULL,
  NULL  -- EPSG spatial reference system code
);

-- Trigger unitofmeasure ---------------------------------------------------------------------------------------





/*
 ██████  ██████  ███████ ███████ ██████  ██    ██ ███████ ██████  ██████  ██████   ██████  ██████  ███████ ██████  ████████ ██    ██ 
██    ██ ██   ██ ██      ██      ██   ██ ██    ██ ██      ██   ██ ██   ██ ██   ██ ██    ██ ██   ██ ██      ██   ██    ██     ██  ██  
██    ██ ██████  ███████ █████   ██████  ██    ██ █████   ██   ██ ██████  ██████  ██    ██ ██████  █████   ██████     ██      ████   
██    ██ ██   ██      ██ ██      ██   ██  ██  ██  ██      ██   ██ ██      ██   ██ ██    ██ ██      ██      ██   ██    ██       ██    
 ██████  ██████  ███████ ███████ ██   ██   ████   ███████ ██████  ██      ██   ██  ██████  ██      ███████ ██   ██    ██       ██    
*/

-- Table sensor ---------------------------------------------------------------------------------------
CREATE TABLE  observedproperty
(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    guid TEXT UNIQUE,
    name text NOT NULL, 
    definition TEXT NOT NULL,
    description TEXT,
    properties TEXT,
    source TEXT default 'Local' NOT NULL

    -- Validate that column `definition` is a well-formed URI
    -- URL with http/https/ftp scheme and a non-empty authority
    CHECK (
        definition IS NULL OR (
            typeof(definition) = 'text'
            AND trim(definition) = definition          -- no leading or trailing spaces
            AND length(definition) > 0
            -- no whitespace characters allowed
            AND instr(definition, ' ') = 0
            AND instr(definition, char(9)) = 0         -- TAB
            AND instr(definition, char(10)) = 0        -- LF
            AND instr(definition, char(13)) = 0        -- CR

            -- scheme: case-insensitive prefix check
            AND (
            lower(substr(definition, 1, 7)) = 'http://'
            OR lower(substr(definition, 1, 8)) = 'https://'
            OR lower(substr(definition, 1, 6)) = 'ftp://'
            )

            -- must contain "://" and at least one character in the authority (no "http:///...")
            AND instr(definition, '://') > 0
            AND substr(definition, instr(definition, '://') + 3, 1) <> '/'

            -- extract the authority (up to the first '/' or end of string) and ensure it does not end with '.'
            AND substr(
                CASE
                    WHEN instr(substr(definition, instr(definition,'://')+3), '/') > 0
                    THEN substr(
                        substr(definition, instr(definition,'://')+3),
                        1,
                        instr(substr(definition, instr(definition,'://')+3), '/') - 1
                        )
                    ELSE substr(definition, instr(definition,'://')+3)
                END,
                -1, 1
                ) <> '.'
            )
        )

);



-- JSON mime type ---------------------------------------------------------------------------------------
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observedproperty', 'properties', 'Properties', 'Properties', 'A JSON Object containing user-annotated properties as key-value pairs.', 'application/json', null);


-- Contents observedproperty ---------------------------------------------------------------------------------------
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
  'observedproperty', -- table name
  'attributes', -- data type
  't_obsprsta', -- unique table identifier
  'observedproperty Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL,  
  NULL,
  NULL,
  NULL,
  NULL  -- EPSG spatial reference system code
);


-- Trigger observedproperty ---------------------------------------------------------------------------------------
CREATE TRIGGER observedpropertyguid
AFTER INSERT ON observedproperty
FOR EACH ROW
WHEN (NEW.guid IS NULL)
BEGIN
   UPDATE observedproperty SET guid = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER observedpropertyguidupdate
AFTER UPDATE OF guid ON observedproperty
BEGIN
    SELECT CASE
        WHEN NEW.guid != OLD.guid THEN
            RAISE (ABORT, 'Cannot update guid column.')
    END;
END;





/*
███████ ███████ ███    ██ ███████  ██████  ██████  
██      ██      ████   ██ ██      ██    ██ ██   ██ 
███████ █████   ██ ██  ██ ███████ ██    ██ ██████  
     ██ ██      ██  ██ ██      ██ ██    ██ ██   ██ 
███████ ███████ ██   ████ ███████  ██████  ██   ██ 
*/

-- Table sensor ---------------------------------------------------------------------------------------
CREATE TABLE  sensor
(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    guid TEXT UNIQUE,
    name text NOT NULL, 
    definition TEXT,
    description TEXT,
    encodingtype TEXT, -- ValueCode -- codelist encodingTypevalue
    metadata TEXT,
    properties TEXT,

    
    -- Business rule enforced at the table level:
    -- 1) If metadata IS NOT NULL -> encodingType must be 'PDF' or 'HTML'
    -- 2) If metadata IS NULL     -> encodingType must be NULL
    CHECK (
        (metadata IS NOT NULL AND encodingtype IN ('PDF','HTML'))
        OR
        (metadata IS NULL AND encodingtype IS NULL)
    ),

    -- Validate that column `definition` is a well-formed URI
    -- URL with http/https/ftp scheme and a non-empty authority
    CHECK (
        definition IS NULL OR (
            typeof(definition) = 'text'
            AND trim(definition) = definition          -- no leading or trailing spaces
            AND length(definition) > 0
            -- no whitespace characters allowed
            AND instr(definition, ' ') = 0
            AND instr(definition, char(9)) = 0         -- TAB
            AND instr(definition, char(10)) = 0        -- LF
            AND instr(definition, char(13)) = 0        -- CR

            -- scheme: case-insensitive prefix check
            AND (
            lower(substr(definition, 1, 7)) = 'http://'
            OR lower(substr(definition, 1, 8)) = 'https://'
            OR lower(substr(definition, 1, 6)) = 'ftp://'
            )

            -- must contain "://" and at least one character in the authority (no "http:///...")
            AND instr(definition, '://') > 0
            AND substr(definition, instr(definition, '://') + 3, 1) <> '/'

            -- extract the authority (up to the first '/' or end of string) and ensure it does not end with '.'
            AND substr(
                CASE
                    WHEN instr(substr(definition, instr(definition,'://')+3), '/') > 0
                    THEN substr(
                        substr(definition, instr(definition,'://')+3),
                        1,
                        instr(substr(definition, instr(definition,'://')+3), '/') - 1
                        )
                    ELSE substr(definition, instr(definition,'://')+3)
                END,
                -1, 1
                ) <> '.'
            )
        )

);


-- JSON mime type ---------------------------------------------------------------------------------------
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('sensor', 'properties', 'Properties', 'Properties', 'A JSON Object containing user-annotated properties as key-value pairs.', 'application/json', null);

-- Contents sensor ---------------------------------------------------------------------------------------
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
  'sensor', -- table name
  'attributes', -- data type
  't_sen', -- unique table identifier
  'sensor Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL,  
  NULL,
  NULL,
  NULL,
  NULL  -- EPSG spatial reference system code
);

-- Trigger sensor ---------------------------------------------------------------------------------------

CREATE TRIGGER sensorguid
AFTER INSERT ON sensor
FOR EACH ROW
WHEN (NEW.guid IS NULL)
BEGIN
   UPDATE sensor SET guid = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER sensorguidupdate
AFTER UPDATE OF guid ON sensor
BEGIN
    SELECT CASE
        WHEN NEW.guid != OLD.guid THEN
            RAISE (ABORT, 'Cannot update guid column.')
    END;
END;



/*
████████ ██   ██ ██ ███    ██  ██████  
   ██    ██   ██ ██ ████   ██ ██       
   ██    ███████ ██ ██ ██  ██ ██   ███ 
   ██    ██   ██ ██ ██  ██ ██ ██    ██ 
   ██    ██   ██ ██ ██   ████  ██████
*/

-- Table thing ---------------------------------------------------------------------------------------
CREATE TABLE  thing
(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    guid TEXT UNIQUE,
    name text NOT NULL, 
    definition TEXT,
    description TEXT,
    properties TEXT

    -- Validate that column `definition` is a well-formed URI
    -- URL with http/https/ftp scheme and a non-empty authority
    CHECK (
        definition IS NULL OR (
            typeof(definition) = 'text'
            AND trim(definition) = definition          -- no leading or trailing spaces
            AND length(definition) > 0
            -- no whitespace characters allowed
            AND instr(definition, ' ') = 0
            AND instr(definition, char(9)) = 0         -- TAB
            AND instr(definition, char(10)) = 0        -- LF
            AND instr(definition, char(13)) = 0        -- CR

            -- scheme: case-insensitive prefix check
            AND (
            lower(substr(definition, 1, 7)) = 'http://'
            OR lower(substr(definition, 1, 8)) = 'https://'
            OR lower(substr(definition, 1, 6)) = 'ftp://'
            )

            -- must contain "://" and at least one character in the authority (no "http:///...")
            AND instr(definition, '://') > 0
            AND substr(definition, instr(definition, '://') + 3, 1) <> '/'

            -- extract the authority (up to the first '/' or end of string) and ensure it does not end with '.'
            AND substr(
                CASE
                    WHEN instr(substr(definition, instr(definition,'://')+3), '/') > 0
                    THEN substr(
                        substr(definition, instr(definition,'://')+3),
                        1,
                        instr(substr(definition, instr(definition,'://')+3), '/') - 1
                        )
                    ELSE substr(definition, instr(definition,'://')+3)
                END,
                -1, 1
                ) <> '.'
            )
        )

);


-- JSON mime type ---------------------------------------------------------------------------------------
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('thing', 'properties', 'Properties', 'Properties', 'A JSON Object containing user-annotated properties as key-value pairs.', 'application/json', null);

-- Contents thing ---------------------------------------------------------------------------------------
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
  'thing', -- table name
  'attributes', -- data type
  't_thi', -- unique table identifier
  'thing Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL,  
  NULL,
  NULL,
  NULL,
  NULL  -- EPSG spatial reference system code
);


-- Trigger thing ---------------------------------------------------------------------------------------
CREATE TRIGGER thingguid
AFTER INSERT ON thing
FOR EACH ROW
WHEN (NEW.guid IS NULL)
BEGIN
   UPDATE thing SET guid = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER thingguidupdate
AFTER UPDATE OF guid ON thing
BEGIN
    SELECT CASE
        WHEN NEW.guid != OLD.guid THEN
            RAISE (ABORT, 'Cannot update guid column.')
    END;
END;
--





/*
 ██████  ██████  ███████ ███████ ██████  ██    ██  █████  ████████ ██  ██████  ███    ██
██    ██ ██   ██ ██      ██      ██   ██ ██    ██ ██   ██    ██    ██ ██    ██ ████   ██
██    ██ ██████  ███████ █████   ██████  ██    ██ ███████    ██    ██ ██    ██ ██ ██  ██
██    ██ ██   ██      ██ ██      ██   ██  ██  ██  ██   ██    ██    ██ ██    ██ ██  ██ ██
 ██████  ██████  ███████ ███████ ██   ██   ████   ██   ██    ██    ██  ██████  ██   ████  
*/

-- Table observation ---------------------------------------------------------------------------------------
CREATE TABLE  observation
(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    guid TEXT UNIQUE,
    phenomenontime_start DATETIME default (strftime('%Y-%m-%dT%H:%M:%fZ', 'now')) NOT NULL,
    phenomenontime_end DATETIME,
    result_text TEXT ,
    result_real REAL ,
    result_boolean BOOLEAN ,
    resulttime DATETIME,
    validtime_start DATETIME,
    validtime_end DATETIME,
    properties TEXT,
    guid_datastream TEXT NOT NULL,

    UNIQUE (phenomenontime_start, guid_datastream),

    --CONSTRAINT chk_validtime
    CHECK (
        (validtime_start IS NULL AND validtime_end IS NULL)
        OR
        (
            validtime_start IS NOT NULL
            AND validtime_end IS NOT NULL
            AND validtime_end > validtime_start
        )
    ),

    FOREIGN KEY (guid_datastream) REFERENCES datastream(guid) ON DELETE CASCADE ON UPDATE CASCADE
);



-- JSON mime type ---------------------------------------------------------------------------------------
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observation', 'properties', 'Properties', 'Properties', 'A JSON Object containing user-annotated properties as key-value pairs.', 'application/json', null);

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
  'observation', -- table name
  'attributes', -- data type
  'obssta_cod', -- unique table identifier
  'observationt Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL, 
  NULL,
  NULL,
  NULL,
  NULL -- EPSG spatial reference system code
);


-- Trigger observation ---------------------------------------------------------------------------------------
CREATE TRIGGER observationguid
AFTER INSERT ON observation
FOR EACH ROW
WHEN (NEW.guid IS NULL)
BEGIN
   UPDATE observation SET guid = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER observationguidupdate
AFTER UPDATE OF guid ON observation
BEGIN
    SELECT CASE
        WHEN NEW.guid != OLD.guid THEN
            RAISE (ABORT, 'Cannot update guid column.')
    END;
END;


-- Trigger observation + datastream ---------------------------------------------------------------------------------------

-- =========================================================
-- 1) Keep datastream.phenomenontime_* synchronized with
--    its observations:
--    - datastream.phenomenontime_start = MIN(observation.phenomenontime_start)
--    - datastream.phenomenontime_end   = MAX(observation.phenomenontime_end) (NULLs ignored)
--    These AFTER triggers recompute the range on INSERT/UPDATE/DELETE.
-- =========================================================
CREATE TRIGGER observation_ai_recalc_ds_times
AFTER INSERT ON observation
FOR EACH ROW
BEGIN
  -- When a new observation arrives, recompute the phenomenon time range for the
  -- corresponding datastream from all its observations. MIN/MAX naturally ignore NULLs.
  UPDATE datastream
  SET phenomenontime_start = (
        SELECT MIN(phenomenontime_start)
        FROM observation
        WHERE guid_datastream = NEW.guid_datastream
      ),
      phenomenontime_end = (
        SELECT MAX(COALESCE(phenomenontime_end, phenomenontime_start))
        FROM observation
        WHERE guid_datastream = NEW.guid_datastream
      )
  WHERE guid = NEW.guid_datastream;
END;


CREATE TRIGGER observation_au_recalc_ds_times
AFTER UPDATE OF phenomenontime_start, phenomenontime_end, guid_datastream ON observation
FOR EACH ROW
BEGIN
  -- Recompute for the "new" datastream referenced after the update.
  UPDATE datastream
  SET phenomenontime_start = (
        SELECT MIN(phenomenontime_start)
        FROM observation
        WHERE guid_datastream = NEW.guid_datastream
      ),
      phenomenontime_end = (
        SELECT MAX(COALESCE(phenomenontime_end, phenomenontime_start))
        FROM observation
        WHERE guid_datastream = NEW.guid_datastream
      )
  WHERE guid = NEW.guid_datastream;

  -- If the row was moved to a different datastream, also recompute the old one.
  UPDATE datastream
  SET phenomenontime_start = (
        SELECT MIN(phenomenontime_start)
        FROM observation
        WHERE guid_datastream = OLD.guid_datastream
      ),
      phenomenontime_end = (
        SELECT MAX(COALESCE(phenomenontime_end, phenomenontime_start))
        FROM observation
        WHERE guid_datastream = OLD.guid_datastream
      )
  WHERE guid = OLD.guid_datastream
    AND OLD.guid_datastream <> NEW.guid_datastream;
END;


CREATE TRIGGER observation_ad_recalc_ds_times
AFTER DELETE ON observation
FOR EACH ROW
BEGIN
  -- When an observation is removed, recompute from remaining observations.
  UPDATE datastream
  SET phenomenontime_start = (
        SELECT MIN(phenomenontime_start)
        FROM observation
        WHERE guid_datastream = OLD.guid_datastream
      ),
      phenomenontime_end = (
        SELECT MAX(COALESCE(phenomenontime_end, phenomenontime_start))
        FROM observation
        WHERE guid_datastream = OLD.guid_datastream
      )
  WHERE guid = OLD.guid_datastream;
END;


-- =========================================================
-- 2) Datastream-level integrity rules
--    - NEW RULE (general): if both bounds are provided, require value_min ≤ value_max
--    - NEW RULE (Count-specific): if provided, value_min/value_max must be integers
--      (we accept numerically integral values like 3.0).
-- =========================================================

-- General bounds consistency: if both limits exist, min must not exceed max.
CREATE TRIGGER datastream_bi_bounds_consistency
BEFORE INSERT ON datastream
FOR EACH ROW
BEGIN
  SELECT CASE
    WHEN NEW.value_min IS NOT NULL
         AND NEW.value_max IS NOT NULL
         AND NEW.value_min > NEW.value_max
    THEN RAISE(ABORT, 'Datastream bounds: value_min must be less than or equal to value_max when both are provided.')
  END;
END;


CREATE TRIGGER datastream_bu_bounds_consistency
BEFORE UPDATE OF value_min, value_max ON datastream
FOR EACH ROW
BEGIN
  SELECT CASE
    WHEN NEW.value_min IS NOT NULL
         AND NEW.value_max IS NOT NULL
         AND NEW.value_min > NEW.value_max
    THEN RAISE(ABORT, 'Datastream bounds: value_min must be less than or equal to value_max when both are provided.')
  END;
END;

-- Count-specific: if type = 'Count' and bounds are provided, they must be integral in value.
CREATE TRIGGER datastream_bi_count_bounds_are_integers
BEFORE INSERT ON datastream
FOR EACH ROW
BEGIN
  -- For Count, value_min must be an integer in value (3 == CAST(3 AS INTEGER); 3.5 would fail).
  SELECT CASE
    WHEN NEW.type = 'Count'
         AND NEW.value_min IS NOT NULL
         AND NEW.value_min <> CAST(NEW.value_min AS INTEGER)
    THEN RAISE(ABORT, 'Type Count: value_min must be an integer (numerically integral).')
  END;

  -- For Count, value_max must be an integer in value.
  SELECT CASE
    WHEN NEW.type = 'Count'
         AND NEW.value_max IS NOT NULL
         AND NEW.value_max <> CAST(NEW.value_max AS INTEGER)
    THEN RAISE(ABORT, 'Type Count: value_max must be an integer (numerically integral).')
  END;
END;

CREATE TRIGGER datastream_bu_count_bounds_are_integers
BEFORE UPDATE OF type, value_min, value_max ON datastream
FOR EACH ROW
BEGIN
  -- Re-apply the same checks when changing the type or bounds.
  SELECT CASE
    WHEN NEW.type = 'Count'
         AND NEW.value_min IS NOT NULL
         AND NEW.value_min <> CAST(NEW.value_min AS INTEGER)
    THEN RAISE(ABORT, 'Type Count: value_min must be an integer (numerically integral).')
  END;

  SELECT CASE
    WHEN NEW.type = 'Count'
         AND NEW.value_max IS NOT NULL
         AND NEW.value_max <> CAST(NEW.value_max AS INTEGER)
    THEN RAISE(ABORT, 'Type Count: value_max must be an integer (numerically integral).')
  END;
END;


-- =========================================================
-- 3) Observation-level rules by datastream.type
--    This enforces result_* shapes and, for Quantity/Count, the bounds checks (NEW RULE #2).
--    Two BEFORE triggers (INSERT/UPDATE) ensure data is validated prior to write.
--    - Quantity   : result_real NOT NULL; result_text/result_boolean NULL; enforce [min, max] if present
--    - Category   : result_text NOT NULL; others NULL; result_text ∈ codelist.id where codelist.collection = datastream.codespace
--    - Boolean    : result_boolean ∈ {0,1} NOT NULL; others NULL
--    - Count      : result_real NOT NULL & integer; others NULL; enforce [min, max] if present
--    - Text       : result_text NOT NULL; others NULL
-- =========================================================


CREATE TRIGGER observation_bi_type_constraints
BEFORE INSERT ON observation
FOR EACH ROW
BEGIN
  -- ------------------------------
  -- QUANTITY
  -- ------------------------------
  -- Shape: only result_real (NOT NULL); text and boolean must be NULL.
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Quantity'
         AND NOT (NEW.result_real IS NOT NULL
                  AND NEW.result_text IS NULL
                  AND NEW.result_boolean IS NULL)
    THEN RAISE(ABORT, 'Type Quantity: result_real must be NOT NULL; result_text and result_boolean must be NULL.')
  END;

  -- Bounds: if a lower bound exists, value must be >= value_min.
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Quantity'
         AND (SELECT value_min FROM datastream where guid = NEW.guid_datastream) IS NOT NULL
         AND NEW.result_real < (SELECT value_min FROM datastream where guid = NEW.guid_datastream)
    THEN RAISE(ABORT, 'Type Quantity: result_real is below value_min.')
  END;

  -- Bounds: if an upper bound exists, value must be <= value_max.
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Quantity'
         AND (SELECT value_max FROM datastream where guid = NEW.guid_datastream) IS NOT NULL
         AND NEW.result_real > (SELECT value_max FROM datastream where guid = NEW.guid_datastream)
    THEN RAISE(ABORT, 'Type Quantity: result_real exceeds value_max.')
  END;

  -- ------------------------------
  -- CATEGORY
  -- ------------------------------
  -- Shape: only result_text (NOT NULL); real and boolean must be NULL.
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Category'
         AND NOT (NEW.result_text IS NOT NULL
                  AND NEW.result_real IS NULL
                  AND NEW.result_boolean IS NULL)
    THEN RAISE(ABORT, 'Type Category: result_text must be NOT NULL; result_real and result_boolean must be NULL.')
  END;

  -- Membership: result_text must exist as codelist.id within the collection equal to datastream.codespace.
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Category'
         AND NOT EXISTS (
           SELECT 1
           FROM codelist c
           WHERE c.collection = (SELECT codespace FROM datastream where guid = NEW.guid_datastream)
             AND c.id = NEW.result_text
         )
    THEN RAISE(ABORT, 'Type Category: result_text must exist in codelist.id for the collection equal to the datastream codespace.')
  END;

  -- ------------------------------
  -- BOOLEAN
  -- ------------------------------
  -- Shape: only result_boolean (0/1) NOT NULL; text and real must be NULL.
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Boolean'
         AND NOT (NEW.result_boolean IS NOT NULL
                  AND NEW.result_boolean IN (0,1)
                  AND NEW.result_text IS NULL
                  AND NEW.result_real IS NULL)
    THEN RAISE(ABORT, 'Type Boolean: result_boolean must be 0 or 1; result_text and result_real must be NULL.')
  END;

  -- ------------------------------
  -- COUNT
  -- ------------------------------
  -- Shape: only result_real (NOT NULL) and it must be an integer in value; text and boolean must be NULL.
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Count'
         AND NOT (NEW.result_real IS NOT NULL
                  AND NEW.result_text IS NULL
                  AND NEW.result_boolean IS NULL
                  AND NEW.result_real = CAST(NEW.result_real AS INTEGER))
    THEN RAISE(ABORT, 'Type Count: result_real must be an integer; result_text and result_boolean must be NULL.')
  END;

  -- Bounds: if a lower bound exists, value must be >= value_min.
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Count'
         AND (SELECT value_min FROM datastream where guid = NEW.guid_datastream) IS NOT NULL
         AND NEW.result_real < (SELECT value_min FROM datastream where guid = NEW.guid_datastream)
    THEN RAISE(ABORT, 'Type Count: result_real is below value_min.')
  END;

  -- Bounds: if an upper bound exists, value must be <= value_max.
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Count'
         AND (SELECT value_max FROM datastream where guid = NEW.guid_datastream) IS NOT NULL
         AND NEW.result_real > (SELECT value_max FROM datastream where guid = NEW.guid_datastream)
    THEN RAISE(ABORT, 'Type Count: result_real exceeds value_max.')
  END;

  -- ------------------------------
  -- TEXT
  -- ------------------------------
  -- Shape: only result_text (NOT NULL); real and boolean must be NULL.
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Text'
         AND NOT (NEW.result_text IS NOT NULL
                  AND NEW.result_real IS NULL
                  AND NEW.result_boolean IS NULL)
    THEN RAISE(ABORT, 'Type Text: result_text must be NOT NULL; result_real and result_boolean must be NULL.')
  END;
END;


CREATE TRIGGER observation_bu_type_constraints
BEFORE UPDATE OF result_text, result_real, result_boolean, guid_datastream ON observation
FOR EACH ROW
BEGIN
  -- Apply the same rules on UPDATE to protect both changes to result_* fields
  -- and movements across datastreams.

  -- QUANTITY: shape
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Quantity'
         AND NOT (NEW.result_real IS NOT NULL
                  AND NEW.result_text IS NULL
                  AND NEW.result_boolean IS NULL)
    THEN RAISE(ABORT, 'Type Quantity: result_real must be NOT NULL; result_text and result_boolean must be NULL.')
  END;
  -- QUANTITY: bounds
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Quantity'
         AND (SELECT value_min FROM datastream where guid = NEW.guid_datastream) IS NOT NULL
         AND NEW.result_real < (SELECT value_min FROM datastream where guid = NEW.guid_datastream)
    THEN RAISE(ABORT, 'Type Quantity: result_real is below value_min.')
  END;
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Quantity'
         AND (SELECT value_max FROM datastream where guid = NEW.guid_datastream) IS NOT NULL
         AND NEW.result_real > (SELECT value_max FROM datastream where guid = NEW.guid_datastream)
    THEN RAISE(ABORT, 'Type Quantity: result_real exceeds value_max.')
  END;

  -- CATEGORY: shape
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Category'
         AND NOT (NEW.result_text IS NOT NULL
                  AND NEW.result_real IS NULL
                  AND NEW.result_boolean IS NULL)
    THEN RAISE(ABORT, 'Type Category: result_text must be NOT NULL; result_real and result_boolean must be NULL.')
  END;
  -- CATEGORY: membership
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Category'
         AND NOT EXISTS (
           SELECT 1
           FROM codelist c
           WHERE c.collection = (SELECT codespace FROM datastream where guid = NEW.guid_datastream)
             AND c.id = NEW.result_text
         )
    THEN RAISE(ABORT, 'Type Category: result_text must exist in codelist.id for the collection equal to the datastream codespace.')
  END;

  -- BOOLEAN
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Boolean'
         AND NOT (NEW.result_boolean IS NOT NULL
                  AND NEW.result_boolean IN (0,1)
                  AND NEW.result_text IS NULL
                  AND NEW.result_real IS NULL)
    THEN RAISE(ABORT, 'Type Boolean: result_boolean must be 0 or 1; result_text and result_real must be NULL.')
  END;

  -- COUNT: shape
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Count'
         AND NOT (NEW.result_real IS NOT NULL
                  AND NEW.result_text IS NULL
                  AND NEW.result_boolean IS NULL
                  AND NEW.result_real = CAST(NEW.result_real AS INTEGER))
    THEN RAISE(ABORT, 'Type Count: result_real must be an integer; result_text and result_boolean must be NULL.')
  END;
  -- COUNT: bounds
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Count'
         AND (SELECT value_min FROM datastream where guid = NEW.guid_datastream) IS NOT NULL
         AND NEW.result_real < (SELECT value_min FROM datastream where guid = NEW.guid_datastream)
    THEN RAISE(ABORT, 'Type Count: result_real is below value_min.')
  END;
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Count'
         AND (SELECT value_max FROM datastream where guid = NEW.guid_datastream) IS NOT NULL
         AND NEW.result_real > (SELECT value_max FROM datastream where guid = NEW.guid_datastream)
    THEN RAISE(ABORT, 'Type Count: result_real exceeds value_max.')
  END;

  -- TEXT
  SELECT CASE
    WHEN (SELECT type FROM datastream where guid = NEW.guid_datastream) = 'Text'
         AND NOT (NEW.result_text IS NOT NULL
                  AND NEW.result_real IS NULL
                  AND NEW.result_boolean IS NULL)
    THEN RAISE(ABORT, 'Type Text: result_text must be NOT NULL; result_real and result_boolean must be NULL.')
  END;
END;


-- This trigger runs BEFORE updating value_min or value_max on datastream.
-- It prevents tightening the bounds in such a way that existing observations
-- for the same datastream (of type Quantity or Count) would fall outside the new range.
CREATE TRIGGER datastream_bu_bounds_validate_observations
BEFORE UPDATE OF value_min, value_max ON datastream
FOR EACH ROW
BEGIN
  -- Only enforce for numeric series (Quantity or Count).
  -- If a new lower bound is provided, all existing observations must be >= value_min.
  SELECT CASE
    WHEN NEW.type IN ('Quantity', 'Count')
         AND NEW.value_min IS NOT NULL
         AND EXISTS (
           SELECT 1
           FROM observation o
           WHERE o.guid_datastream = NEW.id
             AND o.result_real IS NOT NULL
             AND o.result_real < NEW.value_min
         )
    THEN RAISE(ABORT, 'Bounds update rejected: some existing observations have result_real below the new value_min.')
  END;

  -- If a new upper bound is provided, all existing observations must be <= value_max.
  SELECT CASE
    WHEN NEW.type IN ('Quantity', 'Count')
         AND NEW.value_max IS NOT NULL
         AND EXISTS (
           SELECT 1
           FROM observation o
           WHERE o.guid_datastream = NEW.id
             AND o.result_real IS NOT NULL
             AND o.result_real > NEW.value_max
         )
    THEN RAISE(ABORT, 'Bounds update rejected: some existing observations have result_real above the new value_max.')
  END;
END;



-- Enforce result_text ∈ codelist.id where codelist.collection = datastream.codespace (INSERT)
CREATE TRIGGER observation_bi_result_text_in_codespace
BEFORE INSERT ON observation
FOR EACH ROW
WHEN
  -- scatta solo se c'è testo...
  NEW.result_text IS NOT NULL
  -- ...ed il datastream collegato è di tipo 'Category'
  AND (SELECT type FROM datastream WHERE guid = NEW.guid_datastream) = 'Category'
  -- ...ed il testo NON è presente nella codelist collegata al codespace
  AND NOT EXISTS (
    SELECT 1
    FROM codelist c
    JOIN datastream d ON d.guid = NEW.guid_datastream
    WHERE c.collection = d.codespace
      AND c.id = NEW.result_text
  )
BEGIN
  SELECT RAISE(
    ABORT,
    'Insert denied: result_text must exist in codelist.id within the collection equal to the linked datastream codespace (type=Category).'
  );
END;

CREATE TRIGGER observation_bu_result_text_in_codespace
BEFORE INSERT ON observation
FOR EACH ROW
WHEN
  -- scatta solo se c'è testo...
  NEW.result_text IS NOT NULL
  -- ...ed il datastream collegato è di tipo 'Category'
  AND (SELECT type FROM datastream WHERE guid = NEW.guid_datastream) = 'Category'
  -- ...ed il testo NON è presente nella codelist collegata al codespace
  AND NOT EXISTS (
    SELECT 1
    FROM codelist c
    JOIN datastream d ON d.guid = NEW.guid_datastream
    WHERE c.collection = d.codespace
      AND c.id = NEW.result_text
  )
BEGIN
  SELECT RAISE(
    ABORT,
    'Insert denied: result_text must exist in codelist.id within the collection equal to the linked datastream codespace (type=Category).'
  );
END;



/*
 ██████  ██████  ███████ ███████ ██████  ██    ██ ██ ███    ██  ██████  ██████  ██████   ██████   ██████ ███████ ██████  ██    ██ ██████  ███████ 
██    ██ ██   ██ ██      ██      ██   ██ ██    ██ ██ ████   ██ ██       ██   ██ ██   ██ ██    ██ ██      ██      ██   ██ ██    ██ ██   ██ ██      
██    ██ ██████  ███████ █████   ██████  ██    ██ ██ ██ ██  ██ ██   ███ ██████  ██████  ██    ██ ██      █████   ██   ██ ██    ██ ██████  █████   
██    ██ ██   ██      ██ ██      ██   ██  ██  ██  ██ ██  ██ ██ ██    ██ ██      ██   ██ ██    ██ ██      ██      ██   ██ ██    ██ ██   ██ ██      
 ██████  ██████  ███████ ███████ ██   ██   ████   ██ ██   ████  ██████  ██      ██   ██  ██████   ██████ ███████ ██████   ██████  ██   ██ ███████                                                                                                                                                                                                                                                                                           
*/

-- Table observingprocedure ---------------------------------------------------------------------------------------
CREATE TABLE  observingprocedure
(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    guid TEXT UNIQUE,
    name text NOT NULL, 
    definition TEXT,
    description TEXT,
    properties TEXT

    -- Validate that column `definition` is a well-formed URI
    -- URL with http/https/ftp scheme and a non-empty authority
    CHECK (
        definition IS NULL OR (
            typeof(definition) = 'text'
            AND trim(definition) = definition          -- no leading or trailing spaces
            AND length(definition) > 0
            -- no whitespace characters allowed
            AND instr(definition, ' ') = 0
            AND instr(definition, char(9)) = 0         -- TAB
            AND instr(definition, char(10)) = 0        -- LF
            AND instr(definition, char(13)) = 0        -- CR

            -- scheme: case-insensitive prefix check
            AND (
            lower(substr(definition, 1, 7)) = 'http://'
            OR lower(substr(definition, 1, 8)) = 'https://'
            OR lower(substr(definition, 1, 6)) = 'ftp://'
            )

            -- must contain "://" and at least one character in the authority (no "http:///...")
            AND instr(definition, '://') > 0
            AND substr(definition, instr(definition, '://') + 3, 1) <> '/'

            -- extract the authority (up to the first '/' or end of string) and ensure it does not end with '.'
            AND substr(
                CASE
                    WHEN instr(substr(definition, instr(definition,'://')+3), '/') > 0
                    THEN substr(
                        substr(definition, instr(definition,'://')+3),
                        1,
                        instr(substr(definition, instr(definition,'://')+3), '/') - 1
                        )
                    ELSE substr(definition, instr(definition,'://')+3)
                END,
                -1, 1
                ) <> '.'
            )
        )

);


-- JSON mime type ---------------------------------------------------------------------------------------
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observingprocedure', 'properties', 'Properties', 'Properties', 'A JSON Object containing user-annotated properties as key-value pairs.', 'application/json', null);

-- Contents observingprocedure ---------------------------------------------------------------------------------------
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
  'observingprocedure', -- table name
  'attributes', -- data type
  't_oservproc', -- unique table identifier
  'thing Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL,  
  NULL,
  NULL,
  NULL,
  NULL  -- EPSG spatial reference system code
);


-- Trigger observingprocedure ---------------------------------------------------------------------------------------
CREATE TRIGGER observingprocedureguid
AFTER INSERT ON observingprocedure
FOR EACH ROW
WHEN (NEW.guid IS NULL)
BEGIN
   UPDATE observingprocedure SET guid = lower(
    (SELECT hex(randomblob(4)) || '-' || hex(randomblob(2))
         || '-' || '4' || substr(hex(randomblob(2)), 2) || '-'
         || substr('AB89', 1 + (abs(random()) % 4), 1) 
         || substr(hex(randomblob(2)), 2) || '-' || hex(randomblob(6))
    )
)
 WHERE rowid = NEW.rowid;
END;

CREATE TRIGGER observingprocedureguidupdate
AFTER UPDATE OF guid ON observingprocedure
BEGIN
    SELECT CASE
        WHEN NEW.guid != OLD.guid THEN
            RAISE (ABORT, 'Cannot update guid column.')
    END;
END;

/*
██████  ██████   ██████   ██████ ███████ ██████  ██    ██ ██████  ███████          ██████  ██████  ███████ ███████ ██████  ██    ██ ███████ ██████  ██████  ██████   ██████  ██████  ███████ ██████  ████████ ██    ██ 
██   ██ ██   ██ ██    ██ ██      ██      ██   ██ ██    ██ ██   ██ ██              ██    ██ ██   ██ ██      ██      ██   ██ ██    ██ ██      ██   ██ ██   ██ ██   ██ ██    ██ ██   ██ ██      ██   ██    ██     ██  ██  
██████  ██████  ██    ██ ██      █████   ██   ██ ██    ██ ██████  █████           ██    ██ ██████  ███████ █████   ██████  ██    ██ █████   ██   ██ ██████  ██████  ██    ██ ██████  █████   ██████     ██      ████   
██      ██   ██ ██    ██ ██      ██      ██   ██ ██    ██ ██   ██ ██              ██    ██ ██   ██      ██ ██      ██   ██  ██  ██  ██      ██   ██ ██      ██   ██ ██    ██ ██      ██      ██   ██    ██       ██    
██      ██   ██  ██████   ██████ ███████ ██████   ██████  ██   ██ ███████ ███████  ██████  ██████  ███████ ███████ ██   ██   ████   ███████ ██████  ██      ██   ██  ██████  ██      ███████ ██   ██    ██       ██    
 */

-- N:M association table
CREATE TABLE obsprocedure_obsdproperty (
  id INTEGER PRIMARY KEY AUTOINCREMENT, 
  guid_observingprocedure  TEXT NOT NULL,
  guid_observedproperty   TEXT NOT NULL,
  UNIQUE (guid_observingprocedure, guid_observedproperty),              -- avoids duplicates
  FOREIGN KEY (guid_observingprocedure) REFERENCES observingprocedure(guid)
    ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (guid_observedproperty)  REFERENCES observedproperty(guid)
    ON DELETE RESTRICT ON UPDATE CASCADE
    -- RESTRICT on the property side to prevent “emptying” mandatory relationships by mistake
);

-- Contents obsprocedure_obsdproperty ---------------------------------------------------------------------------------------
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
  'obsprocedure_obsdproperty', -- table name
  'attributes', -- data type
  't_oserv_pro', -- unique table identifier
  'thing Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL,  
  NULL,
  NULL,
  NULL,
  NULL  -- EPSG spatial reference system code
);



/*
 ██████  ██████  ███████ ██████  ██████   ██████   ██████ ███████ ██████  ██    ██ ██████  ███████         ███████ ███████ ███    ██ ███████  ██████  ██████  
██    ██ ██   ██ ██      ██   ██ ██   ██ ██    ██ ██      ██      ██   ██ ██    ██ ██   ██ ██              ██      ██      ████   ██ ██      ██    ██ ██   ██ 
██    ██ ██████  ███████ ██████  ██████  ██    ██ ██      █████   ██   ██ ██    ██ ██████  █████           ███████ █████   ██ ██  ██ ███████ ██    ██ ██████  
██    ██ ██   ██      ██ ██      ██   ██ ██    ██ ██      ██      ██   ██ ██    ██ ██   ██ ██                   ██ ██      ██  ██ ██      ██ ██    ██ ██   ██ 
 ██████  ██████  ███████ ██      ██   ██  ██████   ██████ ███████ ██████   ██████  ██   ██ ███████ ███████ ███████ ███████ ██   ████ ███████  ██████  ██   ██ 
 */                                                                                                                                                   
                                                                                                                                                                                                                                                                                                                         
-- N:M association table
CREATE TABLE obsprocedure_sensor (
  id INTEGER PRIMARY KEY AUTOINCREMENT, 
  guid_observingprocedure  TEXT NOT NULL,
  guid_sensor   TEXT NOT NULL,
 UNIQUE (guid_observingprocedure, guid_sensor),              -- avoids duplicates
  FOREIGN KEY (guid_observingprocedure) REFERENCES observingprocedure(guid)
    ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (guid_sensor)  REFERENCES sensor(guid)
    ON DELETE RESTRICT ON UPDATE CASCADE
    -- RESTRICT on the property side to prevent “emptying” mandatory relationships by mistake
);

-- Contents obsprocedure_sensor ---------------------------------------------------------------------------------------
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
  'obsprocedure_sensor', -- table name
  'attributes', -- data type
  't_oserv_sens', -- unique table identifier
  'thing Table', -- table description
  strftime('%Y-%m-%dT%H:%M:%fZ','now'), -- last modification date and time
  NULL,  
  NULL,
  NULL,
  NULL,
  NULL  -- EPSG spatial reference system code
);



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
    --definition     TEXT,
    collection     TEXT
    --collectionset            TEXT
    --phenomenon     TEXT,
    --featuretype_phenomenon TEXT,
    --parent         TEXT
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



