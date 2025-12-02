---
-- title: "Howto: Defining metadata for the fields in the GeoPackage template for INSPIRE Soil data"
-- date: 02/12/2025
-- author: Andrea Lachi - andrea.lachi@crea.gov.it
---

-- gpkg_metadata Table Definition SQL

CREATE TABLE gpkg_metadata (
  id INTEGER CONSTRAINT m_pk PRIMARY KEY ASC NOT NULL,
  md_scope TEXT NOT NULL DEFAULT 'dataset',
  md_standard_uri TEXT NOT NULL,
  mime_type TEXT NOT NULL DEFAULT 'text/xml',
  metadata TEXT NOT NULL DEFAULT ''
);


 --gpkg_metadata_reference Table Definition SQL

CREATE TABLE gpkg_metadata_reference (
  reference_scope TEXT NOT NULL,
  table_name TEXT,
  column_name TEXT,
  row_id_value INTEGER,
  timestamp DATETIME NOT NULL DEFAULT (strftime('%Y-%m-%dT%H:%M:%fZ','now')),
  md_file_id INTEGER NOT NULL,
  md_parent_id INTEGER,
  CONSTRAINT crmr_mfi_fk FOREIGN KEY (md_file_id) REFERENCES gpkg_metadata(id),
  CONSTRAINT crmr_mpi_fk FOREIGN KEY (md_parent_id) REFERENCES gpkg_metadata(id)
);


-- To enable reading and writing metadata in the GeoPackage:
-- Insert the GeoPackage file and ensure metadata support is enabled.

INSERT INTO gpkg_extensions (table_name, column_name, extension_name, definition, scope) VALUES ('gpkg_metadata', null, 'gpkg_metadata', 'http://www.geopackage.org/spec120/#extension_metadata', 'read-write');
INSERT INTO gpkg_extensions (table_name, column_name, extension_name, definition, scope) VALUES ('gpkg_metadata_reference', null, 'gpkg_metadata', 'http://www.geopackage.org/spec120/#extension_metadata', 'read-write');

-- To save metadata into the GeoPackage:
-- Open the Metadata tab.
-- At the bottom, click the "Metadata" button.
-- Select "Save to Default Location".


-------------------------------------------------------------------------------
-- Field-level metadata (WORKS):
-- Used for describing individual fields.
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Already created for inserting MIME type JSON in DDL_SO.sql
-------------------------------------------------------------------------------
/*
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
*/

-- non si usa ma mettere
CREATE TABLE gpkg_data_column_constraints (
  constraint_name TEXT NOT NULL,
  constraint_type TEXT NOT NULL, -- 'range' | 'enum' | 'glob'
  value TEXT,
  min NUMERIC,
  min_is_inclusive BOOLEAN, -- 0 = false, 1 = true
  max NUMERIC,
  max_is_inclusive BOOLEAN, -- 0 = false, 1 = true
  description TEXT,
  CONSTRAINT gdcc_ntv UNIQUE (constraint_name, constraint_type, value)
);



INSERT INTO gpkg_extensions (table_name, column_name, extension_name, definition, scope) VALUES ('gpkg_data_columns', null, 'gpkg_schema', 'http://www.geopackage.org/spec121/#extension_schema', 'read-write');
INSERT INTO gpkg_extensions (table_name, column_name, extension_name, definition, scope) VALUES ('gpkg_data_column_constraints', null, 'gpkg_schema', 'http://www.geopackage.org/spec121/#extension_schema', 'read-write');

-- SOIL SITE --
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilsite', 'id', 'Id', 'Identifier', 'Primary Key of the Table.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilsite', 'guid', 'Guid', 'Guid', 'Universally unique identifier', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilsite', 'inspireid_localid', 'Inspire Id Local Id', 'Inspire Id Local Id', 'A local identifier, assigned by the data provider. The local identifier is unique within the namespace, that is no other spatial object carries the same unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilsite', 'inspireid_namespace', 'Inspire Id Namespace', 'Inspire Id Namespace', 'Namespace uniquely identifying the data source of the spatial object.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilsite', 'inspireid_versionid', 'Inspire Id Version Id', 'Inspire Id Version Id', 'The identifier of the particular version of the spatial object, with a maximum length of 25 characters. If the specification of a spatial object type with an external object identifier includes life-cycle information, the version identifier is used to distinguish between the different versions of a spatial object. Within the set of all versions of a spatial object, the version identifier is unique.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilsite', 'soilinvestigationpurpose', 'Soil Investigation Purpose', 'Soil Investigation Purpose', 'Indication why a survey was conducted.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilsite', 'validfrom', 'Valid From', 'Valid From', 'The time when the phenomenon started to exist in the real world.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilsite', 'validto', 'Valid To', 'Valid To', 'The time from which the phenomenon no longer exists in the real world.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilsite', 'beginlifespanversion', 'Begin Lifespan Version', 'Begin Lifespan Version', 'Date and time at which this version of the spatial object was inserted or changed in the spatial data set.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilsite', 'endlifespanversion', 'End Lifespan Version', 'End Lifespan Version', 'Date and time at which this version of the spatial object was superseded or retired in the spatial data set.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilsite', 'geometry', 'Geometry', 'Geometry', 'Geometry.', null, null);

-- SOIL PLOT --
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilplot', 'id', 'Id', 'Identifier', 'Primary Key of the Table.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilplot', 'guid ', 'Guid', 'Guid', 'Universally unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilplot', 'inspireid_localid ', 'Inspire Id Local Id', 'Inspire Id Local Id', 'A local identifier, assigned by the data provider. The local identifier is unique within the namespace, that is no other spatial object carries the same unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilplot', 'inspireid_namespace ', 'Inspire Id Namespace', 'Inspire Id Namespace', 'Namespace uniquely identifying the data source of the spatial object.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilplot', 'inspireid_versionid ', 'Inspire Id Version Id', 'Inspire Id Version Id', 'The identifier of the particular version of the spatial object, with a maximum length of 25 characters. If the specification of a spatial object type with an external object identifier includes life-cycle information, the version identifier is used to distinguish between the different versions of a spatial object. Within the set of all versions of a spatial object, the version identifier is unique.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilplot', 'soilplottype ', 'Soil Plot Type ', 'Soil Plot Type ', 'Gives information on what kind of plot the observation of the soil is made on.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilplot', 'beginlifespanversion ', 'Begin Lifespan Version', 'Begin Lifespan Version', 'Date and time at which this version of the spatial object was inserted or changed in the spatial data set.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilplot', 'endlifespanversion ', 'End Lifespan Version', 'End Lifespan Version', 'Date and time at which this version of the spatial object was superseded or retired in the spatial data set.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilplot', 'locatedon', 'Located On', 'Located On', 'Foreign key to the SoilSite table, guid field.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilplot', 'soilplotlocation', 'Soil Plot Location', 'Soil Plot Location', 'Geometry.', null, null);

-- SOIL PROFILE --
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilprofile', 'id', 'Id', 'Identifier', 'Primary Key of the Table.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilprofile', 'guid', 'Guid', 'Guid', 'Universally unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilprofile', 'inspireid_localid', 'Inspire Id Local Id', 'Inspire Id Local Id', 'A local identifier, assigned by the data provider. The local identifier is unique within the namespace, that is no other spatial object carries the same unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilprofile', 'inspireid_namespace', 'Inspire Id Namespace', 'Inspire Id Namespace', 'Namespace uniquely identifying the data source of the spatial object.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilprofile', 'inspireid_versionid', 'Inspire Id Version Id', 'Inspire Id Version Id', 'The identifier of the particular version of the spatial object, with a maximum length of 25 characters. If the specification of a spatial object type with an external object identifier includes life-cycle information, the version identifier is used to distinguish between the different versions of a spatial object. Within the set of all versions of a spatial object, the version identifier is unique.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilprofile', 'localidentifier', 'Local Identifier', 'Local Identifier', 'Unique identifier of the soil profile given by the data provider of the dataset.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilprofile', 'beginlifespanversion', 'Begin Lifespan Version', 'Begin Lifespan Version', 'Date and time at which this version of the spatial object was inserted or changed in the spatial data set.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilprofile', 'endlifespanversion', 'End Lifespan Version', 'End Lifespan Version', 'Date and time at which this version of the spatial object was superseded or retired in the spatial data set.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilprofile', 'validfrom', 'Valid From', 'Valid From', 'The time when the phenomenon started to exist in the real world.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilprofile', 'validto', 'Valid To', 'Valid To', 'The time from which the phenomenon no longer exists in the real world.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilprofile', 'isderived', 'Is Derived', 'Is Derived', 'Boolean value to indicate whether the record is of Derived or Observed type.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilprofile', 'wrbversion', 'Wrb Version', 'Wrb Version', 'Indicates the WRB classification version.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilprofile', 'wrbreferencesoilgroup', 'Wrb Reference Soil Group', 'Wrb Reference Soil Group', 'First level of classification of the World Reference Base for Soil Resources.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilprofile', 'isoriginalclassification', 'Is Original Classification', 'Is Original Classification', 'Boolean value to indicate whether the WRB classification system was the original classification system to describe the soil profile.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilprofile', 'location', 'Location', 'Location', 'Foreign key to the SoilPlot table, guid field.', null, null);

-- OTHER SOIL NAME TYPE --
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('othersoilnametype', 'id', 'Id', 'Identifier', 'Primary Key of the Table.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('othersoilnametype', 'othersoilname_type', 'Other Soil Name Type', 'Other Soil Name Type', 'Name of the soil profile according to a specific classification scheme.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('othersoilnametype', 'guid', 'Guid', 'Guid', 'Universally unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('othersoilnametype', 'othersoilname_class', 'Other Soil Name Class', 'Other Soil Name Class', 'Specific classification scheme.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('othersoilnametype', 'isoriginalclassification', 'Is Original Classification', 'Is Original Classification', 'Boolean value to indicate whether the specified classification scheme was the original classification scheme to describe the profile.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('othersoilnametype', 'othersoilname', 'Other Soil Name', 'Other Soil Name', 'Foreign key to the SoilProfile table, guid field.', null, null);

-- IS DERIVED FROM --
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('isderivedfrom', 'id', 'Id', 'Identifier', 'Primary Key of the Table.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('isderivedfrom', 'guid_base', 'Base Id', 'Base Id', 'Foreign key to the SoilProfile table, guid field. - Observed Soil Profile.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('isderivedfrom', 'guid_related', 'Related Id', 'Related Id', 'Foreign key to the SoilProfile table, guid field. - Derived Soil Profile.', null, null);

--SOIL BODY --
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilbody', 'id', 'Id', 'Identifier', 'Primary Key of the Table.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilbody', 'guid', 'Guid', 'Guid', 'Universally unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilbody', 'inspireid_localid', 'Inspire Id Local Id', 'Inspire Id Local Id', 'A local identifier, assigned by the data provider. The local identifier is unique within the namespace, that is no other spatial object carries the same unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilbody', 'inspireid_namespace', 'Inspire Id Namespace', 'Inspire Id Namespace', 'Namespace uniquely identifying the data source of the spatial object.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilbody', 'inspireid_versionid', 'Inspire Id Version Id', 'Inspire Id Version Id', 'The identifier of the particular version of the spatial object, with a maximum length of 25 characters. If the specification of a spatial object type with an external object identifier includes life-cycle information, the version identifier is used to distinguish between the different versions of a spatial object. Within the set of all versions of a spatial object, the version identifier is unique.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilbody', 'beginlifespanversion', 'Begin Lifespan Version', 'Begin Lifespan Version', 'Date and time at which this version of the spatial object was inserted or changed in the spatial data set.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilbody', 'endlifespanversion', 'End Lifespan Version', 'End Lifespan Version', 'Date and time at which this version of the spatial object was superseded or retired in the spatial data set.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilbody', 'soilbodylabel', 'Soil Body Label', 'Soil Body Label', 'Label to identify the soil body according to the specified reference framework (metadata).', null, null);

--SOIL BODY GEOM --
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilbody_geom', 'id', 'Id', 'Identifier', 'Primary Key of the Table.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilbody_geom', 'guid', 'Guid', 'Guid', 'Universally unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilbody_geom', 'guid_soilbody', 'Id Soil Body', 'Id Soil Body', 'Foreign key to the SoilBody table.', '', null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilbody_geom', 'geom', 'Geom', 'Geom', 'Geometry.', null, null);

--DERIVED PROFILE PRESENCE IN SOIL BODY --
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('derivedprofilepresenceinsoilbody', 'id', 'Id', 'Identifier', 'Primary Key of the Table.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('derivedprofilepresenceinsoilbody', 'guid_soilbody', 'Id Soil Body', 'Id Soil Body', 'Foreign key to the SoilBody table.', ' ', null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('derivedprofilepresenceinsoilbody', 'guid_soilprofile', 'Id Soil Profile', 'Id Soil Profile', 'Foreign key to the SoilProfile table, guid field.', ' ', null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('derivedprofilepresenceinsoilbody', 'lowervalue', 'Lower Value', 'Lower Value', 'Upper value.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('derivedprofilepresenceinsoilbody', 'uppervalue', 'Upper Value', 'Upper Value', 'Lower value.', null, null);

--SOIL DERIVED OBJECT-- 
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilderivedobject', 'id', 'Id', 'Identifier', 'Primary Key of the Table.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilderivedobject', 'guid', 'Guid', 'Guid', 'Universally unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilderivedobject', 'inspireid_localid', 'Inspire Id Local Id', 'Inspire Id Local Id', 'A local identifier, assigned by the data provider. The local identifier is unique within the namespace, that is no other spatial object carries the same unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilderivedobject', 'inspireid_namespace', 'Inspire Id Namespace', 'Inspire Id Namespace', 'Namespace uniquely identifying the data source of the spatial object.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilderivedobject', 'inspireid_versionid', 'Inspire Id Version Id', 'Inspire Id Version Id', 'The identifier of the particular version of the spatial object, with a maximum length of 25 characters. If the specification of a spatial object type with an external object identifier includes life-cycle information, the version identifier is used to distinguish between the different versions of a spatial object. Within the set of all versions of a spatial object, the version identifier is unique.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilderivedobject', 'accessuri', 'Access Uri', 'Access Uri', 'SoilDerivedObject URI.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('soilderivedobject', 'geometry', 'Geometry.', 'Geometry.', 'Geometry.', null, null);

--IS BASED ON OBSERVED SOIL PROFILE--
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('isbasedonobservedsoilprofile', 'id', 'Id', 'Identifier', 'Primary Key of the Table.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('isbasedonobservedsoilprofile', 'guid_soilderivedobject', 'Id Soil Derived Object', 'Id Soil Derived Object', 'Foreign key to the SoilDerivedObject table, guid field.', ' ', null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('isbasedonobservedsoilprofile', 'guid_soilprofile', 'Id Soil Profile', 'Id Soil Profile', 'Foreign key to the SoilProfile table, guid field.', '', null);

--IS BASED ON SOIL BODY--
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('isbasedonsoilbody', 'id', 'Id', 'Identifier', 'Primary Key of the Table.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('isbasedonsoilbody', 'guid_soilderivedobject', 'Id Soil Derived Object', 'Id Soil Derived Object', 'Foreign key to the SoilDerivedObject table, guid field.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('isbasedonsoilbody', 'guid_soilbody', 'Id Soil Body', 'Id Soil Body', 'Foreign key to the SoilBody table, guid field.', null, null);

--IS BASED ON SOIL DERIVED OBJECT--
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('isbasedonsoilderivedobject', 'id', 'Id', 'Identifier', 'Primary Key of the Table.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('isbasedonsoilderivedobject', 'guid_base', 'Base Id', 'Base Id', 'Foreign key to the SoilDerivedObject table, guid field. - Base SoilDerivedObject.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('isbasedonsoilderivedobject', 'guid_related', 'Related Id', 'Related Id', 'Foreign key to the SoilDerivedObject table, guid field. - Derived SoilDerivedObject.', null, null);

--PROFILE ELEMENT--
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('profileelement', 'id', 'Id', 'Identifier', 'Primary Key of the Table.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('profileelement', 'guid', 'Guid', 'Guid', 'Universally unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('profileelement', 'inspireid_localid', 'Inspire Id Local Id', 'Inspire Id Local Id', 'A local identifier, assigned by the data provider. The local identifier is unique within the namespace, that is no other spatial object carries the same unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('profileelement', 'inspireid_namespace', 'Inspire Id Namespace', 'Inspire Id Namespace', 'Namespace uniquely identifying the data source of the spatial object.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('profileelement', 'inspireid_versionid', 'Inspire Id Version Id', 'Inspire Id Version Id', 'The identifier of the particular version of the spatial object, with a maximum length of 25 characters. If the specification of a spatial object type with an external object identifier includes life-cycle information, the version identifier is used to distinguish between the different versions of a spatial object. Within the set of all versions of a spatial object, the version identifier is unique.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('profileelement', 'profileelementdepthrange_uppervalue', 'Profile Element Depth Range Upper Value', 'Profile Element Depth Range Upper Value', 'Upper depth of the profile element (layer or horizon) measured from the surface of a soil profile (in cm).', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('profileelement', 'profileelementdepthrange_lowervalue', 'Profile Element Depth Aange Lower Value', 'Profile Element Depth Aange Lower Value', 'Lower depth of the profile element (layer or horizon) measured from the surface of a soil profile (in cm).', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('profileelement', 'beginlifespanversion', 'Begin Lifespan Version', 'Begin Lifespan Version', 'Date and time at which this version of the spatial object was inserted or changed in the spatial data set.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('profileelement', 'endlifespanversion', 'End Lifespan Version', 'End Lifespan Version', 'Date and time at which this version of the spatial object was superseded or retired in the spatial data set.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('profileelement', 'layertype', 'Layer Type', 'Layer Type', 'Assignation of a layer according to the concept that fits its kind.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('profileelement', 'layerrocktype', 'Layer Rock Type', 'Layer Rock Type', 'Type of the material in which the layer developed.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('profileelement', 'layergenesisprocess', 'Layer Genesis Process', 'Layer Genesis Process', 'Last non-pedogenic process (geologic or anthropogenic) that coined the material composition and internal structure of the layer.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('profileelement', 'layergenesisenviroment', 'Layer Genesis Enviroment', 'Layer Genesis Enviroment', 'Setting in which the last non-pedogenic process (geologic or anthropogenic) that coined the material composition and internal structure of the layer took place.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('profileelement', 'layergenesisprocessstate', 'Layer Genesisp Pocess State', 'Layer Genesisp Pocess State', 'Indication whether the process specified in layerGenesisProcess is on-going or seized in the past.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('profileelement', 'profileelementtype', 'Profile Element Type', 'Profile Element Type', 'Boolean value to indicate whether the record is of Horizon or Layer type.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('profileelement', 'ispartof', 'Is Part Of', 'Is Part Of', 'Foreign key to the SoilProfile table, guid field.', ' ', null);

--PARTICLE SIZE FRACTION--
--INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('particlesizefractiontype', 'id', 'Id', 'Identifier', 'Primary Key of the Table.', null, null);
--INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('particlesizefractiontype', 'fractioncontent', 'Fraction Content', 'Fraction Content', 'Percentage of the defined fraction.', null, null);
--INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('particlesizefractiontype', 'pariclesize_upper', 'Pariclesize Upper', 'Pariclesize Upper', 'Upper limit of the particle size of the defined fraction (expressed in µm).', null, null);
--INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('particlesizefractiontype', 'pariclesize_lower', 'Pariclesize Lower', 'Pariclesize Lower', 'Lower limit of the particle size of the defined fraction (expressed in µm).', null, null);
--INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('particlesizefractiontype', 'guid_profileelement', 'Id Profile Element', 'Id Profile Element', 'Foreign key to the ProfileElement table, guid field.', '', null);

--FAO HORIZON NOTATION TYPE--
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('faohorizonnotationtype', 'id', 'Id', 'Identifier', 'Primary Key of the Table.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('faohorizonnotationtype', 'faohorizondiscontinuity', 'Fao Horizon Discontinuity', 'Fao Horizon Discontinuity', 'Number used to indicate a discontinuity in the horizon notation.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('faohorizonnotationtype', 'guid', 'Guid', 'Guid', 'Universally unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('faohorizonnotationtype', 'faohorizonmaster_1', 'First Fao Horizon Master', 'First Fao Horizon Master', 'First Symbol of the master part of the horizon notation.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('faohorizonnotationtype', 'faohorizonmaster_2', 'Second Fao Horizon Master', 'Second Fao Horizon Master', 'Second Symbol of the master part of the horizon notation.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('faohorizonnotationtype', 'faohorizonsubordinate_1', 'First Fao Horizon Subordinate', 'First Fao Horizon Subordinate', 'First Designations of subordinate distinctions and features within the master horizons and layers are based on profile characteristics observable in the field and are applied during the description of the soil at the site.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('faohorizonnotationtype', 'faohorizonsubordinate_2', 'Second Fao Horizon Subordinate', 'Second Fao Horizon Subordinate', 'Second Designations of subordinate distinctions and features within the master horizons and layers are based on profile characteristics observable in the field and are applied during the description of the soil at the site.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('faohorizonnotationtype', 'faohorizonsubordinate_3', 'Third Fao Horizon Subordinate', 'Third Fao Horizon Subordinate', 'Third Designations of subordinate distinctions and features within the master horizons and layers are based on profile characteristics observable in the field and are applied during the description of the soil at the site.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('faohorizonnotationtype', 'faohorizonverical', 'Fao Horizon Verical', 'Fao Horizon Verical', 'Order number of the vertical subdivision in the horizon notation.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('faohorizonnotationtype', 'faoprime', 'Fao Prime', 'Fao Prime', 'A prime and double prime may be used to connotate master horizon symbol of the lower of two respectively three horizons having identical Arabic-numeral prefixes and letter combinations.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('faohorizonnotationtype', 'isoriginalclassification', 'Is Original Classification', 'Is Original Classification', 'Boolean value to indicate whether the FAO horizon notation was the original notation to describe the horizon.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('faohorizonnotationtype', 'guid_profileelement', 'Id Profile Element', 'Id Profile Element', 'Foreign key to the ProfileElement table,  guid field.', '', null);

--OTHER HORIZON NOTATION TYPE--
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('otherhorizonnotationtype', 'id', 'Id', 'Identifier', 'Primary Key of the Table.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('otherhorizonnotationtype', 'guid', 'Guid', 'Guid', 'Universally unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('otherhorizonnotationtype', 'horizonnotation', 'Horizon Notation', 'Horizon Notation', 'Notation characterizing the soil horizon according to a specified classification system.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('otherhorizonnotationtype', 'diagnostichorizon', 'Diagnostic Horizon', 'Diagnostic Horizon', 'Codelist wrbdiagnostichorizonvalue.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('otherhorizonnotationtype', 'isoriginalclassification', 'Is Original Classification', 'Is Original Classification', 'Boolean value to indicate whether the specified horizon notation system was the original notation system to describe the horizon.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('otherhorizonnotationtype', 'otherhorizonnotation', 'Other Horizon Notation', 'Other Horizon Notation', null, null, null);

--OTHER HORIZON PROFILE ELEMENT--
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('otherhorizon_profileelement', 'id', 'Id', 'Identifier', 'Primary Key of the Table.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('otherhorizon_profileelement', 'guid_profileelement', 'Id Profile Element', 'Id Profile Element', 'Foreign key to the ProfileElement table, guid field.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('otherhorizon_profileelement', 'guid_otherhorizonnotationtype', 'Id Other Horizon Notation Type', 'Id Other Horizon Notation Type', 'Foreign key to the OtherhorizonNotationType table, guid field.', null, null);

--WRB QUALIFIER GROUP TYPE --
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('wrbqualifiergrouptype', 'id', 'Id', 'Identifier', 'Primary Key of the Table.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('wrbqualifiergrouptype', 'guid', 'Guid', 'Guid', 'Universally unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('wrbqualifiergrouptype', 'qualifierplace', 'Qualifier Place', 'Qualifier Place', 'Attribute to indicate the placement of the Qualifier with regard to the WRB reference soil group (RSG). The placement can be in front of the RSG i.e. prefix or it can be behind the RSG i.e. suffix.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('wrbqualifiergrouptype', 'wrbspecifier_1', 'First Wrb Specifier', 'First Wrb Specifier', 'First code that indicates the degree of expression of a qualifier or the depth range of which the qualifier applies.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('wrbqualifiergrouptype', 'wrbspecifier_2', 'Second Wrb Specifier', 'Second Wrb Specifier', 'Second code that indicates the degree of expression of a qualifier or the depth range of which the qualifier applies.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('wrbqualifiergrouptype', 'wrbversion', 'Wrb Version', 'Wrb Version', 'Indicates the WRB classification version.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('wrbqualifiergrouptype', 'wrbqualifier', 'Wrb Qualifier', 'Wrb Qualifier', 'Name element of WRB, 2nd level of classification.', null, null);

--WRB QUALIFIER GROUP PROFILE --
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('wrbqualifiergroup_profile', 'id', 'Id', 'Identifier', 'Primary Key of the Table.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('wrbqualifiergroup_profile', 'guid_soilprofile', 'Id Soil Profile', 'Id Soil Profile', 'Foreign key to the SaoilProfile table, guid field.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('wrbqualifiergroup_profile', 'guid_wrbqualifiergrouptype', 'Id Wrb Qualifier Group Type', 'Id Wrb Qualifier Group Type', 'Foreign key to the WrbqualifierGroupType table, guid field.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('wrbqualifiergroup_profile', 'qualifierposition', 'Qualifier Position', 'Qualifier Position', 'Number to indicate the position of a qualifier with regard to the WRB reference soil group (RSG) it belongs to and with regard to its placement to that (RSG) i.e. as a prefix or a suffix.', null, null);


--CODELIST--
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('codelist', 'id', 'Id', 'Identifier', 'Codelist Voice Uri, and Primary Key of the Table.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('codelist', 'label', 'Label', 'Label', 'A word or phrase used to name or describe something, often to identify or classify it.', null, null);
-- INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('codelist', 'definition', 'Definition', 'Definition', 'A clear explanation of the meaning of a word or concept.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('codelist', 'collection', 'Collection', 'Collection', 'Structured set of related elements, which share common characteristics and are managed with unique and persistent identifiers.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('codelist', 'collectionset', 'Collection Set', 'Collection Set', 'Set of Collection.', null, null);
-- INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('codelist', 'phenomenon', 'Phenomenon', 'Phenomenon', 'The type of phenomenon it belongs to, whether Chemical, Physical or Biological.', null, null);
-- INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('codelist', 'featuretype_phenomenon', 'Feature Type Phenomenon', 'Feature Type Phenomenon', 'Working field, is the concatenation of the fields "featuretype" and "phenomenon".', null, null);
-- INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('codelist', 'parent', 'Parent', 'Parent', 'Indicates the level of the hierarchically superior codelist to which it belongs.', null, null);



--DASTREAM --
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'id', 'Id', 'Identifier', 'A unique, read-only attribute that serves as an identifier for the entity.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'guid', 'Guid', 'Guid', 'Universally unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'name', 'Name', 'Name', 'A property provides a label for Datastream entity, commonly a descriptive name.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'definition', 'Definition', 'Definition', 'The URI linking the Datastream to an external definition. Dereferencing this URI SHOULD result in a representation of the definition of the Datastream.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'description', 'Description', 'Description', 'The description of the Datastream entity.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'type', 'Type', 'Type', 'The type attribute defines the type of the result and has the value Quantity.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'codespace', 'Codespace', 'Codespace', 'The codespace defines the reference framework that specifies the set of valid values which can be used as results. It ensures that the meaning of each code is interpreted correctly within a given context.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'code_unitofmeasure', 'FK Unit Of Measure', 'FK Unit Of Measure','Foreign key to the Unit Of Measue table, code field..', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'value_min', 'Minimum Value', 'Minimum Value', 'The minimum value defines the lowest numerical limit allowed within the data domain..', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'value_max', 'Maximum Value', 'Maximum Value', 'The maximum value defines the highest numerical limit allowed within the data domain.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'observedarea', 'Observed Area', 'Observed Area', 'The spatial bounding box of the spatial extent of the Feature that belong to the Observations associated with this Datastream. This is usually generated by the server.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'phenomenontime_start', 'Start of Phenomenon', 'Start of Phenomenon', 'The start date of the temporal interval of the phenomenon times of all observations belonging to this Datastream. This is usually generated by the server.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'phenomenontime_end', 'End of Phenomenon', 'End of Phenomenon', 'The end date of the temporal interval of the phenomenon times of all observations belonging to this Datastream. This is usually generated by the server.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'resulttime_start', 'Result Time Start', 'Result Time End', 'The start date of the temporal interval of the result times of all observations belonging to this Datastream. This is usually generated by the server.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'resulttime_end', 'Result Time End', 'Result Time End', 'The end date of the temporal interval of the result times of all observations belonging to this Datastream. This is usually generated by the server..', null, null);
--INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'idfeature', 'FK Feature', 'FK Feature', 'Foreign key to the Feature  table, id field.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'guid_thing', 'FK Thing', 'FK Thing', 'Foreign key to the Thing table, guid field.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'guid_sensor', 'FK Sensor', 'FK Sensor', 'Foreign key to the Sensor table, guid field.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'guid_observedproperty', 'FK Observed Property', 'FK Observed Property', 'Foreign key to the Observed Property table, guid field.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'guid_soilsite', 'FK Feature Soil Site', 'FK Feature Soil Site', 'Foreign key to the Soil Site table, guid field.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'guid_soilprofile', 'FK Feature Soil Profile', 'FK Feature Soil Profile', 'Foreign key to the Soil Profile table, guid field.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'guid_profileelement', 'FK Feature Profile Element', 'FK Feature Profile Element', 'Foreign key to the Profile Elemen table, guid field.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'guid_soilderivedobject', 'FK Feature Soil Derived Object', 'FK Feature Soil Derived Object', 'Foreign key to the Soil Derived Object table, guid field.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'guid_observingprocedure', 'FK Observing Procedure', 'FK Observing Procedure', 'Foreign key to the Observing Procedure table, guid field.', null, null);
--INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'idfeaturetype', 'FK Feature Type', 'FK Feature Type', 'Foreign key to the Feature Type table, id field.', null, null);
--INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'idfeaturetype', 'FK Feature Type', 'FK Feature Type', 'Foreign key to the Observing Procedure table, id field.', null, null);
--INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('datastream', 'properties', 'Properties', 'Properties', 'A JSON Object containing user-annotated properties as key-value pairs.', null, null);

--OBSERVEDPROPERTY --
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observedproperty', 'id', 'Id', 'Identifier', 'A unique, read-only attribute that serves as an identifier for the entity.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observedproperty', 'guid', 'Guid', 'Guid', 'Universally unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observedproperty', 'name', 'Name', 'Name', 'A property provides a label for ObservedProperty entity, commonly a descriptive name.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observedproperty', 'definition', 'Definition', 'Definition', 'The URI of the ObservedProperty. Dereferencing this URI SHOULD result in a representation of the definition of the ObservedProperty. The definition SHOULD be unique in a service.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observedproperty', 'description', 'Description', 'Description', 'A description about the ObservedProperty.', null, null);
--INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observedproperty', 'properties', 'Properties', 'Properties', 'A JSON Object containing user-annotated properties as key-value pairs.', null, null);


--UNITOFMEASURE --
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('unitofmeasure', 'id', 'Id', 'Identifier', 'A unique, read-only attribute that serves as an identifier for the entity.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('unitofmeasure', 'code', 'Code', 'Code', 'The Unified Code for Units of Measure is a code system intended to include all units of measures being contemporarily used in international science, engineering, and business.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('unitofmeasure', 'label', 'Label', 'Label', 'A word or phrase used to name or describe something, often to identify or classify it.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('unitofmeasure', 'symbol', 'Symbol', 'Symbol', 'Standardized, unambiguous string used to represent a unit of measure. Symbols are designed for machine-to-machine communication and ensure consistent interpretation of units across systems and applications.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('unitofmeasure', 'qudt_unit', 'Qudt Unit', 'Qudt Unit', 'Is an entity that represents a standardized measure of a physical quantity.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('unitofmeasure', 'conversionoffset', 'Conversion Offset', 'Conversion Offset', 'Is the value added after applying the multiplier, used for units that do not start at zero relative to the reference unit.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('unitofmeasure', 'conversionmultiplier', 'Conversion Multiplier', 'Conversion Multiplier', 'Is the scaling factor used to convert a value from one unit to its reference unit (typically the SI base unit for that dimension).', null, null);

--SENSOR --
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('sensor', 'id', 'Id', 'Identifier', 'A unique, read-only attribute that serves as an identifier for the entity.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('sensor', 'guid', 'Guid', 'Guid', 'Universally unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('sensor', 'name', 'Name', 'Name', 'A property provides a label for Sensor entity, commonly a descriptive name.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('sensor', 'definition', 'Definition', 'Definition', 'The URI linking the Thing to an external definition. Dereferencing this URI SHOULD result in a representation of the definition of the Thing.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('sensor', 'description', 'Description', 'Description', 'The description of the Sensor entity.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('sensor', 'encodingtype', 'Encoding Type', 'Encoding Type', 'The encoding type of the metadata property. If the metadata field is present, an encodingType must be specified.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('sensor', 'metadata', 'Metadata', 'Metadata', 'The detailed description of the Sensor or system. The metadata type is defined by encodingType.', null, null);
--INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('sensor', 'properties', 'Properties', 'Properties', 'A JSON Object containing user-annotated properties as key-value pairs.', null, null);


--THING --
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('thing', 'id', 'Id', 'Identifier', 'A unique, read-only attribute that serves as an identifier for the entity.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('thing', 'guid', 'Guid', 'Guid', 'Universally unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('thing', 'name', 'Name', 'Name', 'A property provides a label for Thing entity, commonly a descriptive name.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('thing', 'definition', 'Definition', 'Definition', 'The URI linking the Thing to an external definition. Dereferencing this URI SHOULD result in a representation of the definition of the Thing.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('thing', 'description', 'Description', 'Description', 'This is a short description of the corresponding Thing entity.', null, null);
--INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('thing', 'properties', 'Properties', 'Properties', 'A JSON Object containing user-annotated properties as key-value pairs.', null, null);

--OBSERVATION --
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observation', 'id', 'Id', 'Identifier', 'A unique, read-only attribute that serves as an identifier for the entity.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observation', 'phenomenontime_start', 'Start of Phenomenon', 'Start of Phenomenon', 'The time instant when the Observation happens, or the start time if it happens over a period.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observation', 'guid', 'Guid', 'Guid', 'Universally unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observation', 'phenomenontime_end', 'End of Phenomenon', 'End of Phenomenon', 'The end time if the Observation happens over a period.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observation', 'result_text', 'Result Value as Text', 'Result Value as Text', 'The estimated value of an ObservedProperty from the Observation, when the Type is Category or Text.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observation', 'result_real', 'Result Value as Real', 'Result Value as Real', 'The estimated value of an ObservedProperty from the Observation, when the Type is Quantity or Count.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observation', 'result_boolean', 'Result Value as Boolean', 'Result Value as Boolean', 'The estimated value of an ObservedProperty from the Observation, when the Type is Boolean.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observation', 'resulttime', 'Time or result', 'Time or result', 'The time of the Observation’s result was generated.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observation', 'validtime_start', 'Start Time of Validity Period', 'Start Time of Validity Period', 'The start time of the period during which the result may be used.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observation', 'validtime_end', 'End Time of Validity Period', 'End Time of Validity Period', 'The end time of the period during which the result may be used.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observation', 'guid_datastream', 'FK Datastream', 'FK Datastream', 'Foreign key to the Datstream table, guid field.', null, null);

--OBSERVING PROCEDURE --
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observingprocedure', 'id', 'Id', 'Identifier', 'A unique, read-only attribute that serves as an identifier for the entity.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observingprocedure', 'guid', 'Guid', 'Guid', 'Universally unique identifier.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observingprocedure', 'name', 'Name', 'Name', 'A property provides a label for Observing Procedure entity, commonly a descriptive name.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observingprocedure', 'definition', 'Definition', 'Definition', 'The URI linking the Thing to an external definition. Dereferencing this URI SHOULD result in a representation of the definition of the Observing Procedure.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('observingprocedure', 'description', 'Description', 'Description', 'This is a short description of the corresponding Observing Procedure entity.', null, null);


--OBSERVED PROCEDURE / OBSERVED PROPERTY --
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('obsprocedure_obsdproperty', 'id', 'Id', 'Identifier', 'A unique, read-only attribute that serves as an identifier for the entity.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('obsprocedure_obsdproperty', 'guid_observingprocedure', 'Id Procedure', 'Id Procedure', 'Foreign key to the  Procedure table, guid field.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('obsprocedure_obsdproperty', 'guid_observedproperty', 'Id Observed Property', 'Id Observed Property', 'Foreign key to the Observed Property table, guid field.', null, null);

--OBSERVED PROCEDURE / SENSOR --
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('obsprocedure_sensor', 'id', 'Id', 'Identifier', 'A unique, read-only attribute that serves as an identifier for the entity.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('obsprocedure_sensor', 'guid_observingprocedure', 'Id Procedure', 'Id Procedure', 'Foreign key to the  Procedure table, guid field.', null, null);
INSERT INTO gpkg_data_columns (table_name, column_name, name, title, description, mime_type, constraint_name) VALUES ('obsprocedure_sensor', 'isensor', 'Id Sensor', 'Id Sensor', 'Foreign key to the Observed Sensor table, guid field.', null, null);
