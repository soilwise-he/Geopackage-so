The `sql` folder contains the informatic code which is behind the INSPIRE Soil Geopackage.  
Using the SQL code provided in the SQL files, you can recreate the GeoPackage containing the complete INSPIRE Soil data structure.


---
The data model **currently under development** can be viewed at:
🔗 https://dbdiagram.io/d/INSPIRE_SO_STA2-68930e9bdd90d17865ab666b

---

## Recreating the Geopackage Containing the INSPIRE Soil Structure

To do this:  
1. Open the empty GeoPackage model available at [http://www.geopackage.org/data/empty.gpkg](http://www.geopackage.org/data/empty.gpkg) using a database manager (e.g., DBeaver).  


2. Execute the SQL instructions using the provided SQL files:

- `DDL_SO.sql`
    - Contains Data Definition Language (DDL) statements.
    - Used to create the full INSPIRE Soil database structure, including tables and relationships.

- `META_SO.sql`
    - Includes instructions to populate GeoPackage metadata (non-INSPIRE format).
    - Supports metadata integration for both reading and writing operations.

- `DML_SO.sql`
    - Contains Data Manipulation Language (DML) statements.
    - Populates the codelist table with required values for correct functionality.


---

## Create More Than One Geometric Layer Linked to the SoilBody Table  

It is possible to create more than one geometric layer linked to the SoilBody table, to do this use the code provided in `SoilBody_newgeom.sql`.

Some names in the code need to be changed for it to work correctly, as described below.

1. SoilBody geometry table 

    - CREATE TABLE soilbody_newname  ** CHANGE NAME **

2. gpkg_contents INSERT

    - 'soilbody_newname',   ** CHANGE NAME ** the name should be as entered in point 1
    - 'f_sbsi',  ** CHANGE NAME ID**
    - 'soilbody_newname Table',   ** CHANGE NAME DESCRIPTION  OPTIONAL** the name should be as entered in point 1

3. Spatial index
    - CREATE INDEX soiBody_geom_idxsi ON soilbody_newname(geom);  ** CHANGE NAME INDEX ** AND ** CHANGE NAME AFTER ON ** the name should be as entered in point 1

4. gpkg_geometry_columns INSERT 
    - 'soilbody_newname',  ** CHANGE NAME ** the name should be as entered in point 1

---



#  Database Structure Report


##  Table: `codelist`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `TEXT` |  | Codelist Voice Uri, and Primary Key of the Table. |
| `label` | `TEXT` |  | A word or phrase used to name or describe something, often to identify or classify it. |
| `definition` | `TEXT` |  | A clear explanation of the meaning of a word or concept. |
| `collection` | `TEXT` |  | Structured set of related elements, which share common characteristics and are managed with unique and persistent identifiers. |
| `featuretype` | `TEXT` |  | FIn case of codelists belonging to Properties, indicate the Feature Of Interest to which they can be applied. |
| `phenomenon` | `TEXT` |  | The type of phenomenon it belongs to, whether Chemical, Physical or Biological. |
| `featuretype_phenomenon` | `TEXT` |  | Working field, is the concatenation of the fields "featuretype" and "phenomenon". |
| `parent` | `TEXT` |  | Indicates the level of the hierarchically superior codelist to which it belongs. |

### Relationships (as child)
- None

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_codelist_collection_id` | No | `collection`, `id` | `c` | No |

### Triggers
- None

---

##  Table: `datastream`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | A unique, read-only attribute that serves as an identifier for the entity. |
| `name` | `TEXT` | NOT NULL | A property provides a label for Datastream entity, commonly a descriptive name. |
| `definition` | `TEXT` |  | The URI linking the Datastream to an external definition. Dereferencing this URI SHOULD result in a representation of the definition of the Datastream. |
| `description` | `TEXT` |  | The description of the Datastream entity. |
| `type` | `TEXT` | NOT NULL | The type attribute defines the type of the result and has the value Quantity. |
| `codespace` | `TEXT` |  | The codespace defines the reference framework that specifies the set of valid values which can be used as results. It ensures that the meaning of each code is interpreted correctly within a given context. |
| `iduom` | `INTEGER` |  | A Unit of Measure is a standard quantity used to express and compare measurements. |
| `value_min` | `REAL` |  | The minimum value defines the lowest numerical limit allowed within the data domain.. |
| `value_max` | `REAL` |  | The maximum value defines the highest numerical limit allowed within the data domain. |
| `observedarea` | `POLYGON` |  | The spatial bounding box of the spatial extent of the Feature that belong to the Observations associated with this Datastream. This is usually generated by the server. |
| `phenomenontime_start` | `DATETIME` |  | The start date of the temporal interval of the phenomenon times of all observations belonging to this Datastream. This is usually generated by the server. |
| `phenomenontime_end` | `DATETIME` |  | The end date of the temporal interval of the phenomenon times of all observations belonging to this Datastream. This is usually generated by the server. |
| `resulttime_start` | `DATETIME` |  | The start date of the temporal interval of the result times of all observations belonging to this Datastream. This is usually generated by the server. |
| `resulttime_end` | `DATETIME` |  | The end date of the temporal interval of the result times of all observations belonging to this Datastream. This is usually generated by the server.. |
| `properties` | `TEXT` |  | mime type: 'application/json'. A JSON Object containing user-annotated properties as key-value pairs. |
| `idfeature` | `INTEGER` |  | Foreign key to the Feature  table, id field. |
| `idthing` | `INTEGER` | NOT NULL | Foreign key to the Thing table, id field. |
| `idsensor` | `INTEGER` | NOT NULL | Foreign key to the Sensor table, id field. |
| `idobservedproperty` | `INTEGER` | NOT NULL | Foreign key to the Observed Property table, id field. |

### Relationships (as child)
- `datastream.idobservedproperty` → `observedproperty.id` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `observedproperty` cascades to `datastream`.
- `datastream.idsensor` → `sensor.id` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `sensor` cascades to `datastream`.
- `datastream.idthing` → `thing.id` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `thing` cascades to `datastream`.
- `datastream.idfeature` → `feature.id` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `feature` cascades to `datastream`.
- `datastream.iduom` → `unitofmeasure.id` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `unitofmeasure` cascades to `datastream`.

### Referenced by (as parent)
- `observation.iddatastream` → `datastream.id` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_datastream_observedproperty_id` | No | `idobservedproperty` | `c` | No |
| `idx_datastream_iduom` | No | `iduom` | `c` | No |
| `idx_datastream_idsensor` | No | `idsensor` | `c` | No |
| `idx_datastream_idthing` | No | `idthing` | `c` | No |
| `idx_datastream_idfeature` | No | `idfeature` | `c` | No |
| `idx_datastream_geom` | No | `observedarea` | `c` | No |

### Triggers
- **datastream_bi_bounds_consistency** — Before Insert, RAISE: `Datastream bounds: value_min must be less than or equal to value_max when both are provided.`
- **datastream_bu_bounds_consistency** — Before Update, RAISE: `Datastream bounds: value_min must be less than or equal to value_max when both are provided.`
- **datastream_bi_count_bounds_are_integers** — Before Insert, RAISE: `Type Count: value_min must be an integer (numerically integral).`
- **datastream_bu_count_bounds_are_integers** — Before Update, RAISE: `Type Count: value_min must be an integer (numerically integral).`
- **datastream_bu_bounds_validate_observations** — Before Update, RAISE: `Bounds update rejected: some existing observations have result_real below the new value_min.`

### Rules Applied to Fields Describing ResultType
The JSON object `resultType` (SWE-Common AbstractDataComponent), which represents the formal description of the structure of the `result` attribute of observations in a Datastream, is managed by decomposing its fields within the `datastream` table. This approach enforces specific rules to ensure data consistency based on the type of result.

To simplify management, it has been defined that each Datastream can have only one result type (one-to-one relationship), avoiding the complexity of a one-to-many relationship as in OGC models. This choice allows mapping the fields directly into the `datastream` table.

Specifically, the fields **Label** and **Definition** are not duplicated in the `datastream` table because they are already defined in the `ObservedProperty` entity. Both are retrieved through the foreign key `idobservedproperty` present in `datastream`:
- `label` corresponds to the `name` field of `ObservedProperty`.
- `definition` corresponds to the `definition` field of `ObservedProperty`.

Since both `idobservedproperty` in `datastream` and the fields `name` and `definition` in `ObservedProperty` are mandatory, no data loss occurs, and it is always possible to correctly reconstruct the JSON `resultType` object.

### Allowed Values of ResultType are: (listed constraints of each Type)
1. **type = Quantity**
   - Required: `iduom` (unit of measure).
   - Forbidden: `codespace`.
   - Optional: `value_min` and `value_max`.
   - Additional constraint: if both are present, `value_max > value_min`.

2. **type = Category**
   - Forbidden: `iduom`, `value_min`, and `value_max`.
   - Required: `codespace`.

3. **type = Boolean**
   - Forbidden: `iduom`, `codespace`, `value_min`, `value_max`.

4. **type = Text**
   - Forbidden: `iduom`, `codespace`, `value_min`, `value_max`.

5. **type = Count**
   - Forbidden: `iduom`, `codespace`.
   - Optional: `value_min` and `value_max`.
   - Additional constraint: if both are present, `value_max > value_min`.

---

##  Table: `derivedprofilepresenceinsoilbody`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `idsoilbody` | `TEXT` | NOT NULL | Foreign key to the SoilBody table. |
| `idsoilprofile` | `TEXT` | NOT NULL | Foreign key to the SoilProfile table, guidkey field. |
| `lowervalue` | `REAL` |  | Upper value. |
| `uppervalue` | `REAL` |  | Lower value. |

### Relationships (as child)
- `derivedprofilepresenceinsoilbody.idsoilprofile` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilprofile` cascades to `derivedprofilepresenceinsoilbody`.
- `derivedprofilepresenceinsoilbody.idsoilbody` → `soilbody.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilbody` cascades to `derivedprofilepresenceinsoilbody`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_derivedprofilepresenceinsoilbody_idsoilprofile` | No | `idsoilprofile` | `c` | No |
| `idx_derivedprofilepresenceinsoilbody_idsoilbody` | No | `idsoilbody` | `c` | No |
| `sqlite_autoindex_derivedprofilepresenceinsoilbody_1` | Yes | `idsoilbody`, `idsoilprofile` | `u` | No |

### Triggers
- **i_cecklowervaluesum** — Before Insert, RAISE: `Table derivedprofilepresenceinsoilbody: sum of lowervalue exceeds 100 for the same idsoilbody`
- **u_cecklowervaluesum** — Before Update, RAISE: `Table derivedprofilepresenceinsoilbody: sum of lowervalue exceeds 100 for the same idsoilbody`
- **i_checkisderived_soilbody** — Before Insert, RAISE: `Table derivedprofilepresenceinsoilbody:  Attention, the value of the "idsoilprofile" field  cannot be inserted because profile is not of type derived`
- **u_checkisderived_soilbody** — Before Update, RAISE: `Table derivedprofilepresenceinsoilbody:  Attention, the value of the "idsoilprofile" field  cannot be inserted because profile is not of type derived`

---

##  Table: `faohorizonnotationtype`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `faohorizondiscontinuity` | `INTEGER` |  | Number used to indicate a discontinuity in the horizon notation. |
| `faohorizonmaster_1` | `TEXT` | NOT NULL | First Symbol of the master part of the horizon notation. |
| `faohorizonmaster_2` | `TEXT` |  | Second Symbol of the master part of the horizon notation. |
| `faohorizonsubordinate_1` | `TEXT` |  | First Designations of subordinate distinctions and features within the master horizons and layers are based on profile characteristics observable in the field and are applied during the description of the soil at the site. |
| `faohorizonsubordinate_2` | `TEXT` |  | Second Designations of subordinate distinctions and features within the master horizons and layers are based on profile characteristics observable in the field and are applied during the description of the soil at the site. |
| `faohorizonsubordinate_3` | `TEXT` |  | Third Designations of subordinate distinctions and features within the master horizons and layers are based on profile characteristics observable in the field and are applied during the description of the soil at the site. |
| `faohorizonvertical` | `INTEGER` |  |  |
| `faoprime` | `TEXT` | NOT NULL | A prime and double prime may be used to connotate master horizon symbol of the lower of two respectively three horizons having identical Arabic-numeral prefixes and letter combinations. |
| `isoriginalclassification` | `BOOLEAN` | NOT NULL, DEFAULT 0 | Boolean value to indicate whether the FAO horizon notation was the original notation to describe the horizon. |
| `idprofileelement` | `TEXT` |  | Foreign key to the ProfileElement table,  guidkey field. |

### Relationships (as child)
- `faohorizonnotationtype.idprofileelement` → `profileelement.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `profileelement` cascades to `faohorizonnotationtype`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_faohorizonnotationtype_1` | Yes | `idprofileelement` | `u` | No |

### Triggers
- **i_checkfaoprofileelementtype** — Before Insert, RAISE: `Table faohorizonnotationtype: The associated profileelement must have profileelementtype = 0 (HORIZON)`
- **u_ceckfaoprofileelementtype** — Before Update, RAISE: `Table faohorizonnotationtype: The associated profileelement must have profileelementtype = 0 (HORIZON)`
- **i_faohorizonmaster_1** — Before Insert, RAISE: `Table faohorizonnotationtype: Invalid value for faohorizonmaster. Must be present in id of faohorizonmastervalue codelist.`
- **u_faohorizonmaster_1** — Before Update, RAISE: `Table faohorizonnotationtype: Invalid value for faohorizonmaster. Must be present in id of faohorizonmastervalue codelist.`
- **i_faohorizonmaster_2** — Before Insert, RAISE: `Table faohorizonnotationtype: Invalid value for faohorizonmaster. Must be present in id of faohorizonmastervalue codelist.`
- **u_faohorizonmaster_2** — Before Update, RAISE: `Table faohorizonnotationtype: Invalid value for faohorizonmaster. Must be present in id of faohorizonmastervalue codelist.`
- **i_faohorizonsubordinate_1** — Before Insert, RAISE: `Table faohorizonnotationtype: Invalid value for faohorizonsubordinate. Must be present in id of faohorizonsubordinatevalue codelist.`
- **u_faohorizonsubordinate_1** — Before Update, RAISE: `Table faohorizonnotationtype: Invalid value for faohorizonsubordinate. Must be present in id of faohorizonsubordinatevalue codelist.`
- **i_faohorizonsubordinate_2** — Before Insert, RAISE: `Table faohorizonnotationtype: Invalid value for faohorizonsubordinate. Must be present in id of faohorizonsubordinatevalue codelist.`
- **u_faohorizonsubordinate_2** — Before Update, RAISE: `Table faohorizonnotationtype: Invalid value for faohorizonsubordinate. Must be present in id of faohorizonsubordinatevalue codelist.`
- **i_faohorizonsubordinate_3** — Before Insert, RAISE: `Table faohorizonnotationtype: Invalid value for faohorizonsubordinate. Must be present in id of faohorizonsubordinatevalue codelist.`
- **u_faohorizonsubordinate_3** — Before Update, RAISE: `Table faohorizonnotationtype: Invalid value for faohorizonsubordinate. Must be present in id of faohorizonsubordinatevalue codelist.`
- **i_faoprime** — Before Insert, RAISE: `Table faohorizonnotationtype: Invalid value for faoprime. Must be present in id of faoprimevalue codelist.`
- **u_faoprime** — Before Update, RAISE: `Table faohorizonnotationtype: Invalid value for faoprime. Must be present in id of faoprimevalue codelist.`

---

##  Table: `feature`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | A unique, read-only attribute that serves as an identifier for the entity. |
| `name` | `TEXT` | NOT NULL | A property provides a label for Feature entity, commonly a descriptive name. |
| `definition` | `TEXT` |  | The URI the defines this FeatureType. Dereferencing this URI SHOULD result in a representation of the definition of the FeatureType. |
| `description` | `TEXT` |  | The description about the Feature. |
| `encodingtype` | `TEXT` | NOT NULL | The encoding type of the feature property. |
| `feature_soilsite` | `TEXT` |  | The detailed description of the feature Soil Site. The data type is defined by encodingType. |
| `feature_soilprofile` | `TEXT` |  | The detailed description of the feature Soil Profile. The data type is defined by encodingType. |
| `feature_profileelement` | `TEXT` |  | The detailed description of the feature Profile Element. The data type is defined by encodingType. |
| `feature_soilderivedobject` | `TEXT` |  | The detailed description of the feature Soil Derived Object. The data type is defined by encodingType. |
| `properties` | `TEXT` |  | mime type: 'application/json'. A JSON Object containing user-annotated properties as key-value pairs. |
| `idfeaturetype` | `INTEGER` |  | Foreign key to the Feature Type table, id field. |

### Relationships (as child)
- `feature.idfeaturetype` → `featuretype.id` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `featuretype` cascades to `feature`.
- `feature.feature_soilderivedobject` → `soilderivedobject.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilderivedobject` cascades to `feature`.
- `feature.feature_profileelement` → `profileelement.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `profileelement` cascades to `feature`.
- `feature.feature_soilprofile` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilprofile` cascades to `feature`.
- `feature.feature_soilsite` → `soilsite.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilsite` cascades to `feature`.

### Referenced by (as parent)
- `datastream.idfeature` → `feature.id` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_feature_idfeaturetype` | No | `idfeaturetype` | `c` | No |
| `sqlite_autoindex_feature_4` | Yes | `feature_soilderivedobject` | `u` | No |
| `sqlite_autoindex_feature_3` | Yes | `feature_profileelement` | `u` | No |
| `sqlite_autoindex_feature_2` | Yes | `feature_soilprofile` | `u` | No |
| `sqlite_autoindex_feature_1` | Yes | `feature_soilsite` | `u` | No |

### Triggers
- None

---

##  Table: `featuretype`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | A unique, read-only attribute that serves as an identifier for the entity. |
| `name` | `TEXT` | NOT NULL | A property provides a label for Feature entity, commonly a descriptive name. |
| `definition` | `TEXT` |  | The URI the defines this FeatureType. Dereferencing this URI SHOULD result in a representation of the definition of the FeatureType. |
| `description` | `TEXT` |  | The description about the Feature. |
| `properties` | `TEXT` |  | mime type: 'application/json'. A JSON Object containing user-annotated properties as key-value pairs. |

### Relationships (as child)
- None

### Referenced by (as parent)
- `feature.idfeaturetype` → `featuretype.id` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes
- None

### Triggers
- None

---

##  Table: `isbasedonobservedsoilprofile`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `idsoilderivedobject` | `TEXT` | NOT NULL | Foreign key to the SoilDerivedObject table, guidkey field. |
| `idsoilprofile` | `TEXT` | NOT NULL | Foreign key to the SoilProfile table, guidkey field. |

### Relationships (as child)
- `isbasedonobservedsoilprofile.idsoilprofile` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilprofile` cascades to `isbasedonobservedsoilprofile`.
- `isbasedonobservedsoilprofile.idsoilderivedobject` → `soilderivedobject.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilderivedobject` cascades to `isbasedonobservedsoilprofile`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_isbasedonobservedsoilprofile_idsoilprofile` | No | `idsoilprofile` | `c` | No |
| `idx_isbasedonobservedsoilprofile_idsoilderivedobject` | No | `idsoilderivedobject` | `c` | No |
| `sqlite_autoindex_isbasedonobservedsoilprofile_1` | Yes | `idsoilderivedobject`, `idsoilprofile` | `u` | No |

### Triggers
- **i_checkisobserved_dobj** — Before Insert, RAISE: `Table isbasedonobservedsoilprofile :  Attention, the value of the "idsoilprofile" field  cannot be inserted because profile is not of type observed`
- **u_checkisobserved_dobj** — Before Update, RAISE: `Table isbasedonobservedsoilprofile :  Attention, the value of the "idsoilprofile" field  cannot be inserted because profile is not of type observed`

---

##  Table: `isbasedonsoilbody`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `idsoilderivedobject` | `TEXT` | NOT NULL | Foreign key to the SoilDerivedObject table, guidkey field. |
| `idsoilbody` | `TEXT` | NOT NULL | Foreign key to the SoilBody table, guidkey field. |

### Relationships (as child)
- `isbasedonsoilbody.idsoilbody` → `soilbody.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilbody` cascades to `isbasedonsoilbody`.
- `isbasedonsoilbody.idsoilderivedobject` → `soilderivedobject.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilderivedobject` cascades to `isbasedonsoilbody`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_isbasedonsoilbody_idsoilbody` | No | `idsoilbody` | `c` | No |
| `idx_isbasedonsoilbody_idsoilderivedobject` | No | `idsoilderivedobject` | `c` | No |
| `sqlite_autoindex_isbasedonsoilbody_1` | Yes | `idsoilderivedobject`, `idsoilbody` | `u` | No |

### Triggers
- None

---

##  Table: `isbasedonsoilderivedobject`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `base_id` | `TEXT` | NOT NULL | Foreign key to the SoilDerivedObject table, guidkey field. - Base SoilDerivedObject. |
| `related_id` | `TEXT` | NOT NULL | Foreign key to the SoilDerivedObject table, guidkey field. - Derived SoilDerivedObject. |

### Relationships (as child)
- `isbasedonsoilderivedobject.related_id` → `soilderivedobject.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilderivedobject` cascades to `isbasedonsoilderivedobject`.
- `isbasedonsoilderivedobject.base_id` → `soilderivedobject.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilderivedobject` cascades to `isbasedonsoilderivedobject`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_isbasedonsoilderivedobject_related_id` | No | `related_id` | `c` | No |
| `idx_isbasedonsoilderivedobject_base_id` | No | `base_id` | `c` | No |
| `sqlite_autoindex_isbasedonsoilderivedobject_1` | Yes | `base_id`, `related_id` | `u` | No |

### Triggers
- None

---

##  Table: `isderivedfrom`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `base_id` | `TEXT` | NOT NULL | Foreign key to the SoilProfile table, guidkey field. - Observed Soil Profile. |
| `related_id` | `TEXT` | NOT NULL | Foreign key to the SoilProfile table, guidkey field. - Derived Soil Profile. |

### Relationships (as child)
- `isderivedfrom.related_id` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilprofile` cascades to `isderivedfrom`.
- `isderivedfrom.base_id` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilprofile` cascades to `isderivedfrom`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_isderivedfrom_related_id` | No | `related_id` | `c` | No |
| `idx_isderivedfrom_base_id` | No | `base_id` | `c` | No |
| `sqlite_autoindex_isderivedfrom_1` | Yes | `base_id`, `related_id` | `u` | No |

### Triggers
- **i_checkisderived** — Before Insert, RAISE: `Table isderivedfrom:  Attention, the value of the "base_id" field in the "isderivedfrom" table cannot be inserted because profile is not of type derived`
- **u_checkisderived** — Before Update, RAISE: `Table isderivedfrom:  Attention, the value of the "base_id" field in the "isderivedfrom" table cannot be inserted because profile is not of type derived`
- **i_checkisobserved** — Before Insert, RAISE: `Table isderivedfrom:  Attention, the value of the "related_id" field in the "isderivedfrom" table cannot be inserted because profile is not of type observed`
- **u_checkisobserved** — Before Update, RAISE: `Table isderivedfrom:  Attention, the value of the "related_id" field in the "isderivedfrom" table cannot be inserted because profile is not of type observed`

---

##  Table: `observation`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | A unique, read-only attribute that serves as an identifier for the entity. |
| `phenomenontime_start` | `DATETIME` | NOT NULL, DEFAULT strftime('%Y-%m-%dT%H:%M:%fZ', 'now') | The time instant when the Observation happens, or the start time if it happens over a period. |
| `phenomenontime_end` | `DATETIME` |  | The end time if the Observation happens over a period. |
| `result_text` | `TEXT` |  | The estimated value of an ObservedProperty from the Observation, when the Type is Category or Text. |
| `result_real` | `REAL` |  | The estimated value of an ObservedProperty from the Observation, when the Type is Quantity or Count. |
| `result_boolean` | `BOOLEAN` |  | The estimated value of an ObservedProperty from the Observation, when the Type is Boolean. |
| `resulttime` | `DATETIME` |  | The time of the Observation’s result was generated. |
| `validtime_start` | `DATETIME` |  | The start time of the period during which the result may be used. |
| `validtime_end` | `DATETIME` |  | The end time of the period during which the result may be used. |
| `properties` | `TEXT` |  | mime type: 'application/json'. A JSON Object containing user-annotated properties as key-value pairs. |
| `iddatastream` | `INTEGER` | NOT NULL | Foreign key to the Datstream table, id field. |

### Relationships (as child)
- `observation.iddatastream` → `datastream.id` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `datastream` cascades to `observation`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_observation_ds_result_real` | No | `iddatastream`, `result_real` | `c` | No |
| `idx_observation_ds_times` | No | `iddatastream`, `phenomenontime_start`, `phenomenontime_end` | `c` | No |
| `idx_observation_iddatastream` | No | `iddatastream` | `c` | No |

### Triggers
- **observation_ai_recalc_ds_times** — After Insert
- **observation_au_recalc_ds_times** — After Update
- **observation_ad_recalc_ds_times** — After Delete
- **observation_bi_type_constraints** — Before Insert, RAISE: `Type Quantity: result_real must be NOT NULL; result_text and result_boolean must be NULL.`
- **observation_bu_type_constraints** — Before Update, RAISE: `Type Quantity: result_real must be NOT NULL; result_text and result_boolean must be NULL.`

### Alignment of the Datastream Time Window
To maintain in `datastream` a consistent summary of the temporal coverage of its observations, there are three triggers that recompute the fields `datastream.phenomenontime_start` (MIN) and `datastream.phenomenontime_end` (MAX) with respect to all related rows in `observation`:
- `observation_ai_recalc_ds_times` (AFTER INSERT): upon a new insert, recomputes MIN/MAX on the datastream of `NEW.iddatastream`.
- `observation_au_recalc_ds_times` (AFTER UPDATE OF phenomenontime_*, iddatastream): recomputes for the new datastream; if the observation has been moved across series, it also recomputes for the old datastream.
- `observation_ad_recalc_ds_times` (AFTER DELETE): upon deletion, recomputes MIN/MAX on the datastream of `OLD.iddatastream`.

To support these recurring aggregations, recommended indexes are defined:
- `idx_observation_ds_times (iddatastream, phenomenontime_start, phenomenontime_end)`

### Result Compliance Based on `datastream.type`
Two BEFORE triggers (INSERT and UPDATE) apply expected structure and domain rules to the observation’s `result`, according to the type defined in the linked datastream row:
- `observation_bi_type_constraints` (BEFORE INSERT)
- `observation_bu_type_constraints` (BEFORE UPDATE OF result_*, iddatastream)

The rules by type are:

### Quantity
- Expected structure: only `result_real` NOT NULL; `result_text` and `result_boolean` must be NULL.
- Constraints with respect to the bounds (if configured in the datastream):
  - if `value_min` is not NULL → `result_real >= value_min`;
  - if `value_max` is not NULL → `result_real <= value_max`.

### Category
- Expected structure: only `result_text` NOT NULL; `result_real` and `result_boolean` must be NULL.
- Codelist membership: `result_text` must exist as `codelist.id` in the collection equal to `datastream.codespace` (join by collection).

### Boolean
- Expected structure: only `result_boolean` NOT NULL with value 0 or 1; `result_text` and `result_real` must be NULL.

### Count
- Expected structure: only `result_real` NOT NULL, but it must be integer in value (comparison `result_real = CAST(result_real AS INTEGER)`). `result_text` and `result_boolean` must be NULL.
- Constraints with respect to the bounds (if present in the datastream):
  - if `value_min` is not NULL → `result_real >= value_min`;
  - if `value_max` is not NULL → `result_real <= value_max`.

### Text
- Expected structure: only `result_text` NOT NULL; `result_real` and `result_boolean` must be NULL.

### Bounds Consistency Between Datastream and Observations (Related Logic)
Although they are not triggers “of the observation table,” two triggers on `datastream` ensure that any changes to `value_min`/`value_max` do not make existing observations inconsistent:
- `datastream_bu_bounds_validate_observations` (BEFORE UPDATE OF value_min, value_max) blocks the update if there exist observations (for that datastream) with `result_real` outside the new limits. Applies to types Quantity and Count.
- In addition, `datastream_bi/bu_bounds_consistency` prevent setting `value_min > value_max` when both are non-NULL.
- For Count, `datastream_bi/bu_count_bounds_are_integers` enforce that the extrema, if present, are integers in value (the “integer” form is verified with numeric cast, e.g., 3.0 is accepted).

This family therefore guarantees semantic stability: you cannot tighten a series’ admissibility interval in such a way as to “expel” measurements already acquired.

### Error Messages and Diagnosis
The triggers use `RAISE(ABORT, '...')` with specific messages (e.g., “Type Quantity: result_real is below value_min.”, “Type Category: result_text must exist in codelist...”), facilitating diagnosis during data ingestion and ETL automation.

---

##  Table: `observedproperty`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | A unique, read-only attribute that serves as an identifier for the entity. |
| `name` | `TEXT` | NOT NULL | A property provides a label for ObservedProperty entity, commonly a descriptive name. |
| `definition` | `TEXT` | NOT NULL | The URI of the ObservedProperty. Dereferencing this URI SHOULD result in a representation of the definition of the ObservedProperty. The definition SHOULD be unique in a service. |
| `description` | `TEXT` |  | A description about the ObservedProperty. |
| `properties` | `TEXT` |  | mime type: 'application/json'. A JSON Object containing user-annotated properties as key-value pairs. |

### Relationships (as child)
- None

### Referenced by (as parent)
- `datastream.idobservedproperty` → `observedproperty.id` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes
- None

### Triggers
- None

---

##  Table: `otherhorizon_profileelement`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `idprofileelement` | `TEXT` | NOT NULL | Foreign key to the ProfileElement table, guidkey field. |
| `idotherhorizonnotationtype` | `TEXT` | NOT NULL | Foreign key to the OtherhorizonNotationType table, guidkey field. |

### Relationships (as child)
- `otherhorizon_profileelement.idotherhorizonnotationtype` → `otherhorizonnotationtype.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `otherhorizonnotationtype` cascades to `otherhorizon_profileelement`.
- `otherhorizon_profileelement.idprofileelement` → `profileelement.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `profileelement` cascades to `otherhorizon_profileelement`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_otherhorizon_profileelement_idotherhorizonnotationtype` | No | `idotherhorizonnotationtype` | `c` | No |
| `idx_otherhorizon_profileelement_idprofileelement` | No | `idprofileelement` | `c` | No |
| `sqlite_autoindex_otherhorizon_profileelement_1` | Yes | `idprofileelement`, `idotherhorizonnotationtype` | `u` | No |

### Triggers
- **i_ceckothprofileelementtype** — Before Insert, RAISE: `Table otherhorizon_profileelement: The associated profileelement must have profileelementtype = 0 (HORIZON)`
- **u_ceckothprofileelementtype** — Before Update, RAISE: `Table otherhorizon_profileelement: The associated profileelement must have profileelementtype = 0 (HORIZON)`

---

##  Table: `otherhorizonnotationtype`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guidkey` | `TEXT` |  | Universally unique identifier. |
| `horizonnotation` | `TEXT` | NOT NULL | Notation characterizing the soil horizon according to a specified classification system. |
| `diagnostichorizon` | `TEXT` |  | Codelist wrbdiagnostichorizonvalue. |
| `isoriginalclassification` | `BOOLEAN` | NOT NULL, DEFAULT 0 | Boolean value to indicate whether the specified horizon notation system was the original notation system to describe the horizon. |
| `otherhorizonnotation` | `TEXT` |  |  |

### Relationships (as child)
- None

### Referenced by (as parent)
- `otherhorizon_profileelement.idotherhorizonnotationtype` → `otherhorizonnotationtype.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_otherhorizonnotationtype_1` | Yes | `guidkey` | `u` | No |

### Triggers
- **otherhorizonnotationtypeguid** — After Insert
- **otherhorizonnotationtypeguidupdate** — After Update
- **i_otherhorizonnotationtype** — Before Insert, RAISE: `Table otherhorizonnotationtype: Invalid value for horizonnotation. Must be present in id of otherhorizonnotationtypevalue codelist.`
- **u_otherhorizonnotationtype** — Before Update, RAISE: `Table otherhorizonnotationtype: Invalid value for horizonnotation. Must be present in id of otherhorizonnotationtypevalue codelist.`
- **i_diagnostichorizon** — Before Insert, RAISE: `Table otherhorizonnotationtype: Invalid value for diagnostichorizon. Must be present in the relativecodelist.`
- **u_diagnostichorizon** — Before Update, RAISE: `Table otherhorizonnotationtype: Invalid value for diagnostichorizon. Must be present in the relativecodelist.`

---

##  Table: `othersoilnametype`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `othersoilname_type` | `TEXT` | NOT NULL | Name of the soil profile according to a specific classification scheme. |
| `othersoilname_class` | `TEXT` |  | Specific classification scheme. |
| `isoriginalclassification` | `BOOLEAN` | NOT NULL, DEFAULT 0 | Boolean value to indicate whether the specified classification scheme was the original classification scheme to describe the profile. |
| `othersoilname` | `TEXT` |  | Foreign key to the SoilProfile table, guidkey field. |

### Relationships (as child)
- `othersoilnametype.othersoilname` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilprofile` cascades to `othersoilnametype`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_othersoilnametype_othersoilname` | No | `othersoilname` | `c` | No |

### Triggers
- **i_soilname** — Before Insert, RAISE: `Table othersoilnametype: Invalid value for othersoilname_type. Must be present in id of othersoilnametypevalue codelist.`
- **u_soilname** — Before Update, RAISE: `Table othersoilnametype: Invalid value for othersoilname_type. Must be present in id of othersoilnametypevalue codelist.`

---

##  Table: `particlesizefractiontype`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `fractioncontent` | `REAL` | NOT NULL | Percentage of the defined fraction. |
| `particlesize_lower` | `INTEGER` | NOT NULL |  |
| `particlesize_upper` | `INTEGER` | NOT NULL |  |
| `idprofileelement` | `TEXT` | NOT NULL | Foreign key to the ProfileElement table, guidkey field. |

### Relationships (as child)
- `particlesizefractiontype.idprofileelement` → `profileelement.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `profileelement` cascades to `particlesizefractiontype`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_particlesizefractiontype_idprofileelement` | No | `idprofileelement` | `c` | No |

### Triggers
- **i_check_fraction_sum** — Before Insert, RAISE: `The sum of fractioncontent for idprofileelement cannot exceed 100`
- **u_check_fraction_sum** — Before Update, RAISE: `The sum of fractioncontent for idprofileelement cannot exceed 100`
- **i_check_particlesize_overlap** — Before Insert, RAISE: `New range overlaps with or touches an existing range for the same idprofileelement`
- **u_check_particlesize_overlap** — Before Update, RAISE: `New range overlaps with or touches an existing range for the same idprofileelement`

---

##  Table: `profileelement`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guidkey` | `TEXT` |  | Universally unique identifier. |
| `inspireid_localid` | `TEXT` |  | A local identifier, assigned by the data provider. The local identifier is unique within the namespace, that is no other spatial object carries the same unique identifier. |
| `inspireid_namespace` | `TEXT` |  | Namespace uniquely identifying the data source of the spatial object. |
| `inspireid_versionid` | `TEXT` |  | The identifier of the particular version of the spatial object, with a maximum length of 25 characters. If the specification of a spatial object type with an external object identifier includes life-cycle information, the version identifier is used to distinguish between the different versions of a spatial object. Within the set of all versions of a spatial object, the version identifier is unique. |
| `profileelementdepthrange_uppervalue` | `INTEGER` |  | Upper depth of the profile element (layer or horizon) measured from the surface of a soil profile (in cm). |
| `profileelementdepthrange_lowervalue` | `INTEGER` |  | Lower depth of the profile element (layer or horizon) measured from the surface of a soil profile (in cm). |
| `beginlifespanversion` | `DATETIME` | NOT NULL, DEFAULT strftime('%Y-%m-%dT%H:%M:%fZ', 'now') | Date and time at which this version of the spatial object was inserted or changed in the spatial data set. |
| `endlifespanversion` | `DATETIME` |  | Date and time at which this version of the spatial object was superseded or retired in the spatial data set. |
| `layertype` | `TEXT` |  | Assignation of a layer according to the concept that fits its kind. |
| `layerrocktype` | `TEXT` |  | Type of the material in which the layer developed. |
| `layergenesisprocess` | `TEXT` |  | Last non-pedogenic process (geologic or anthropogenic) that coined the material composition and internal structure of the layer. |
| `layergenesisenviroment` | `TEXT` |  | Setting in which the last non-pedogenic process (geologic or anthropogenic) that coined the material composition and internal structure of the layer took place. |
| `layergenesisprocessstate` | `TEXT` |  | Indication whether the process specified in layerGenesisProcess is on-going or seized in the past. |
| `profileelementtype` | `BOOLEAN` | NOT NULL, DEFAULT 0 | Boolean value to indicate whether the record is of Horizon or Layer type. |
| `ispartof` | `TEXT` | NOT NULL | Foreign key to the SoilProfile table, guidkey field. |

### Relationships (as child)
- `profileelement.ispartof` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilprofile` cascades to `profileelement`.

### Referenced by (as parent)
- `faohorizonnotationtype.idprofileelement` → `profileelement.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `feature.feature_profileelement` → `profileelement.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `otherhorizon_profileelement.idprofileelement` → `profileelement.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `particlesizefractiontype.idprofileelement` → `profileelement.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_profileelement_ispartof` | No | `ispartof` | `c` | No |
| `sqlite_autoindex_profileelement_1` | Yes | `guidkey` | `u` | No |

### Triggers
- **profileelementguid** — After Insert
- **profileelementguidupdate** — After Update
- **i_ceckvalidversionprofileelement** — Before Insert, RAISE: `Table profileelement: beginlifespanversion must be less than endlifespanversion`
- **i_ceckvaliddeepprofileelement** — Before Insert, RAISE: `Table profileelement: profileelementdepthrange_uppervalue must be less than profileelementdepthrange_lowervalue`
- **u_ceckvaliddeepprofileelement** — Before Update, RAISE: `Table profileelement: profileelementdepthrange_uppervalue must be less than profileelementdepthrange_lowervalue`
- **i_checkgeogenicfieldsnull** — Before Insert, RAISE: `layerrocktype must be NULL when LayerTypeValue is not "geogenic".`
- **u_checkgeogenicfieldsnotnull** — Before Update, RAISE: `layerrocktype must be NULL when LayerTypeValue is not "geogenic".`
- **i_ceckhorizonfields** — Before Insert, RAISE: `layertype must be NULL when profilelement is "HORIZON".`
- **u_ceckhorizonfields** — Before Update, RAISE: `layertype must be NULL when profilelement is "HORIZON".`
- **i_layertype** — Before Insert, RAISE: `Table profileelement: Invalid value for layertype. Must be present in id of layertypevalue codelist.`
- **u_layertype** — Before Update, RAISE: `Table profileelement: Invalid value for layertype. Must be present in id of layertypevalue codelist.`
- **i_layergenesisenviroment** — Before Insert, RAISE: `Table profileelement: Invalid value for layergenesisenviroment. Must be present in id of eventenvironmentvalue codelist.`
- **u_layergenesisenviroment** — Before Update, RAISE: `Table profileelement: Invalid value for layergenesisenviroment. Must be present in id of eventenvironmentvalue codelist.`
- **i_layergenesisprocess** — Before Insert, RAISE: `Table profileelement: Invalid value for layergenesisprocess. Must be present in id of  eventprocessvalue codelist.`
- **u_layergenesisprocess** — Before Update, RAISE: `Table profileelement: Invalid value for layergenesisprocess. Must be present in id of eventprocessvalue codelist.`
- **i_layergenesisprocessstate** — Before Insert, RAISE: `Table profileelement: Invalid value for layergenesisprocessstate. Must be present in id of layergenesisprocessstatevalue codelist.`
- **u_layergenesisprocessstate** — Before Update, RAISE: `Table profileelement: Invalid value for layergenesisprocessstate. Must be present in id of layergenesisprocessstatevalue codelist.`
- **i_layerrocktype** — Before Insert, RAISE: `Table profileelement: Invalid value for layerrocktype. Must be present in id of lithologyvalue codelist .`
- **u_layerrocktype** — Before Update, RAISE: `Table profileelement: Invalid value for layerrocktype. Must be present in id of lithologyvalue codelist.`
- **i_check_depth_range** — Before Insert, RAISE: `At least one of profileelementdepthrange_uppervalue and profileelementdepthrange_lowervalue must not be null`
- **u_check_depth_range** — Before Update, RAISE: `At least one of profileelementdepthrange_uppervalue and profileelementdepthrange_lowervalue must not be null`
- **u_begin_today_profileelement** — After Update
- **u_begin_today_profileelement_error** — After Update, RAISE: `If you change record endlifespanversion must be greater than today`

---

##  Table: `sensor`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | A unique, read-only attribute that serves as an identifier for the entity. |
| `name` | `TEXT` | NOT NULL | A property provides a label for Sensor entity, commonly a descriptive name. |
| `definition` | `TEXT` |  | The URI linking the Thing to an external definition. Dereferencing this URI SHOULD result in a representation of the definition of the Thing. |
| `description` | `TEXT` |  | The description of the Sensor entity. |
| `encodingtype` | `TEXT` |  | The encoding type of the metadata property. If the metadata field is present, an encodingType must be specified. |
| `metadata` | `TEXT` |  | The detailed description of the Sensor or system. The metadata type is defined by encodingType. |
| `properties` | `TEXT` |  | mime type: 'application/json'. A JSON Object containing user-annotated properties as key-value pairs. |

### Relationships (as child)
- None

### Referenced by (as parent)
- `datastream.idsensor` → `sensor.id` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes
- None

### Triggers
- None

---

##  Table: `soilbody`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guidkey` | `TEXT` |  | Universally unique identifier. |
| `inspireid_localid` | `TEXT` |  | A local identifier, assigned by the data provider. The local identifier is unique within the namespace, that is no other spatial object carries the same unique identifier. |
| `inspireid_namespace` | `TEXT` |  | Namespace uniquely identifying the data source of the spatial object. |
| `inspireid_versionid` | `TEXT` |  | The identifier of the particular version of the spatial object, with a maximum length of 25 characters. If the specification of a spatial object type with an external object identifier includes life-cycle information, the version identifier is used to distinguish between the different versions of a spatial object. Within the set of all versions of a spatial object, the version identifier is unique. |
| `beginlifespanversion` | `DATETIME` | NOT NULL, DEFAULT strftime('%Y-%m-%dT%H:%M:%fZ', 'now') | Date and time at which this version of the spatial object was inserted or changed in the spatial data set. |
| `endlifespanversion` | `DATETIME` |  | Date and time at which this version of the spatial object was superseded or retired in the spatial data set. |
| `soilbodylabel` | `TEXT` | NOT NULL | Label to identify the soil body according to the specified reference framework (metadata). |

### Relationships (as child)
- None

### Referenced by (as parent)
- `derivedprofilepresenceinsoilbody.idsoilbody` → `soilbody.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `isbasedonsoilbody.idsoilbody` → `soilbody.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `soilbody_geom.idsoilbody` → `soilbody.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_soilbody_1` | Yes | `guidkey` | `u` | No |

### Triggers
- **soilbodyguid** — After Insert
- **soilbodyguidupdate** — After Update
- **i_ceckvalidversionsoilbody** — Before Insert, RAISE: `Table soilbody: beginlifespanversion must be less than endlifespanversion`
- **u_begin_today_soilbody** — After Update
- **u_begin_today_soilbody_error** — After Update, RAISE: `If you change record endlifespanversion must be greater than today`

---

##  Table: `soilbody_geom`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `geom` | `MULTIPOLYGON` | NOT NULL | Geometry. |
| `idsoilbody` | `TEXT` | NOT NULL | Foreign key to the SoilBody table. |

### Relationships (as child)
- `soilbody_geom.idsoilbody` → `soilbody.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilbody` cascades to `soilbody_geom`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_soilbody_geom_idsoilbody` | No | `idsoilbody` | `c` | No |
| `idx_soiBody_geom` | No | `geom` | `c` | No |

### Triggers
- None

---

##  Table: `soilderivedobject`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guidkey` | `TEXT` |  | Universally unique identifier. |
| `inspireid_localid` | `TEXT` |  | A local identifier, assigned by the data provider. The local identifier is unique within the namespace, that is no other spatial object carries the same unique identifier. |
| `inspireid_namespace` | `TEXT` |  | Namespace uniquely identifying the data source of the spatial object. |
| `inspireid_versionid` | `TEXT` |  | The identifier of the particular version of the spatial object, with a maximum length of 25 characters. If the specification of a spatial object type with an external object identifier includes life-cycle information, the version identifier is used to distinguish between the different versions of a spatial object. Within the set of all versions of a spatial object, the version identifier is unique. |
| `accessuri` | `TEXT` |  | SoilDerivedObject URI. |
| `geometry` | `POLYGON` |  | Geometry. |

### Relationships (as child)
- None

### Referenced by (as parent)
- `feature.feature_soilderivedobject` → `soilderivedobject.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `isbasedonobservedsoilprofile.idsoilderivedobject` → `soilderivedobject.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `isbasedonsoilbody.idsoilderivedobject` → `soilderivedobject.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `isbasedonsoilderivedobject.related_id` → `soilderivedobject.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `isbasedonsoilderivedobject.base_id` → `soilderivedobject.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_soilderivedobject_geom` | No | `geometry` | `c` | No |
| `sqlite_autoindex_soilderivedobject_1` | Yes | `guidkey` | `u` | No |

### Triggers
- **soilderivedobjectguid** — After Insert
- **soilderivedobjectguidupdate** — After Update

---

##  Table: `soilplot`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guidkey` | `TEXT` |  |  |
| `soilplotlocation` | `POINT` | NOT NULL | Geometry. |
| `inspireid_localid` | `TEXT` |  |  |
| `inspireid_namespace` | `TEXT` |  |  |
| `inspireid_versionid` | `TEXT` |  |  |
| `soilplottype` | `TEXT` | NOT NULL |  |
| `beginlifespanversion` | `DATETIME` | NOT NULL, DEFAULT strftime('%Y-%m-%dT%H:%M:%fZ', 'now') |  |
| `endlifespanversion` | `DATETIME` |  |  |
| `locatedon` | `TEXT` |  | Foreign key to the SoilSite table, guidkey field. |

### Relationships (as child)
- `soilplot.locatedon` → `soilsite.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** NO ACTION)

### Referenced by (as parent)
- `soilprofile.location` → `soilplot.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_soilplot_locatedon` | No | `locatedon` | `c` | No |
| `idx_soilplot_geom` | No | `soilplotlocation` | `c` | No |
| `sqlite_autoindex_soilplot_1` | Yes | `guidkey` | `u` | No |

### Triggers
- **soilplotguid** — After Insert
- **soilplotguidupdate** — After Update
- **i_ceckvalidversionsoilplot** — Before Insert, RAISE: `Table soilplot: beginlifespanversion must be less than endlifespanversion`
- **i_soilplottype** — Before Insert, RAISE: `Table soilplot: Invalid value for soilplottype. Must be present in id of  soilplottypevalue codelist.`
- **u_soilplottype** — Before Update, RAISE: `Table soilplot: Invalid value for soilplottype. Must be present in id of soilplottypevalue codelist.`
- **u_begin_today_soilplot** — After Update
- **u_begin_today_soilplot_error** — After Update, RAISE: `If you change record endlifespanversion must be greater than today`

---

##  Table: `soilprofile`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guidkey` | `TEXT` |  | Universally unique identifier. |
| `inspireid_localid` | `TEXT` |  | A local identifier, assigned by the data provider. The local identifier is unique within the namespace, that is no other spatial object carries the same unique identifier. |
| `inspireid_namespace` | `TEXT` |  | Namespace uniquely identifying the data source of the spatial object. |
| `inspireid_versionid` | `TEXT` |  | The identifier of the particular version of the spatial object, with a maximum length of 25 characters. If the specification of a spatial object type with an external object identifier includes life-cycle information, the version identifier is used to distinguish between the different versions of a spatial object. Within the set of all versions of a spatial object, the version identifier is unique. |
| `localidentifier` | `TEXT` |  | Unique identifier of the soil profile given by the data provider of the dataset. |
| `beginlifespanversion` | `DATETIME` | NOT NULL, DEFAULT strftime('%Y-%m-%dT%H:%M:%fZ', 'now') | Date and time at which this version of the spatial object was inserted or changed in the spatial data set. |
| `endlifespanversion` | `DATETIME` |  | Date and time at which this version of the spatial object was superseded or retired in the spatial data set. |
| `validfrom` | `DATETIME` | NOT NULL, DEFAULT strftime('%Y-%m-%dT%H:%M:%fZ', 'now') | The time when the phenomenon started to exist in the real world. |
| `validto` | `DATETIME` |  | The time from which the phenomenon no longer exists in the real world. |
| `isderived` | `BOOLEAN` | NOT NULL, DEFAULT 0 | Boolean value to indicate whether the record is of Derived or Observed type. |
| `wrbversion` | `TEXT` |  | Indicates the WRB classification version. |
| `wrbreferencesoilgroup` | `TEXT` |  | First level of classification of the World Reference Base for Soil Resources. |
| `isoriginalclassification` | `BOOLEAN` | NOT NULL, DEFAULT 1 | Boolean value to indicate whether the WRB classification system was the original classification system to describe the soil profile. |
| `location` | `TEXT` |  | Foreign key to the SoilPlot table, guidkey field. |

### Relationships (as child)
- `soilprofile.location` → `soilplot.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilplot` cascades to `soilprofile`.

### Referenced by (as parent)
- `derivedprofilepresenceinsoilbody.idsoilprofile` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `feature.feature_soilprofile` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `isbasedonobservedsoilprofile.idsoilprofile` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `isderivedfrom.related_id` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `isderivedfrom.base_id` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `othersoilnametype.othersoilname` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `profileelement.ispartof` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `wrbqualifiergroup_profile.idsoilprofile` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_soilprofile_2` | Yes | `location` | `u` | No |
| `sqlite_autoindex_soilprofile_1` | Yes | `guidkey` | `u` | No |

### Triggers
- **soilprofileguid** — After Insert
- **soilprofileguidupdate** — After Update
- **i_ceckvalidperiodsoilprofile** — Before Insert, RAISE: `Table soilprofile: validto must be less than validfrom`
- **u_ceckvalidperiodsoilprofile** — Before Update, RAISE: `Table soilprofile: validto must be less than validfrom`
- **i_ceckvalidversionsoilprofile** — Before Insert, RAISE: `Table soilprofile: beginlifespanversion must be less than endlifespanversion`
- **i_ceckprofileLocation** — Before Insert, RAISE: `Table soilprofile:  For DERIVED profile  (isderived = 1), location must be NULL`
- **u_ceckprofileLocation** — Before Update, RAISE: `Table soilprofile:  For DERIVED profile  (isderived = 1), location must be NULL`
- **i_ceckprofileLocationobserved** — Before Insert, RAISE: `Table soilprofile:  For OBSERVED profile  (isderived = 0), location must be NOT NULL`
- **u_ceckprofileLocationobserved** — Before Insert, RAISE: `Table soilprofile:  For OBSERVED profile  (isderived = 0), location must be NOT NULL`
- **i_wrbreferencesoilgroup** — Before Insert, RAISE: `Table soilprofile: Invalid value for wrbversion. Must be present in id of the correct year codelist collection.`
- **u_wrbreferencesoilgroup** — Before Update, RAISE: `Table soilprofile: Invalid value for wrbversion. Must be present in id of the correct year codelist collection.`
- **u_begin_today_soilprofile** — After Update
- **u_begin_today_soilprofile_error** — After Update, RAISE: `If you change record endlifespanversion must be greater than today`
- **i_wrbproversion** — Before Insert, RAISE: `Table soilprofile: Invalid value for wrbversion. Must be present in id of wrbreferencesoilgroupvalue codelist.`
- **u_wrbproversion** — Before Update, RAISE: `Table soilprofile: Invalid value for wrbversion. Must be present in id of wrbreferencesoilgroupvalue codelist.`

---

##  Table: `soilsite`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guidkey` | `TEXT` |  | Universally unique identifier |
| `geometry` | `POLYGON` | NOT NULL | Geometry. |
| `inspireid_localid` | `TEXT` |  | A local identifier, assigned by the data provider. The local identifier is unique within the namespace, that is no other spatial object carries the same unique identifier. |
| `inspireid_namespace` | `TEXT` |  | Namespace uniquely identifying the data source of the spatial object. |
| `inspireid_versionid` | `TEXT` |  | The identifier of the particular version of the spatial object, with a maximum length of 25 characters. If the specification of a spatial object type with an external object identifier includes life-cycle information, the version identifier is used to distinguish between the different versions of a spatial object. Within the set of all versions of a spatial object, the version identifier is unique. |
| `soilinvestigationpurpose` | `TEXT` | NOT NULL | Indication why a survey was conducted. |
| `validfrom` | `DATETIME` | NOT NULL, DEFAULT strftime('%Y-%m-%dT%H:%M:%fZ', 'now') | The time when the phenomenon started to exist in the real world. |
| `validto` | `DATETIME` |  | The time from which the phenomenon no longer exists in the real world. |
| `beginlifespanversion` | `DATETIME` | NOT NULL, DEFAULT strftime('%Y-%m-%dT%H:%M:%fZ', 'now') | Date and time at which this version of the spatial object was inserted or changed in the spatial data set. |
| `endlifespanversion` | `DATETIME` |  | Date and time at which this version of the spatial object was superseded or retired in the spatial data set. |

### Relationships (as child)
- None

### Referenced by (as parent)
- `feature.feature_soilsite` → `soilsite.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `soilplot.locatedon` → `soilsite.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** NO ACTION)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_soilsite_geom` | No | `geometry` | `c` | No |
| `sqlite_autoindex_soilsite_1` | Yes | `guidkey` | `u` | No |

### Triggers
- **soilsiteguid** — After Insert
- **soilsiteguidupdate** — After Update
- **i_ceckvalidperiodsoilsite** — Before Insert, RAISE: `Table soilsite: validto must be less than validfrom`
- **u_ceckvalidperiodsoilsite** — Before Update, RAISE: `Table soilsite: validto must be less than validfrom`
- **i_ceckvalidversionsoilsite** — Before Insert, RAISE: `Table soilsite: beginlifespanversion must be less than endlifespanversion`
- **i_soilinvestigationpurpose** — Before Insert, RAISE: `Table soilsite: Invalid value for soilinvestigationpurpose. Must be present in id of soilinvestigationpurposevalue codelist.`
- **u_soilinvestigationpurpose** — Before Update, RAISE: `Table soilsite: Invalid value for soilinvestigationpurpose. Must be present in id of soilinvestigationpurposevalue codelist.`
- **u_begin_today_soilsite** — After Update
- **u_begin_today_soilsite_error** — After Update, RAISE: `If you change record endlifespanversion must be greater than today`

---

##  Table: `thing`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | A unique, read-only attribute that serves as an identifier for the entity. |
| `name` | `TEXT` | NOT NULL | A property provides a label for Thing entity, commonly a descriptive name. |
| `definition` | `TEXT` |  | The URI linking the Thing to an external definition. Dereferencing this URI SHOULD result in a representation of the definition of the Thing. |
| `description` | `TEXT` |  | This is a short description of the corresponding Thing entity. |
| `properties` | `TEXT` |  | mime type: 'application/json'. A JSON Object containing user-annotated properties as key-value pairs. |

### Relationships (as child)
- None

### Referenced by (as parent)
- `datastream.idthing` → `thing.id` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes
- None

### Triggers
- None

---

##  Table: `unitofmeasure`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | A unique, read-only attribute that serves as an identifier for the entity. |
| `code` | `TEXT` |  | The Unified Code for Units of Measure is a code system intended to include all units of measures being contemporarily used in international science, engineering, and business. |
| `label` | `TEXT` |  | A word or phrase used to name or describe something, often to identify or classify it. |
| `symbol` | `TEXT` |  | Standardized, unambiguous string used to represent a unit of measure. Symbols are designed for machine-to-machine communication and ensure consistent interpretation of units across systems and applications. |

### Relationships (as child)
- None

### Referenced by (as parent)
- `datastream.iduom` → `unitofmeasure.id` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes
- None

### Triggers
- None

---

##  Table: `wrbqualifiergroup_profile`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `idsoilprofile` | `TEXT` | NOT NULL | Foreign key to the SaoilProfile table, guidkey field. |
| `idwrbqualifiergrouptype` | `TEXT` | NOT NULL | Foreign key to the WrbqualifierGroupType table, guidkey field. |
| `qualifierposition` | `INTEGER` | NOT NULL | Number to indicate the position of a qualifier with regard to the WRB reference soil group (RSG) it belongs to and with regard to its placement to that (RSG) i.e. as a prefix or a suffix. |

### Relationships (as child)
- `wrbqualifiergroup_profile.idwrbqualifiergrouptype` → `wrbqualifiergrouptype.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `wrbqualifiergrouptype` cascades to `wrbqualifiergroup_profile`.
- `wrbqualifiergroup_profile.idsoilprofile` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilprofile` cascades to `wrbqualifiergroup_profile`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_wrbqualifiergroup_profile_idwrbqualifiergrouptype` | No | `idwrbqualifiergrouptype` | `c` | No |
| `idx_wrbqualifiergroup_profile_idsoilprofile` | No | `idsoilprofile` | `c` | No |
| `sqlite_autoindex_wrbqualifiergroup_profile_1` | Yes | `idsoilprofile`, `idwrbqualifiergrouptype` | `u` | No |

### Triggers
- **i_check_wrbversion_match** — Before Insert, RAISE: `Mismatch in wrbversion values.`
- **u_check_wrbversion_match** — Before Update, RAISE: `Mismatch in wrbversion values.`
- **i_check_qualifier_position_unique** — Before Insert, RAISE: `qualifierposition must be unique for each qualifierplace within the same soilprofile`
- **u_check_qualifier_position_unique** — Before Update, RAISE: `qualifierposition must be unique for each qualifierplace within the same soilprofile`

---

##  Table: `wrbqualifiergrouptype`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guidkey` | `TEXT` |  | Universally unique identifier. |
| `wrbversion` | `TEXT` | NOT NULL, DEFAULT 'https://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue' | Indicates the WRB classification version. |
| `qualifierplace` | `TEXT` | NOT NULL | Attribute to indicate the placement of the Qualifier with regard to the WRB reference soil group (RSG). The placement can be in front of the RSG i.e. prefix or it can be behind the RSG i.e. suffix. |
| `wrbqualifier` | `TEXT` | NOT NULL | Name element of WRB, 2nd level of classification. |
| `wrbspecifier_1` | `TEXT` |  | First code that indicates the degree of expression of a qualifier or the depth range of which the qualifier applies. |
| `wrbspecifier_2` | `TEXT` |  | Second code that indicates the degree of expression of a qualifier or the depth range of which the qualifier applies. |

### Relationships (as child)
- None

### Referenced by (as parent)
- `wrbqualifiergroup_profile.idwrbqualifiergrouptype` → `wrbqualifiergrouptype.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_wrbqualifiergrouptype_2` | Yes | `wrbversion`, `qualifierplace`, `wrbqualifier`, `wrbspecifier_1`, `wrbspecifier_2` | `u` | No |
| `sqlite_autoindex_wrbqualifiergrouptype_1` | Yes | `guidkey` | `u` | No |

### Triggers
- **wrbqualifiergrouptypeguid** — After Insert
- **wrbqualifiergrouptypeguidupdate** — After Update
- **i_wrbqualifier** — Before Insert, RAISE: `Table wrbqualifiergrouptype: Invalid value for wrbversion. Must be present in id of the correct year codelist collection.`
- **u_wrbqualifier** — Before Update, RAISE: `Table wrbqualifiergrouptype: Invalid value for wrbversion. Must be present in id of the correct year codelist collection.`
- **i_qualifierplace** — Before Insert, RAISE: `Table wrbqualifiergrouptype: Invalid value for qualifierplace. Must be present in id of wrbqualifierplacevalue codelist.`
- **u_qualifierplace** — Before Update, RAISE: `Table wrbqualifiergrouptype: Invalid value for qualifierplace. Must be present in id of wrbqualifierplacevalue codelist.`
- **i_wrbspecifier_1** — Before Insert, RAISE: `Table wrbqualifiergrouptype: Invalid value for wrbversion. Must be present in id of the correct year codelist collection.`
- **u_wrbspecifier_1** — Before Update, RAISE: `Table wrbqualifiergrouptype: Invalid value for wrbversion. Must be present in id of the correct year codelist collection.`
- **i_wrbspecifier_2** — Before Insert, RAISE: `Table wrbqualifiergrouptype: Invalid value for wrbversion. Must be present in id of the correct year codelist collection.`
- **u_wrbspecifier_2** — Before Update, RAISE: `Table wrbqualifiergrouptype: Invalid value for wrbversion. Must be present in id of the correct year codelist collection.`
- **i_wrbqualversion** — Before Insert, RAISE: `Table soilprofile: Invalid value for wrbversion. Must be present in id of wrbreferencesoilgroupvalue codelist.`
- **u_wrbqualversion** — Before Update, RAISE: `Table soilprofile: Invalid value for wrbversion. Must be present in id of wrbreferencesoilgroupvalue codelist.`
- **i_unique_wrbqualifiergrouptype** — Before Insert, RAISE: `Duplicate entry found for wrbversion, qualifierplace, wrbqualifier, wrbspecifier_1, wrbspecifier_2.`
- **u_unique_wrbqualifiergrouptype** — Before Update, RAISE: `Duplicate entry found for wrbversion, qualifierplace, wrbqualifier, wrbspecifier_1, wrbspecifier_2.`
- **i_check_specifiers_not_equal** — Before Insert, RAISE: `wrbspecifier_1 and wrbspecifier_2 must not be equal`
- **u_check_specifiers_not_equal** — Before Update, RAISE: `wrbspecifier_1 and wrbspecifier_2 must not be equal`

---


# Relationships summary

## Relationships (child → parent):

- [datastream].idobservedproperty  -->  [observedproperty].id  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [datastream].idsensor  -->  [sensor].id  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [datastream].idthing  -->  [thing].id  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [datastream].idfeature  -->  [feature].id  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [datastream].iduom  -->  [unitofmeasure].id  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [derivedprofilepresenceinsoilbody].idsoilprofile  -->  [soilprofile].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [derivedprofilepresenceinsoilbody].idsoilbody  -->  [soilbody].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [faohorizonnotationtype].idprofileelement  -->  [profileelement].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [feature].idfeaturetype  -->  [featuretype].id  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [feature].feature_soilderivedobject  -->  [soilderivedobject].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [feature].feature_profileelement  -->  [profileelement].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [feature].feature_soilprofile  -->  [soilprofile].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [feature].feature_soilsite  -->  [soilsite].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [isbasedonobservedsoilprofile].idsoilprofile  -->  [soilprofile].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [isbasedonobservedsoilprofile].idsoilderivedobject  -->  [soilderivedobject].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [isbasedonsoilbody].idsoilbody  -->  [soilbody].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [isbasedonsoilbody].idsoilderivedobject  -->  [soilderivedobject].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [isbasedonsoilderivedobject].related_id  -->  [soilderivedobject].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [isbasedonsoilderivedobject].base_id  -->  [soilderivedobject].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [isderivedfrom].related_id  -->  [soilprofile].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [isderivedfrom].base_id  -->  [soilprofile].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [observation].iddatastream  -->  [datastream].id  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [otherhorizon_profileelement].idotherhorizonnotationtype  -->  [otherhorizonnotationtype].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [otherhorizon_profileelement].idprofileelement  -->  [profileelement].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [othersoilnametype].othersoilname  -->  [soilprofile].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [particlesizefractiontype].idprofileelement  -->  [profileelement].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [profileelement].ispartof  -->  [soilprofile].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilbody_geom].idsoilbody  -->  [soilbody].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilplot].locatedon  -->  [soilsite].guidkey  (ON UPDATE CASCADE, ON DELETE NO ACTION)
- [soilprofile].location  -->  [soilplot].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [wrbqualifiergroup_profile].idwrbqualifiergrouptype  -->  [wrbqualifiergrouptype].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [wrbqualifiergroup_profile].idsoilprofile  -->  [soilprofile].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)

## Reverse relationships (parent → children):

- [datastream].id  -->  [observation].iddatastream  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [feature].id  -->  [datastream].idfeature  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [featuretype].id  -->  [feature].idfeaturetype  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [observedproperty].id  -->  [datastream].idobservedproperty  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [otherhorizonnotationtype].guidkey  -->  [otherhorizon_profileelement].idotherhorizonnotationtype  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [profileelement].guidkey  -->  [faohorizonnotationtype].idprofileelement  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [profileelement].guidkey  -->  [feature].feature_profileelement  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [profileelement].guidkey  -->  [otherhorizon_profileelement].idprofileelement  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [profileelement].guidkey  -->  [particlesizefractiontype].idprofileelement  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [sensor].id  -->  [datastream].idsensor  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilbody].guidkey  -->  [derivedprofilepresenceinsoilbody].idsoilbody  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilbody].guidkey  -->  [isbasedonsoilbody].idsoilbody  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilbody].guidkey  -->  [soilbody_geom].idsoilbody  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilderivedobject].guidkey  -->  [feature].feature_soilderivedobject  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilderivedobject].guidkey  -->  [isbasedonobservedsoilprofile].idsoilderivedobject  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilderivedobject].guidkey  -->  [isbasedonsoilbody].idsoilderivedobject  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilderivedobject].guidkey  -->  [isbasedonsoilderivedobject].related_id  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilderivedobject].guidkey  -->  [isbasedonsoilderivedobject].base_id  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilplot].guidkey  -->  [soilprofile].location  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilprofile].guidkey  -->  [derivedprofilepresenceinsoilbody].idsoilprofile  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilprofile].guidkey  -->  [feature].feature_soilprofile  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilprofile].guidkey  -->  [isbasedonobservedsoilprofile].idsoilprofile  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilprofile].guidkey  -->  [isderivedfrom].related_id  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilprofile].guidkey  -->  [isderivedfrom].base_id  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilprofile].guidkey  -->  [othersoilnametype].othersoilname  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilprofile].guidkey  -->  [profileelement].ispartof  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilprofile].guidkey  -->  [wrbqualifiergroup_profile].idsoilprofile  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilsite].guidkey  -->  [feature].feature_soilsite  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilsite].guidkey  -->  [soilplot].locatedon  (ON UPDATE CASCADE, ON DELETE NO ACTION)
- [thing].id  -->  [datastream].idthing  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [unitofmeasure].id  -->  [datastream].iduom  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [wrbqualifiergrouptype].guidkey  -->  [wrbqualifiergroup_profile].idwrbqualifiergrouptype  (ON UPDATE CASCADE, ON DELETE CASCADE)

Legend:
  * column name prefixed with '*' denotes PRIMARY KEY in table boxes.
  * arrow 'child --> parent' indicates a many-to-one relationship.
  * arrow 'parent --> child' indicates the reverse view of the same FK.

---

# Cascade Summary
- Deleting from `datastream` may delete rows in:
  - `observation`
- Deleting from `feature` may delete rows in:
  - `datastream`
- Deleting from `featuretype` may delete rows in:
  - `feature`
- Deleting from `observedproperty` may delete rows in:
  - `datastream`
- Deleting from `otherhorizonnotationtype` may delete rows in:
  - `otherhorizon_profileelement`
- Deleting from `profileelement` may delete rows in:
  - `faohorizonnotationtype`
  - `feature`
  - `otherhorizon_profileelement`
  - `particlesizefractiontype`
- Deleting from `sensor` may delete rows in:
  - `datastream`
- Deleting from `soilbody` may delete rows in:
  - `derivedprofilepresenceinsoilbody`
  - `isbasedonsoilbody`
  - `soilbody_geom`
- Deleting from `soilderivedobject` may delete rows in:
  - `feature`
  - `isbasedonobservedsoilprofile`
  - `isbasedonsoilbody`
  - `isbasedonsoilderivedobject`
- Deleting from `soilplot` may delete rows in:
  - `soilprofile`
- Deleting from `soilprofile` may delete rows in:
  - `derivedprofilepresenceinsoilbody`
  - `feature`
  - `isbasedonobservedsoilprofile`
  - `isderivedfrom`
  - `othersoilnametype`
  - `profileelement`
  - `wrbqualifiergroup_profile`
- Deleting from `soilsite` may delete rows in:
  - `feature`
- Deleting from `thing` may delete rows in:
  - `datastream`
- Deleting from `unitofmeasure` may delete rows in:
  - `datastream`
- Deleting from `wrbqualifiergrouptype` may delete rows in:
  - `wrbqualifiergroup_profile`


## Codelist Table.

Codelists in the SO (Soil) INSPIRE domain are essential for ensuring a standardized representation of soil data across the European Union. They enable consistent classification and encoding of specific values (e.g., soil types, usage categories) across different languages and applications, ensuring interoperability and semantic integrity in environmental datasets.

Although the codelist table has no relationship with other tables, its presence is crucial for the correct data management and control. Although the codelist table has no relationship with other tables, its presence is crucial for the correct data management and control.. It includes replicates of all  SO domain valid codes extracted from the INSPIRE registry (https://inspire.ec.europa.eu/registry). Essentially, if a coded value is in the table, it is supposed to be valid; if not, the code is to be considered as incorrect, and the relative value isn’t stored.
 
The presence of the codelist table in the Geopackage allows forms for displaying dropdown lists, simplifying the data entry. However, up to now (01/2025), not all the mandatory items foreseen in the INSPIRE SOIL UML structure have been populated into the INSPIRE registry. For those mandatory items foreseen in the INSPIRE SOIL UML structure for which there is not yet a published codelis inside the INSPIRE registry, that is, for WRBdiagnostichorizon, ProcessParameterNameValue, WRBReferenceSoilGroupValue (2014), WRBReferenceSoilGroupValue (2022), WRBQualifierValue (2022), and WRBSpecifierValue (2022)), we made reference to other officially mainatined controlled vocabularies by means of URI.
 
Moreover, internal codelists have also been added to the overmentioned table to manage forms more efficiently.
INSPIRE registry
 

Below is a list of Features with their respective codelists:



### FEATURE soilsite

SoilInvestigationPurposeValue
CODELIST ***INSPIRE***
http://inspire.ec.europa.eu/codelist/SoilInvestigationPurposeValue


### FEATURE soilplot

SoilPlotTypeValue
CODELIST ***INSPIRE***
http://inspire.ec.europa.eu/codelist/SoilPlotTypeValue


### FEATURE  soilprofile

WRBReferenceSoilGroupValue (2006)
CODELIST ***INSPIRE***
http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue

WRBReferenceSoilGroupValue (2014)
CODELIST AGROPORTAL
https://agroportal.lirmm.fr/ontologies/AGROVOC/

WRBReferenceSoilGroupValue (2022)
CODELIST ORBL-SOIL
https://obrl-soil.github.io/wrbsoil2022/


### FEATURE othersoilnametype

OtherSoilNameTypeValue
CODELIST ***INSPIRE***
https://inspire.ec.europa.eu/codelist/OtherSoilNameTypeValue 


### FEATURE profileelement

LayerTypeValue
CODELIST ***INSPIRE***
http://inspire.ec.europa.eu/codelist/LayerTypeValue

LithologyValue
CODELIST ***INSPIRE***
http://inspire.ec.europa.eu/codelist/LithologyValue

EventProcessValue
CODELIST ***INSPIRE***
http://inspire.ec.europa.eu/codelist/EventProcessValue

EventEnvironmentValue
CODELIST ***INSPIRE***
http://inspire.ec.europa.eu/codelist/EventEnvironmentValue

LayerGenesisProcessStateValue
CODELIST ***INSPIRE***
http://inspire.ec.europa.eu/codelist/LayerGenesisProcessStateValue


### FEATURE faohorizonnotationtype

FAOHorizonMaster
CODELIST ***INSPIRE***
https://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue

FAOHorizonSubordinate
CODELIST ***INSPIRE***
https://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue

FAOPrime
CODELIST ***INSPIRE***
http://inspire.ec.europa.eu/codelist/FAOPrimeValue


### FEATURE otherhorizonnotationtype

WRBdiagnostichorizon
CODELIST ORBL
https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-diagh


### FEATURE wrbqualifiergrouptype

WRBQualifierPlaceValue
CODELIST ***INSPIRE***
http://inspire.ec.europa.eu/codelist/WRBQualifierPlaceValue

WRBQualifierValue (2006)
CODELIST ***INSPIRE***
http://inspire.ec.europa.eu/codelist/WRBQualifierValue

WRBQualifierValue (2022)
CODELIST ORBL-SOIL
https://obrl-soil.github.io/wrbsoil2022/

WRBSpecifiers (2006)
CODELIST ***INSPIRE*** 
http://inspire.ec.europa.eu/codelist/WRBSpecifierValue (Under review)

WRBSpecifierValue (2022)
CODELIST ORBL-SOIL
https://obrl-soil.github.io/wrbsoil2022/


### FEATURE processparameter

ProcessParameterNameValue
CODELIST AGROPRTAL - LOD 
https://agroportal.lirmm.fr/ - https://lod.nal.usda.gov/


### FEATURE relatedparty

ResponsiblePartyRole
CODELIST ***INSPIRE***
http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole


## PARAMETER

SoilSiteParameterNameValue
**PARAMETER soilsite**
CODELIST ***INSPIRE***
http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue

SoilProfileParameterNameValue
**PARAMETER soilprofile**
CODELIST ***INSPIRE***
http://inspire.ec.europa.eu/codelist/SoilProfileParameterNameValue

SoilDerivedObjectParameterNameValue
**PARAMETER soilderivedobject**
CODELIST ***INSPIRE***
http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue

ProfileElementParameterNameValue
**PARAMETER profileelement**
CODELIST ***INSPIRE***
http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue


