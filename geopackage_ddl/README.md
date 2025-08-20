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

- `DDL_PRAGMA_SO.sql`
    - Implements custom triggers to enforce foreign key constraints.
    - Ensures referential integrity even when PRAGMA foreign_keys = OFF.
     - Acts as a fallback mechanism for environments where foreign key enforcement is not enabled by default.

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


# 📄 Database Structure Report



## 🗂️ Table: `codelist`

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
| `idx_codelist_ft_ph` | No | `featuretype_phenomenon` | `c` | No |
| `idx_codelist_phenomenon` | No | `phenomenon` | `c` | No |
| `idx_codelist_featuretype` | No | `featuretype` | `c` | No |
| `idx_codelist_collection` | No | `collection` | `c` | No |
| `idx_codelist_id` | No | `id` | `c` | No |

### Triggers
- None

---



## 🗂️ Table: `derivedprofilepresenceinsoilbody`

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
| `idx_derivedprofilepresenceinsoilbody_pair` | No | `idsoilbody`, `idsoilprofile` | `c` | No |
| `idx_derivedprofilepresenceinsoilbody_idsoilprofile` | No | `idsoilprofile` | `c` | No |
| `idx_derivedprofilepresenceinsoilbody_idsoilbody` | No | `idsoilbody` | `c` | No |
| `sqlite_autoindex_derivedprofilepresenceinsoilbody_1` | Yes | `idsoilbody`, `idsoilprofile` | `u` | No |

### Triggers
- **i_cecklowervaluesum** — Before Insert, RAISE: `Table derivedprofilepresenceinsoilbody: sum of lowervalue exceeds 100 for the same idsoilbody`
- **u_cecklowervaluesum** — Before Update, RAISE: `Table derivedprofilepresenceinsoilbody: sum of lowervalue exceeds 100 for the same idsoilbody`
- **i_checkisderived_soilbody** — Before Insert, RAISE: `Table derivedprofilepresenceinsoilbody:  Attention, the value of the "idsoilprofile" field  cannot be inserted because profile is not of type derived`
- **u_checkisderived_soilbody** — Before Update, RAISE: `Table derivedprofilepresenceinsoilbody:  Attention, the value of the "idsoilprofile" field  cannot be inserted because profile is not of type derived`
- **derivedprofilepresenceinsoilbody_idsoilprofile_fk_ins** — Before Insert, RAISE: `FK violation: derivedprofilepresenceinsoilbody(idsoilprofile) not found in soilprofile(guidkey)`
- **derivedprofilepresenceinsoilbody_idsoilprofile_fk_upd** — Before Update, RAISE: `FK violation: derivedprofilepresenceinsoilbody(idsoilprofile) not found in soilprofile(guidkey)`
- **derivedprofilepresenceinsoilbody_idsoilbody_fk_ins** — Before Insert, RAISE: `FK violation: derivedprofilepresenceinsoilbody(idsoilbody) not found in soilbody(guidkey)`
- **derivedprofilepresenceinsoilbody_idsoilbody_fk_upd** — Before Update, RAISE: `FK violation: derivedprofilepresenceinsoilbody(idsoilbody) not found in soilbody(guidkey)`

---

## 🗂️ Table: `faohorizonnotationtype`

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
| `idx_faohorizonnotationtype_idprofileelement` | No | `idprofileelement` | `c` | No |
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
- **faohorizonnotationtype_idprofileelement_fk_ins** — Before Insert, RAISE: `FK violation: faohorizonnotationtype(idprofileelement) not found in profileelement(guidkey)`
- **faohorizonnotationtype_idprofileelement_fk_upd** — Before Update, RAISE: `FK violation: faohorizonnotationtype(idprofileelement) not found in profileelement(guidkey)`

---

## 🗂️ Table: `feature`

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
| `idfeaturetype` | `INTEGER` |  |  |

### Relationships (as child)
- `feature.idfeaturetype` → `featuretype.id` (**ON UPDATE** CASCADE, **ON DELETE** SET NULL)
- `feature.feature_soilderivedobject` → `soilderivedobject.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** SET NULL)
- `feature.feature_profileelement` → `profileelement.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** SET NULL)
- `feature.feature_soilprofile` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** SET NULL)
- `feature.feature_soilsite` → `soilsite.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** SET NULL)

### Referenced by (as parent)
- `datastream.idfeature` → `feature.id` (**ON UPDATE** NO ACTION, **ON DELETE** NO ACTION)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_feature_idfeaturetype` | No | `idfeaturetype` | `c` | No |
| `idx_feature_feature_soilderivedobject` | No | `feature_soilderivedobject` | `c` | No |
| `idx_feature_feature_profileelement` | No | `feature_profileelement` | `c` | No |
| `idx_feature_feature_soilprofile` | No | `feature_soilprofile` | `c` | No |
| `idx_feature_feature_soilsite` | No | `feature_soilsite` | `c` | No |
| `sqlite_autoindex_feature_4` | Yes | `feature_soilderivedobject` | `u` | No |
| `sqlite_autoindex_feature_3` | Yes | `feature_profileelement` | `u` | No |
| `sqlite_autoindex_feature_2` | Yes | `feature_soilprofile` | `u` | No |
| `sqlite_autoindex_feature_1` | Yes | `feature_soilsite` | `u` | No |

### Triggers
- **feature_datastream_fk_restrict_del** — Before Delete, RAISE: `FK violation: cannot DELETE feature because child rows exist in datastream`
- **feature_datastream_fk_restrict_upd** — Before Update, RAISE: `FK violation: cannot UPDATE feature key because child rows exist in datastream`
- **feature_idfeaturetype_fk_ins** — Before Insert, RAISE: `FK violation: feature(idfeaturetype) not found in featuretype(id)`
- **feature_idfeaturetype_fk_upd** — Before Update, RAISE: `FK violation: feature(idfeaturetype) not found in featuretype(id)`
- **feature_feature_soilderivedobject_fk_ins** — Before Insert, RAISE: `FK violation: feature(feature_soilderivedobject) not found in soilderivedobject(guidkey)`
- **feature_feature_soilderivedobject_fk_upd** — Before Update, RAISE: `FK violation: feature(feature_soilderivedobject) not found in soilderivedobject(guidkey)`
- **feature_feature_profileelement_fk_ins** — Before Insert, RAISE: `FK violation: feature(feature_profileelement) not found in profileelement(guidkey)`
- **feature_feature_profileelement_fk_upd** — Before Update, RAISE: `FK violation: feature(feature_profileelement) not found in profileelement(guidkey)`
- **feature_feature_soilprofile_fk_ins** — Before Insert, RAISE: `FK violation: feature(feature_soilprofile) not found in soilprofile(guidkey)`
- **feature_feature_soilprofile_fk_upd** — Before Update, RAISE: `FK violation: feature(feature_soilprofile) not found in soilprofile(guidkey)`
- **feature_feature_soilsite_fk_ins** — Before Insert, RAISE: `FK violation: feature(feature_soilsite) not found in soilsite(guidkey)`
- **feature_feature_soilsite_fk_upd** — Before Update, RAISE: `FK violation: feature(feature_soilsite) not found in soilsite(guidkey)`

---

## 🗂️ Table: `featuretype`

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
- `feature.idfeaturetype` → `featuretype.id` (**ON UPDATE** CASCADE, **ON DELETE** SET NULL)

### Indexes
- None

### Triggers
- **featuretype_feature_fk_setnull_del** — After Delete
- **featuretype_feature_fk_cascade_upd** — After Update

---

## 🗂️ Table: `isbasedonobservedsoilprofile`

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
| `idx_isbasedonobservedsoilprofile_pair` | No | `idsoilderivedobject`, `idsoilprofile` | `c` | No |
| `idx_isbasedonobservedsoilprofile_idsoilprofile` | No | `idsoilprofile` | `c` | No |
| `idx_isbasedonobservedsoilprofile_idsoilderivedobject` | No | `idsoilderivedobject` | `c` | No |
| `sqlite_autoindex_isbasedonobservedsoilprofile_1` | Yes | `idsoilderivedobject`, `idsoilprofile` | `u` | No |

### Triggers
- **i_checkisobserved_dobj** — Before Insert, RAISE: `Table isbasedonobservedsoilprofile :  Attention, the value of the "idsoilprofile" field  cannot be inserted because profile is not of type observed`
- **u_checkisobserved_dobj** — Before Update, RAISE: `Table isbasedonobservedsoilprofile :  Attention, the value of the "idsoilprofile" field  cannot be inserted because profile is not of type observed`
- **isbasedonobservedsoilprofile_idsoilprofile_fk_ins** — Before Insert, RAISE: `FK violation: isbasedonobservedsoilprofile(idsoilprofile) not found in soilprofile(guidkey)`
- **isbasedonobservedsoilprofile_idsoilprofile_fk_upd** — Before Update, RAISE: `FK violation: isbasedonobservedsoilprofile(idsoilprofile) not found in soilprofile(guidkey)`
- **isbasedonobservedsoilprofile_idsoilderivedobject_fk_ins** — Before Insert, RAISE: `FK violation: isbasedonobservedsoilprofile(idsoilderivedobject) not found in soilderivedobject(guidkey)`
- **isbasedonobservedsoilprofile_idsoilderivedobject_fk_upd** — Before Update, RAISE: `FK violation: isbasedonobservedsoilprofile(idsoilderivedobject) not found in soilderivedobject(guidkey)`

---

## 🗂️ Table: `isbasedonsoilbody`

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
| `idx_isbasedonsoilbody_pair` | No | `idsoilderivedobject`, `idsoilbody` | `c` | No |
| `idx_isbasedonsoilbody_idsoilbody` | No | `idsoilbody` | `c` | No |
| `idx_isbasedonsoilbody_idsoilderivedobject` | No | `idsoilderivedobject` | `c` | No |
| `sqlite_autoindex_isbasedonsoilbody_1` | Yes | `idsoilderivedobject`, `idsoilbody` | `u` | No |

### Triggers
- **isbasedonsoilbody_idsoilbody_fk_ins** — Before Insert, RAISE: `FK violation: isbasedonsoilbody(idsoilbody) not found in soilbody(guidkey)`
- **isbasedonsoilbody_idsoilbody_fk_upd** — Before Update, RAISE: `FK violation: isbasedonsoilbody(idsoilbody) not found in soilbody(guidkey)`
- **isbasedonsoilbody_idsoilderivedobject_fk_ins** — Before Insert, RAISE: `FK violation: isbasedonsoilbody(idsoilderivedobject) not found in soilderivedobject(guidkey)`
- **isbasedonsoilbody_idsoilderivedobject_fk_upd** — Before Update, RAISE: `FK violation: isbasedonsoilbody(idsoilderivedobject) not found in soilderivedobject(guidkey)`

---

## 🗂️ Table: `isbasedonsoilderivedobject`

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
| `idx_isbasedonsoilderivedobject_pair` | No | `base_id`, `related_id` | `c` | No |
| `idx_isbasedonsoilderivedobject_related_id` | No | `related_id` | `c` | No |
| `idx_isbasedonsoilderivedobject_base_id` | No | `base_id` | `c` | No |
| `sqlite_autoindex_isbasedonsoilderivedobject_1` | Yes | `base_id`, `related_id` | `u` | No |

### Triggers
- **isbasedonsoilderivedobject_related_id_fk_ins** — Before Insert, RAISE: `FK violation: isbasedonsoilderivedobject(related_id) not found in soilderivedobject(guidkey)`
- **isbasedonsoilderivedobject_related_id_fk_upd** — Before Update, RAISE: `FK violation: isbasedonsoilderivedobject(related_id) not found in soilderivedobject(guidkey)`
- **isbasedonsoilderivedobject_base_id_fk_ins** — Before Insert, RAISE: `FK violation: isbasedonsoilderivedobject(base_id) not found in soilderivedobject(guidkey)`
- **isbasedonsoilderivedobject_base_id_fk_upd** — Before Update, RAISE: `FK violation: isbasedonsoilderivedobject(base_id) not found in soilderivedobject(guidkey)`

---

## 🗂️ Table: `isderivedfrom`

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
| `idx_isderivedfrom_base_related` | No | `base_id`, `related_id` | `c` | No |
| `idx_isderivedfrom_related_id` | No | `related_id` | `c` | No |
| `idx_isderivedfrom_base_id` | No | `base_id` | `c` | No |
| `sqlite_autoindex_isderivedfrom_1` | Yes | `base_id`, `related_id` | `u` | No |

### Triggers
- **i_checkisderived** — Before Insert, RAISE: `Table isderivedfrom:  Attention, the value of the "base_id" field in the "isderivedfrom" table cannot be inserted because profile is not of type derived`
- **u_checkisderived** — Before Update, RAISE: `Table isderivedfrom:  Attention, the value of the "base_id" field in the "isderivedfrom" table cannot be inserted because profile is not of type derived`
- **i_checkisobserved** — Before Insert, RAISE: `Table isderivedfrom:  Attention, the value of the "related_id" field in the "isderivedfrom" table cannot be inserted because profile is not of type observed`
- **u_checkisobserved** — Before Update, RAISE: `Table isderivedfrom:  Attention, the value of the "related_id" field in the "isderivedfrom" table cannot be inserted because profile is not of type observed`
- **isderivedfrom_related_id_fk_ins** — Before Insert, RAISE: `FK violation: isderivedfrom(related_id) not found in soilprofile(guidkey)`
- **isderivedfrom_related_id_fk_upd** — Before Update, RAISE: `FK violation: isderivedfrom(related_id) not found in soilprofile(guidkey)`
- **isderivedfrom_base_id_fk_ins** — Before Insert, RAISE: `FK violation: isderivedfrom(base_id) not found in soilprofile(guidkey)`
- **isderivedfrom_base_id_fk_upd** — Before Update, RAISE: `FK violation: isderivedfrom(base_id) not found in soilprofile(guidkey)`

---

## 🗂️ Table: `otherhorizon_profileelement`

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
| `idx_otherhorizon_profileelement_pair` | No | `idprofileelement`, `idotherhorizonnotationtype` | `c` | No |
| `idx_otherhorizon_profileelement_idotherhorizonnotationtype` | No | `idotherhorizonnotationtype` | `c` | No |
| `idx_otherhorizon_profileelement_idprofileelement` | No | `idprofileelement` | `c` | No |
| `sqlite_autoindex_otherhorizon_profileelement_1` | Yes | `idprofileelement`, `idotherhorizonnotationtype` | `u` | No |

### Triggers
- **i_ceckothprofileelementtype** — Before Insert, RAISE: `Table otherhorizon_profileelement: The associated profileelement must have profileelementtype = 0 (HORIZON)`
- **u_ceckothprofileelementtype** — Before Update, RAISE: `Table otherhorizon_profileelement: The associated profileelement must have profileelementtype = 0 (HORIZON)`
- **otherhorizon_profileelement_idotherhorizonnotationtype_fk_ins** — Before Insert, RAISE: `FK violation: otherhorizon_profileelement(idotherhorizonnotationtype) not found in otherhorizonnotationtype(guidkey)`
- **otherhorizon_profileelement_idotherhorizonnotationtype_fk_upd** — Before Update, RAISE: `FK violation: otherhorizon_profileelement(idotherhorizonnotationtype) not found in otherhorizonnotationtype(guidkey)`
- **otherhorizon_profileelement_idprofileelement_fk_ins** — Before Insert, RAISE: `FK violation: otherhorizon_profileelement(idprofileelement) not found in profileelement(guidkey)`
- **otherhorizon_profileelement_idprofileelement_fk_upd** — Before Update, RAISE: `FK violation: otherhorizon_profileelement(idprofileelement) not found in profileelement(guidkey)`

---

## 🗂️ Table: `otherhorizonnotationtype`

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
- **otherhorizonnotationtype_otherhorizon_profileelement_fk_cascade_del** — After Delete
- **otherhorizonnotationtype_otherhorizon_profileelement_fk_cascade_upd** — After Update

---

## 🗂️ Table: `othersoilnametype`

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
- **othersoilnametype_othersoilname_fk_ins** — Before Insert, RAISE: `FK violation: othersoilnametype(othersoilname) not found in soilprofile(guidkey)`
- **othersoilnametype_othersoilname_fk_upd** — Before Update, RAISE: `FK violation: othersoilnametype(othersoilname) not found in soilprofile(guidkey)`

---

## 🗂️ Table: `particlesizefractiontype`

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
- **particlesizefractiontype_idprofileelement_fk_ins** — Before Insert, RAISE: `FK violation: particlesizefractiontype(idprofileelement) not found in profileelement(guidkey)`
- **particlesizefractiontype_idprofileelement_fk_upd** — Before Update, RAISE: `FK violation: particlesizefractiontype(idprofileelement) not found in profileelement(guidkey)`

---

## 🗂️ Table: `profileelement`

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
- `feature.feature_profileelement` → `profileelement.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** SET NULL)
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
- **profileelement_faohorizonnotationtype_fk_cascade_del** — After Delete
- **profileelement_faohorizonnotationtype_fk_cascade_upd** — After Update
- **profileelement_feature_fk_setnull_del** — After Delete
- **profileelement_feature_fk_cascade_upd** — After Update
- **profileelement_otherhorizon_profileelement_fk_cascade_del** — After Delete
- **profileelement_otherhorizon_profileelement_fk_cascade_upd** — After Update
- **profileelement_particlesizefractiontype_fk_cascade_del** — After Delete
- **profileelement_particlesizefractiontype_fk_cascade_upd** — After Update
- **profileelement_ispartof_fk_ins** — Before Insert, RAISE: `FK violation: profileelement(ispartof) not found in soilprofile(guidkey)`
- **profileelement_ispartof_fk_upd** — Before Update, RAISE: `FK violation: profileelement(ispartof) not found in soilprofile(guidkey)`

---

## 🗂️ Table: `soilbody`

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
- **soilbody_derivedprofilepresenceinsoilbody_fk_cascade_del** — After Delete
- **soilbody_derivedprofilepresenceinsoilbody_fk_cascade_upd** — After Update
- **soilbody_isbasedonsoilbody_fk_cascade_del** — After Delete
- **soilbody_isbasedonsoilbody_fk_cascade_upd** — After Update
- **soilbody_soilbody_geom_fk_cascade_del** — After Delete
- **soilbody_soilbody_geom_fk_cascade_upd** — After Update

---

## 🗂️ Table: `soilbody_geom`

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
- **soilbody_geom_idsoilbody_fk_ins** — Before Insert, RAISE: `FK violation: soilbody_geom(idsoilbody) not found in soilbody(guidkey)`
- **soilbody_geom_idsoilbody_fk_upd** — Before Update, RAISE: `FK violation: soilbody_geom(idsoilbody) not found in soilbody(guidkey)`

---

## 🗂️ Table: `soilderivedobject`

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
- `feature.feature_soilderivedobject` → `soilderivedobject.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** SET NULL)
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
- **soilderivedobject_feature_fk_setnull_del** — After Delete
- **soilderivedobject_feature_fk_cascade_upd** — After Update
- **soilderivedobject_isbasedonobservedsoilprofile_fk_cascade_del** — After Delete
- **soilderivedobject_isbasedonobservedsoilprofile_fk_cascade_upd** — After Update
- **soilderivedobject_isbasedonsoilbody_fk_cascade_del** — After Delete
- **soilderivedobject_isbasedonsoilbody_fk_cascade_upd** — After Update
- **soilderivedobject_isbasedonsoilderivedobject_fk_cascade_del** — After Delete
- **soilderivedobject_isbasedonsoilderivedobject_fk_cascade_upd** — After Update

---

## 🗂️ Table: `soilplot`

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
- **soilplot_locatedon_fk_ins** — Before Insert, RAISE: `FK violation: soilplot(locatedon) not found in soilsite(guidkey)`
- **soilplot_locatedon_fk_upd** — Before Update, RAISE: `FK violation: soilplot(locatedon) not found in soilsite(guidkey)`
- **soilplot_soilprofile_fk_cascade_del** — After Delete
- **soilplot_soilprofile_fk_cascade_upd** — After Update

---

## 🗂️ Table: `soilprofile`

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
- `feature.feature_soilprofile` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** SET NULL)
- `isbasedonobservedsoilprofile.idsoilprofile` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `isderivedfrom.related_id` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `isderivedfrom.base_id` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `othersoilnametype.othersoilname` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `profileelement.ispartof` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `wrbqualifiergroup_profile.idsoilprofile` → `soilprofile.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_soilprofile_location` | No | `location` | `c` | No |
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
- **soilprofile_derivedprofilepresenceinsoilbody_fk_cascade_del** — After Delete
- **soilprofile_derivedprofilepresenceinsoilbody_fk_cascade_upd** — After Update
- **soilprofile_feature_fk_setnull_del** — After Delete
- **soilprofile_feature_fk_cascade_upd** — After Update
- **soilprofile_isbasedonobservedsoilprofile_fk_cascade_del** — After Delete
- **soilprofile_isbasedonobservedsoilprofile_fk_cascade_upd** — After Update
- **soilprofile_isderivedfrom_fk_cascade_del** — After Delete
- **soilprofile_isderivedfrom_fk_cascade_upd** — After Update
- **soilprofile_othersoilnametype_fk_cascade_del** — After Delete
- **soilprofile_othersoilnametype_fk_cascade_upd** — After Update
- **soilprofile_profileelement_fk_cascade_del** — After Delete
- **soilprofile_profileelement_fk_cascade_upd** — After Update
- **soilprofile_location_fk_ins** — Before Insert, RAISE: `FK violation: soilprofile(location) not found in soilplot(guidkey)`
- **soilprofile_location_fk_upd** — Before Update, RAISE: `FK violation: soilprofile(location) not found in soilplot(guidkey)`
- **soilprofile_wrbqualifiergroup_profile_fk_cascade_del** — After Delete
- **soilprofile_wrbqualifiergroup_profile_fk_cascade_upd** — After Update

---

## 🗂️ Table: `soilsite`

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
- `feature.feature_soilsite` → `soilsite.guidkey` (**ON UPDATE** CASCADE, **ON DELETE** SET NULL)
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
- **soilsite_feature_fk_setnull_del** — After Delete
- **soilsite_feature_fk_cascade_upd** — After Update
- **soilsite_soilplot_fk_restrict_del** — Before Delete, RAISE: `FK violation: cannot DELETE soilsite because child rows exist in soilplot`
- **soilsite_soilplot_fk_cascade_upd** — After Update

---

## 🗂️ Table: `wrbqualifiergroup_profile`

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
| `idx_wrbqualifiergroup_profile_pair` | No | `idsoilprofile`, `idwrbqualifiergrouptype` | `c` | No |
| `idx_wrbqualifiergroup_profile_idwrbqualifiergrouptype` | No | `idwrbqualifiergrouptype` | `c` | No |
| `idx_wrbqualifiergroup_profile_idsoilprofile` | No | `idsoilprofile` | `c` | No |
| `sqlite_autoindex_wrbqualifiergroup_profile_1` | Yes | `idsoilprofile`, `idwrbqualifiergrouptype` | `u` | No |

### Triggers
- **i_check_wrbversion_match** — Before Insert, RAISE: `Mismatch in wrbversion values.`
- **u_check_wrbversion_match** — Before Update, RAISE: `Mismatch in wrbversion values.`
- **i_check_qualifier_position_unique** — Before Insert, RAISE: `qualifierposition must be unique for each qualifierplace within the same soilprofile`
- **u_check_qualifier_position_unique** — Before Update, RAISE: `qualifierposition must be unique for each qualifierplace within the same soilprofile`
- **wrbqualifiergroup_profile_idwrbqualifiergrouptype_fk_ins** — Before Insert, RAISE: `FK violation: wrbqualifiergroup_profile(idwrbqualifiergrouptype) not found in wrbqualifiergrouptype(guidkey)`
- **wrbqualifiergroup_profile_idwrbqualifiergrouptype_fk_upd** — Before Update, RAISE: `FK violation: wrbqualifiergroup_profile(idwrbqualifiergrouptype) not found in wrbqualifiergrouptype(guidkey)`
- **wrbqualifiergroup_profile_idsoilprofile_fk_ins** — Before Insert, RAISE: `FK violation: wrbqualifiergroup_profile(idsoilprofile) not found in soilprofile(guidkey)`
- **wrbqualifiergroup_profile_idsoilprofile_fk_upd** — Before Update, RAISE: `FK violation: wrbqualifiergroup_profile(idsoilprofile) not found in soilprofile(guidkey)`

---

## 🗂️ Table: `wrbqualifiergrouptype`

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
- **wrbqualifiergrouptype_wrbqualifiergroup_profile_fk_cascade_del** — After Delete
- **wrbqualifiergrouptype_wrbqualifiergroup_profile_fk_cascade_upd** — After Update

---


Relationships (child → parent):
-------------------------------
[datastream].idfeature  -->  [feature].id  (ON UPDATE NO ACTION, ON DELETE NO ACTION)
[derivedprofilepresenceinsoilbody].idsoilprofile  -->  [soilprofile].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
[derivedprofilepresenceinsoilbody].idsoilbody  -->  [soilbody].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
[faohorizonnotationtype].idprofileelement  -->  [profileelement].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
[feature].idfeaturetype  -->  [featuretype].id  (ON UPDATE CASCADE, ON DELETE SET NULL)
[feature].feature_soilderivedobject  -->  [soilderivedobject].guidkey  (ON UPDATE CASCADE, ON DELETE SET NULL)
[feature].feature_profileelement  -->  [profileelement].guidkey  (ON UPDATE CASCADE, ON DELETE SET NULL)
[feature].feature_soilprofile  -->  [soilprofile].guidkey  (ON UPDATE CASCADE, ON DELETE SET NULL)
[feature].feature_soilsite  -->  [soilsite].guidkey  (ON UPDATE CASCADE, ON DELETE SET NULL)
[isbasedonobservedsoilprofile].idsoilprofile  -->  [soilprofile].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
[isbasedonobservedsoilprofile].idsoilderivedobject  -->  [soilderivedobject].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
[isbasedonsoilbody].idsoilbody  -->  [soilbody].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
[isbasedonsoilbody].idsoilderivedobject  -->  [soilderivedobject].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
[isbasedonsoilderivedobject].related_id  -->  [soilderivedobject].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
[isbasedonsoilderivedobject].base_id  -->  [soilderivedobject].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
[isderivedfrom].related_id  -->  [soilprofile].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
[isderivedfrom].base_id  -->  [soilprofile].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
[otherhorizon_profileelement].idotherhorizonnotationtype  -->  [otherhorizonnotationtype].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
[otherhorizon_profileelement].idprofileelement  -->  [profileelement].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
[othersoilnametype].othersoilname  -->  [soilprofile].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
[particlesizefractiontype].idprofileelement  -->  [profileelement].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
[profileelement].ispartof  -->  [soilprofile].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
[soilbody_geom].idsoilbody  -->  [soilbody].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
[soilplot].locatedon  -->  [soilsite].guidkey  (ON UPDATE CASCADE, ON DELETE NO ACTION)
[soilprofile].location  -->  [soilplot].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
[wrbqualifiergroup_profile].idwrbqualifiergrouptype  -->  [wrbqualifiergrouptype].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)
[wrbqualifiergroup_profile].idsoilprofile  -->  [soilprofile].guidkey  (ON UPDATE CASCADE, ON DELETE CASCADE)

Reverse relationships (parent → children):
------------------------------------------
[feature].id  -->  [datastream].idfeature  (ON UPDATE NO ACTION, ON DELETE NO ACTION)
[featuretype].id  -->  [feature].idfeaturetype  (ON UPDATE CASCADE, ON DELETE SET NULL)
[otherhorizonnotationtype].guidkey  -->  [otherhorizon_profileelement].idotherhorizonnotationtype  (ON UPDATE CASCADE, ON DELETE CASCADE)
[profileelement].guidkey  -->  [faohorizonnotationtype].idprofileelement  (ON UPDATE CASCADE, ON DELETE CASCADE)
[profileelement].guidkey  -->  [feature].feature_profileelement  (ON UPDATE CASCADE, ON DELETE SET NULL)
[profileelement].guidkey  -->  [otherhorizon_profileelement].idprofileelement  (ON UPDATE CASCADE, ON DELETE CASCADE)
[profileelement].guidkey  -->  [particlesizefractiontype].idprofileelement  (ON UPDATE CASCADE, ON DELETE CASCADE)
[soilbody].guidkey  -->  [derivedprofilepresenceinsoilbody].idsoilbody  (ON UPDATE CASCADE, ON DELETE CASCADE)
[soilbody].guidkey  -->  [isbasedonsoilbody].idsoilbody  (ON UPDATE CASCADE, ON DELETE CASCADE)
[soilbody].guidkey  -->  [soilbody_geom].idsoilbody  (ON UPDATE CASCADE, ON DELETE CASCADE)
[soilderivedobject].guidkey  -->  [feature].feature_soilderivedobject  (ON UPDATE CASCADE, ON DELETE SET NULL)
[soilderivedobject].guidkey  -->  [isbasedonobservedsoilprofile].idsoilderivedobject  (ON UPDATE CASCADE, ON DELETE CASCADE)
[soilderivedobject].guidkey  -->  [isbasedonsoilbody].idsoilderivedobject  (ON UPDATE CASCADE, ON DELETE CASCADE)
[soilderivedobject].guidkey  -->  [isbasedonsoilderivedobject].related_id  (ON UPDATE CASCADE, ON DELETE CASCADE)
[soilderivedobject].guidkey  -->  [isbasedonsoilderivedobject].base_id  (ON UPDATE CASCADE, ON DELETE CASCADE)
[soilplot].guidkey  -->  [soilprofile].location  (ON UPDATE CASCADE, ON DELETE CASCADE)
[soilprofile].guidkey  -->  [derivedprofilepresenceinsoilbody].idsoilprofile  (ON UPDATE CASCADE, ON DELETE CASCADE)
[soilprofile].guidkey  -->  [feature].feature_soilprofile  (ON UPDATE CASCADE, ON DELETE SET NULL)
[soilprofile].guidkey  -->  [isbasedonobservedsoilprofile].idsoilprofile  (ON UPDATE CASCADE, ON DELETE CASCADE)
[soilprofile].guidkey  -->  [isderivedfrom].related_id  (ON UPDATE CASCADE, ON DELETE CASCADE)
[soilprofile].guidkey  -->  [isderivedfrom].base_id  (ON UPDATE CASCADE, ON DELETE CASCADE)
[soilprofile].guidkey  -->  [othersoilnametype].othersoilname  (ON UPDATE CASCADE, ON DELETE CASCADE)
[soilprofile].guidkey  -->  [profileelement].ispartof  (ON UPDATE CASCADE, ON DELETE CASCADE)
[soilprofile].guidkey  -->  [wrbqualifiergroup_profile].idsoilprofile  (ON UPDATE CASCADE, ON DELETE CASCADE)
[soilsite].guidkey  -->  [feature].feature_soilsite  (ON UPDATE CASCADE, ON DELETE SET NULL)
[soilsite].guidkey  -->  [soilplot].locatedon  (ON UPDATE CASCADE, ON DELETE NO ACTION)
[wrbqualifiergrouptype].guidkey  -->  [wrbqualifiergroup_profile].idwrbqualifiergrouptype  (ON UPDATE CASCADE, ON DELETE CASCADE)

Legend:
  * column name prefixed with '*' denotes PRIMARY KEY in table boxes.
  * arrow 'child --> parent' indicates a many-to-one relationship.
  * arrow 'parent --> child' indicates the reverse view of the same FK.

---

## Cascade Summary
- Deleting from `otherhorizonnotationtype` may delete rows in:
  - `otherhorizon_profileelement`
- Deleting from `profileelement` may delete rows in:
  - `faohorizonnotationtype`
  - `otherhorizon_profileelement`
  - `particlesizefractiontype`
- Deleting from `soilbody` may delete rows in:
  - `derivedprofilepresenceinsoilbody`
  - `isbasedonsoilbody`
  - `soilbody_geom`
- Deleting from `soilderivedobject` may delete rows in:
  - `isbasedonobservedsoilprofile`
  - `isbasedonsoilbody`
  - `isbasedonsoilderivedobject`
- Deleting from `soilplot` may delete rows in:
  - `soilprofile`
- Deleting from `soilprofile` may delete rows in:
  - `derivedprofilepresenceinsoilbody`
  - `isbasedonobservedsoilprofile`
  - `isderivedfrom`
  - `othersoilnametype`
  - `profileelement`
  - `wrbqualifiergroup_profile`
- Deleting from `wrbqualifiergrouptype` may delete rows in:
  - `wrbqualifiergroup_profile`

---

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


