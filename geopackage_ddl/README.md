The `sql` folder contains the informatic code which is behind the SoilWise Geopackage.  
Using the SQL code provided in the SQL files, you can recreate the GeoPackage containing the complete SoilWise data structure.


---
The data model can be viewed at:
🔗 https://dbdiagram.io/d/SoilWise_Geopackage-69399847e877c6307451317a

---

## Recreating the Geopackage Containing the SoilWise Structure

To do this:  
1. Open the empty GeoPackage model available at [http://www.geopackage.org/data/empty.gpkg](http://www.geopackage.org/data/empty.gpkg) using a database manager (e.g., DBeaver).  


2. Execute the SQL instructions using the provided SQL files:

- `DDL_SO.sql`
    - Contains Data Definition Language (DDL) statements.
    - Used to create the full SoilWise database structure, including tables and relationships.

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
# Database Structure Report

---

## Index
- [codelist](#codelist)
- [datastream](#datastream)
- [derivedprofilepresenceinsoilbody](#derivedprofilepresenceinsoilbody)
- [faohorizonnotationtype](#faohorizonnotationtype)
- [isbasedonobservedsoilprofile](#isbasedonobservedsoilprofile)
- [isbasedonsoilbody](#isbasedonsoilbody)
- [isbasedonsoilderivedobject](#isbasedonsoilderivedobject)
- [isderivedfrom](#isderivedfrom)
- [observation](#observation)
- [observedproperty](#observedproperty)
- [observingprocedure](#observingprocedure)
- [obsprocedure_obsdproperty](#obsprocedure_obsdproperty)
- [obsprocedure_sensor](#obsprocedure_sensor)
- [otherhorizon_profileelement](#otherhorizon_profileelement)
- [otherhorizonnotationtype](#otherhorizonnotationtype)
- [othersoilnametype](#othersoilnametype)
- [profileelement](#profileelement)
- [sensor](#sensor)
- [soilbody](#soilbody)
- [soilbody_geom](#soilbody_geom)
- [soilderivedobject](#soilderivedobject)
- [soilplot](#soilplot)
- [soilprofile](#soilprofile)
- [soilsite](#soilsite)
- [thing](#thing)
- [unitofmeasure](#unitofmeasure)
- [wrbqualifiergroup_profile](#wrbqualifiergroup_profile)
- [wrbqualifiergrouptype](#wrbqualifiergrouptype)


---

<a id="codelist"></a>
## Table: `codelist`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `TEXT` |  | Codelist Voice Uri, and Primary Key of the Table. |
| `label` | `TEXT` |  | A word or phrase used to name or describe something, often to identify or classify it. |
| `collection` | `TEXT` |  | Structured set of related elements, which share common characteristics and are managed with unique and persistent identifiers. |

### Relationships (as child)
- None

### Referenced by (as parent)
- None

### Indexes
- None

### Triggers
- None

Codelists in the SO (Soil) INSPIRE domain are essential for ensuring a standardized representation of soil data across the European Union. They enable consistent classification and encoding of specific values (e.g., soil types, usage categories) across different languages and applications, ensuring interoperability and semantic integrity in environmental datasets.

Although the codelist table has no relationship with other tables, its presence is crucial for the correct data management and control. Although the codelist table has no relationship with other tables, its presence is crucial for the correct data management and control.. It includes replicates of all  SO domain valid codes extracted from the INSPIRE registry (https://inspire.ec.europa.eu/registry). ***Essentially, if a coded value is in the table, it is supposed to be valid; if not, the code is to be considered as incorrect, and the relative value isn’t stored***.
 
The presence of the codelist table in the Geopackage allows forms for displaying dropdown lists, simplifying the data entry. However, up to now (12/2025), not all the mandatory items foreseen in the INSPIRE SOIL UML structure have been populated into the INSPIRE registry. For those mandatory items foreseen in the INSPIRE SOIL UML structure for which there is not yet a published codelis inside the INSPIRE registry, that is, for WRBdiagnostichorizon, ProcessParameterNameValue, WRBReferenceSoilGroupValue (2014), WRBReferenceSoilGroupValue (2022), WRBQualifierValue (2022), and WRBSpecifierValue (2022)), we made reference to other officially mainatined controlled vocabularies by means of URI.
 
Moreover, internal codelists have also been added to the overmentioned table to manage forms more efficiently.
INSPIRE registry
 

## List of Features with their respective codelists:



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



---
<a id="datastream"></a>
## Table: `datastream`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | A unique, read-only attribute that serves as an identifier for the entity. |
| `guid` | `TEXT` |  | Universally unique identifier. |
| `name` | `TEXT` | NOT NULL | A property provides a label for Datastream entity, commonly a descriptive name. |
| `definition` | `TEXT` |  | The URI linking the Datastream to an external definition. Dereferencing this URI SHOULD result in a representation of the definition of the Datastream. |
| `description` | `TEXT` |  | The description of the Datastream entity. |
| `type` | `TEXT` | NOT NULL | The type attribute defines the type of the result and has the value Quantity. |
| `codespace` | `TEXT` |  | The codespace defines the reference framework that specifies the set of valid values which can be used as results. It ensures that the meaning of each code is interpreted correctly within a given context. |
| `code_unitofmeasure` | `TEXT` |  | Foreign key to the Unit Of Measue table, code field.. |
| `value_min` | `REAL` |  | The minimum value defines the lowest numerical limit allowed within the data domain.. |
| `value_max` | `REAL` |  | The maximum value defines the highest numerical limit allowed within the data domain. |
| `observedarea` | `POLYGON` |  | The spatial bounding box of the spatial extent of the Feature that belong to the Observations associated with this Datastream. This is usually generated by the server. |
| `phenomenontime_start` | `DATETIME` |  | The start date of the temporal interval of the phenomenon times of all observations belonging to this Datastream. This is usually generated by the server. |
| `phenomenontime_end` | `DATETIME` |  | The end date of the temporal interval of the phenomenon times of all observations belonging to this Datastream. This is usually generated by the server. |
| `resulttime_start` | `DATETIME` |  | The start date of the temporal interval of the result times of all observations belonging to this Datastream. This is usually generated by the server. |
| `resulttime_end` | `DATETIME` |  | The end date of the temporal interval of the result times of all observations belonging to this Datastream. This is usually generated by the server.. |
| `properties` | `TEXT` |  | mime type: 'application/json'. A JSON Object containing user-annotated properties as key-value pairs. |
| `guid_thing` | `TEXT` | NOT NULL | Foreign key to the Thing table, guid field. |
| `guid_sensor` | `TEXT` | NOT NULL | Foreign key to the Sensor table, guid field. |
| `guid_observedproperty` | `TEXT` | NOT NULL | Foreign key to the Observed Property table, guid field. |
| `guid_observingprocedure` | `TEXT` |  | Foreign key to the Observing Procedure table, guid field. |
| `guid_soilsite` | `TEXT` |  | Foreign key to the Soil Site table, guid field. |
| `guid_soilprofile` | `TEXT` |  | Foreign key to the Soil Profile table, guid field. |
| `guid_profileelement` | `TEXT` |  | Foreign key to the Profile Elemen table, guid field. |
| `guid_soilderivedobject` | `TEXT` |  | Foreign key to the Soil Derived Object table, guid field. |


### Table Identifiers
In this table, the primary key is the *id* field (integer, auto-incrementing).  
There is also a text field named **GUID**, which stores a *UUID* (Universally Unique Identifier) compliant with RFC 4122.

Although GUID is not mandatory at the schema level (it is not declared NOT NULL), its functional requirement is enforced by two triggers:
- **datastreamguid (INSERT)** trigger: if GUID is missing or empty, a correctly formatted UUID is generated and inserted automatically.
- **datastreamguidupdate (UPDATE)** trigger: prevents any modification of GUID after insertion, making it immutable (effectively behaving as a stable key).  

Any foreign keys (FK) from other tables reference this table’s GUID field rather than the id field, ensuring stable and interoperable references across datasets and database instances.


### Relationships (as child)
- `datastream.guid_soilderivedobject` → `soilderivedobject.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilderivedobject` cascades to `datastream`.
- `datastream.guid_profileelement` → `profileelement.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `profileelement` cascades to `datastream`.
- `datastream.guid_soilprofile` → `soilprofile.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilprofile` cascades to `datastream`.
- `datastream.guid_soilsite` → `soilsite.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilsite` cascades to `datastream`.
- `datastream.guid_observingprocedure` → `observingprocedure.guid` (**ON UPDATE** CASCADE, **ON DELETE** SET NULL)
- `datastream.guid_observedproperty` → `observedproperty.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `observedproperty` cascades to `datastream`.
- `datastream.guid_sensor` → `sensor.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `sensor` cascades to `datastream`.
- `datastream.guid_thing` → `thing.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `thing` cascades to `datastream`.
- `datastream.code_unitofmeasure` → `unitofmeasure.code` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `unitofmeasure` cascades to `datastream`.

### Referenced by (as parent)
- `observation.guid_datastream` → `datastream.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_datastream_geom` | No | `observedarea` | `c` | No |
| `sqlite_autoindex_datastream_1` | Yes | `guid` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 


#### `datastreamguid` / `datastreamguidupdate`
**When they run:** AFTER INSERT / AFTER UPDATE OF `guid`

**What they do:** Assign GUID on insert when missing; prevent changing it later.

**If the check passes:** Insert writes GUID; unchanged updates proceed.

**If the check fails:** On change, abort with: `Cannot update guid column.`

#### `datastream_bi_check_proc_prop_pair` / `datastream_bu_check_proc_prop_pair`
**When they run:** BEFORE INSERT / BEFORE UPDATE OF `guid_observingprocedure`, `guid_observedproperty`

**What they do:** If an observing procedure is supplied, verify that the **pair** (`guid_observingprocedure`, `guid_observedproperty`) is **registered** in `obsprocedure_obsdproperty`.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Insert denied: the (guid_observingprocedure, guid_observedproperty) pair is not registered in obsprocedure_obsdproperty`.

#### `i_codespace` / `u_codespace`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** If `codespace` is provided, ensure it exists in `codelist.id` for `collection = 'Category'`.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table datastream: Invalid value for codespace. Must be present in id of Category codelist`.

#### `datastream_bi_bounds_consistency` / `datastream_bu_bounds_consistency`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** When both bounds are provided, require `value_min <= value_max`.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Datastream bounds: value_min must be less than or equal to value_max when both are provided`.

#### `datastream_bi_count_bounds_are_integers` / `datastream_bu_count_bounds_are_integers`
**When they run:** BEFORE INSERT / BEFORE UPDATE (type-specific)

**What they do:** If `type = 'Count'` and bounds are provided, require each bound to be **integral in value**.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Type Count: value_min must be an integer (numerically integral).` or `Type Count: value_max must be an integer (numerically integral).`

#### `datastream_bu_bounds_validate_observations`
**When it runs:** BEFORE UPDATE OF `value_min`, `value_max`

**What it does:** For `type IN ('Quantity','Count')`, scan existing `observation` rows linked to this datastream. If tightening bounds would **exclude** any existing numeric result (`result_real`), block the update.

**If the check passes:** Update proceeds.

**If the check fails:** Aborts with: `Bounds update rejected: some existing observations have result_real below the new value_min.` or `... above the new value_max`.

#### Observation-type enforcement (`observation_bi_type_constraints` / `observation_bu_type_constraints`)
**When they run:** BEFORE INSERT / BEFORE UPDATE on `observation`

**What they do:** Read the linked datastream (`guid_datastream`) and enforce the **shape** of result fields and bounds:
- **Quantity**: `result_real` **NOT NULL**; `result_text` and `result_boolean` **NULL**; apply bounds when present.
- **Category**: `result_text` **NOT NULL**; others **NULL**; `result_text` must exist in codelist collection equal to datastream `codespace`.
- **Boolean**: `result_boolean` **NOT NULL** and in `(0, 1)`; others **NULL**.
- **Count**: `result_real` **NOT NULL** and **integral in value**; others **NULL**; bounds enforced like Quantity.
- **Text**: `result_text` **NOT NULL**; others **NULL**.

**If the check passes:** Insert/update proceeds.

**If the check fails:** The corresponding type-specific message is raised and the statement aborts.

#### Phenomenon-time synchronization (`observation_ai/au/ad_recalc_ds_times`)
**When they run:** AFTER INSERT / AFTER UPDATE / AFTER DELETE on `observation`

**What they do:** Recompute the datastream’s phenomenon time window by scanning all observations:
- `phenomenontime_start = MIN(observation.phenomenontime_start)`
- `phenomenontime_end = MAX(COALESCE(observation.phenomenontime_end, observation.phenomenontime_start))`

**If the check passes:** No error; times are updated transparently.

**If the check fails:** No failure path — these triggers just keep times in sync.

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



##  How to Populate the `codelist` Table for Codespace Management

This document provides technical guidelines for correctly populating the `codelist` table in a **GeoPackage/SQLite database**.  
Proper population of this table ensures that **triggers** defined in the GeoPackage work as intended and that codespaces are managed consistently.

### Why Is This Important?

The `codelist` table contains all **INSPIRE code lists** required to manage many tables in the GeoPackage.  
In this context, it is also used to store **codespaces** and their corresponding values.

The table will include:
- **Codespace definitions** (e.g., `coatingNatureValueCode`)
- **Codespace elements** (e.g., `…-C`, `…-CC`, etc.)

>**Rule:** Always insert the **codespace list first** (top-level), then its **elements**.


## Workflow Overview

### Step 1 — Insert the Codespace List (Top-Level)

Each codespace list requires:
- `id`: **A unique URI or key for the list**
- `label`: A human-readable name for the list
- `collection`: Always set to **`'Category'`**

**Example:**
```sql
INSERT INTO codelist (id, label, collection)
VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode',
        'coatingNatureValueCode',
        'Category');
```

### Step 2 — Insert the Codespace Elements

For each element in the codespace:
- `id`: A unique URI or key for the element (e.g., …-C, …-CC)
- `label`: A descriptive label for the element
- `collection`: **The id of the codespace list created in Step 1**

**Example:**
```sql
INSERT INTO codelist (id, label, collection) 
VALUES('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-C',  
	   'Clay',                
	   'http://w3id.org/glosis/model/codelists/coatingNatureValueCode'),
INSERT INTO "codelist" (id, label, collection) 
VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-CC', 
		'Calcium carbonate', 
		'http://w3id.org/glosis/model/codelists/coatingNatureValueCode'),
INSERT INTO "codelist" (id, label, collection) 
VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-CH', 
		'Clay and humus (organic matter)', 
		'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
```
### Resulting Table Structure
After executing the above statements, the codelist table will look like this:

| id | label | collection |
|------|------|-----------|
| http://w3id.org/glosis/model/codelists/coatingNatureValueCode | coatingNatureValueCode| Category |
| http://w3id.org/glosis/model/codelists/coatingNatureValueCode-C | Clay| http://w3id.org/glosis/model/codelists/coatingNatureValueCode |
| http://w3id.org/glosis/model/codelists/coatingNatureValueCode-CC | Calcium carbonate| http://w3id.org/glosis/model/codelists/coatingNatureValueCode |
| http://w3id.org/glosis/model/codelists/coatingNatureValueCode-CH | Clay and humus (organic matter)| http://w3id.org/glosis/model/codelists/coatingNatureValueCode |

---
<a id="derivedprofilepresenceinsoilbody"></a>
## Table: `derivedprofilepresenceinsoilbody`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guid_soilbody` | `TEXT` | NOT NULL | Foreign key to the SoilBody table. |
| `guid_soilprofile` | `TEXT` | NOT NULL | Foreign key to the SoilProfile table, guid field. |
| `lowervalue` | `REAL` |  | Upper value. |
| `uppervalue` | `REAL` |  | Lower value. |

### Relationships (as child)
- `derivedprofilepresenceinsoilbody.guid_soilprofile` → `soilprofile.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilprofile` cascades to `derivedprofilepresenceinsoilbody`.
- `derivedprofilepresenceinsoilbody.guid_soilbody` → `soilbody.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilbody` cascades to `derivedprofilepresenceinsoilbody`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_derivedprofilepresenceinsoilbody_1` | Yes | `guid_soilbody`, `guid_soilprofile` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 


#### `i_cecklowervaluesum` / `u_cecklowervaluesum`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** For the same `guid_soilbody`, compute the cumulative `lowervalue` across existing rows. On insert, it evaluates `SUM(lowervalue) + NEW.lowervalue`; on update, it evaluates `SUM(lowervalue) - OLD.lowervalue + NEW.lowervalue`. The total must be **≤ 100.00**.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table derivedprofilepresenceinsoilbody: sum of lowervalue exceeds 100 for the same guid_soilbody`.

#### `i_checkisderived_soilbody` / `u_checkisderived_soilbody`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** Ensure `guid_soilprofile` references a **DERIVED** profile (`isderived = 1`).

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table derivedprofilepresenceinsoilbody: Attention, the value of the "guid_soilprofile" field cannot be inserted because profile is not of type derived`.

---
<a id="faohorizonnotationtype"></a>
## Table: `faohorizonnotationtype`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guid` | `TEXT` |  | Universally unique identifier. |
| `faohorizondiscontinuity` | `INTEGER` |  | Number used to indicate a discontinuity in the horizon notation. |
| `faohorizonmaster_1` | `TEXT` | NOT NULL | First Symbol of the master part of the horizon notation. |
| `faohorizonmaster_2` | `TEXT` |  | Second Symbol of the master part of the horizon notation. |
| `faohorizonsubordinate_1` | `TEXT` |  | First Designations of subordinate distinctions and features within the master horizons and layers are based on profile characteristics observable in the field and are applied during the description of the soil at the site. |
| `faohorizonsubordinate_2` | `TEXT` |  | Second Designations of subordinate distinctions and features within the master horizons and layers are based on profile characteristics observable in the field and are applied during the description of the soil at the site. |
| `faohorizonsubordinate_3` | `TEXT` |  | Third Designations of subordinate distinctions and features within the master horizons and layers are based on profile characteristics observable in the field and are applied during the description of the soil at the site. |
| `faohorizonvertical` | `INTEGER` |  |  |
| `faoprime` | `TEXT` | NOT NULL | A prime and double prime may be used to connotate master horizon symbol of the lower of two respectively three horizons having identical Arabic-numeral prefixes and letter combinations. |
| `isoriginalclassification` | `BOOLEAN` | NOT NULL, DEFAULT 0 | Boolean value to indicate whether the FAO horizon notation was the original notation to describe the horizon. |
| `guid_profileelement` | `TEXT` |  | Foreign key to the ProfileElement table,  guid field. |


### Table Identifiers
In this table, the primary key is the *id* field (integer, auto-incrementing).  
There is also a text field named **GUID**, which stores a *UUID* (Universally Unique Identifier) compliant with RFC 4122.

Although GUID is not mandatory at the schema level (it is not declared NOT NULL), its functional requirement is enforced by two triggers:
- **faohorizonnotationtypeguid (INSERT)** trigger: if GUID is missing or empty, a correctly formatted UUID is generated and inserted automatically.
- **faohorizonnotationtypeguidupdate (UPDATE)** trigger: prevents any modification of GUID after insertion, making it immutable (effectively behaving as a stable key).  

Any foreign keys (FK) from other tables reference this table’s GUID field rather than the id field, ensuring stable and interoperable references across datasets and database instances.


### Relationships (as child)
- `faohorizonnotationtype.guid_profileelement` → `profileelement.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `profileelement` cascades to `faohorizonnotationtype`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_faohorizonnotationtype_2` | Yes | `guid_profileelement` | `u` | No |
| `sqlite_autoindex_faohorizonnotationtype_1` | Yes | `guid` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 


#### `faohorizonnotationtypeguid` / `faohorizonnotationtypeguidupdate`
**When they run:** AFTER INSERT / AFTER UPDATE OF `guid`

**What they do:** Assign a GUID on insert when missing; prevent changing it later.

**If the check passes:** Insert writes GUID; unchanged updates proceed.

**If the check fails:** On change, abort with: `Cannot update guid column.`

#### `i_checkfaoprofileelementtype` / `u_ceckfaoprofileelementtype`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** Ensure the linked `profileelement` (`guid_profileelement`) is **HORIZON** (`profileelementtype = 0`).

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table faohorizonnotationtype: The associated profileelement must have profileelementtype = 0 (HORIZON)`.

#### FAO codelist validations (`i_`/`u_` variants)
- `faohorizonmaster_1`, `faohorizonmaster_2` must exist in **FAOHorizonMasterValue**.
- `faohorizonsubordinate_1/2/3` (when provided and in sequence) must exist in **FAOHorizonSubordinateValue**.
- `faoprime` must exist in **FAOPrimeValue**.

**If the check passes:** Statement proceeds.

**If the check fails:** The corresponding invalid-value message is raised and the statement aborts.

---
<a id="isbasedonobservedsoilprofile"></a>
## Table: `isbasedonobservedsoilprofile`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guid_soilderivedobject` | `TEXT` | NOT NULL | Foreign key to the SoilDerivedObject table, guid field. |
| `guid_soilprofile` | `TEXT` | NOT NULL | Foreign key to the SoilProfile table, guid field. |

### Relationships (as child)
- `isbasedonobservedsoilprofile.guid_soilprofile` → `soilprofile.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilprofile` cascades to `isbasedonobservedsoilprofile`.
- `isbasedonobservedsoilprofile.guid_soilderivedobject` → `soilderivedobject.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilderivedobject` cascades to `isbasedonobservedsoilprofile`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_isbasedonobservedsoilprofile_1` | Yes | `guid_soilderivedobject`, `guid_soilprofile` | `u` | No |

### Triggers

For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 


#### `i_checkisobserved_dobj` / `u_checkisobserved_dobj`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** Ensure `guid_soilprofile` references an **OBSERVED** profile (`isderived = 0`).

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table isbasedonobservedsoilprofile : Attention, the value of the "guid_soilprofile" field cannot be inserted because profile is not of type observed`.

---
<a id="isbasedonsoilbody"></a>
## Table: `isbasedonsoilbody`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guid_soilderivedobject` | `TEXT` | NOT NULL | Foreign key to the SoilDerivedObject table, guid field. |
| `guid_soilbody` | `TEXT` | NOT NULL | Foreign key to the SoilBody table, guid field. |

### Relationships (as child)
- `isbasedonsoilbody.guid_soilbody` → `soilbody.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilbody` cascades to `isbasedonsoilbody`.
- `isbasedonsoilbody.guid_soilderivedobject` → `soilderivedobject.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilderivedobject` cascades to `isbasedonsoilbody`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_isbasedonsoilbody_1` | Yes | `guid_soilderivedobject`, `guid_soilbody` | `u` | No |

### Triggers
- None

---
<a id="isbasedonsoilderivedobject"></a>
## Table: `isbasedonsoilderivedobject`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guid_base` | `TEXT` | NOT NULL | Foreign key to the SoilDerivedObject table, guid field. - Base SoilDerivedObject. |
| `guid_related` | `TEXT` | NOT NULL | Foreign key to the SoilDerivedObject table, guid field. - Derived SoilDerivedObject. |

### Relationships (as child)
- `isbasedonsoilderivedobject.guid_related` → `soilderivedobject.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilderivedobject` cascades to `isbasedonsoilderivedobject`.
- `isbasedonsoilderivedobject.guid_base` → `soilderivedobject.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilderivedobject` cascades to `isbasedonsoilderivedobject`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_isbasedonsoilderivedobject_1` | Yes | `guid_base`, `guid_related` | `u` | No |

### Triggers
- None

---
<a id="isderivedfrom"></a>
## Table: `isderivedfrom`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guid_base` | `TEXT` | NOT NULL | Foreign key to the SoilProfile table, guid field. - Observed Soil Profile. |
| `guid_related` | `TEXT` | NOT NULL | Foreign key to the SoilProfile table, guid field. - Derived Soil Profile. |

### Relationships (as child)
- `isderivedfrom.guid_related` → `soilprofile.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilprofile` cascades to `isderivedfrom`.
- `isderivedfrom.guid_base` → `soilprofile.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilprofile` cascades to `isderivedfrom`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_isderivedfrom_1` | Yes | `guid_base`, `guid_related` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 


#### `i_checkisderived` / `u_checkisderived`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** For `guid_base`, ensure the referenced profile in `soilprofile` has `isderived = 1` (DERIVED).

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table isderivedfrom: Attention, the value of the "guid_base" field in the "isderivedfrom" table cannot be inserted because profile is not of type derived`.

#### `i_checkisobserved` / `u_checkisobserved`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** For `guid_related`, require the referenced profile in `soilprofile` to have `isderived = 0` (OBSERVED).

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table isderivedfrom: Attention, the value of the "guid_related" field in the "isderivedfrom" table cannot be inserted because profile is not of type observed`.

---
<a id="observation"></a>
## Table: `observation`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | A unique, read-only attribute that serves as an identifier for the entity. |
| `guid` | `TEXT` |  | Universally unique identifier. |
| `phenomenontime_start` | `DATETIME` | NOT NULL, DEFAULT strftime('%Y-%m-%dT%H:%M:%fZ', 'now') | The time instant when the Observation happens, or the start time if it happens over a period. |
| `phenomenontime_end` | `DATETIME` |  | The end time if the Observation happens over a period. |
| `result_text` | `TEXT` |  | The estimated value of an ObservedProperty from the Observation, when the Type is Category or Text. |
| `result_real` | `REAL` |  | The estimated value of an ObservedProperty from the Observation, when the Type is Quantity or Count. |
| `result_boolean` | `BOOLEAN` |  | The estimated value of an ObservedProperty from the Observation, when the Type is Boolean. |
| `resulttime` | `DATETIME` |  | The time of the Observation’s result was generated. |
| `validtime_start` | `DATETIME` |  | The start time of the period during which the result may be used. |
| `validtime_end` | `DATETIME` |  | The end time of the period during which the result may be used. |
| `properties` | `TEXT` |  | mime type: 'application/json'. A JSON Object containing user-annotated properties as key-value pairs. |
| `guid_datastream` | `TEXT` | NOT NULL | Foreign key to the Datstream table, guid field. |


### Table Identifiers
In this table, the primary key is the *id* field (integer, auto-incrementing).  
There is also a text field named **GUID**, which stores a *UUID* (Universally Unique Identifier) compliant with RFC 4122.

Although GUID is not mandatory at the schema level (it is not declared NOT NULL), its functional requirement is enforced by two triggers:
- **observationguid (INSERT)** trigger: if GUID is missing or empty, a correctly formatted UUID is generated and inserted automatically.
- **observationguidupdate (UPDATE)** trigger: prevents any modification of GUID after insertion, making it immutable (effectively behaving as a stable key).  

Any foreign keys (FK) from other tables reference this table’s GUID field rather than the id field, ensuring stable and interoperable references across datasets and database instances.


### Relationships (as child)
- `observation.guid_datastream` → `datastream.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `datastream` cascades to `observation`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_observation_2` | Yes | `phenomenontime_start`, `guid_datastream` | `u` | No |
| `sqlite_autoindex_observation_1` | Yes | `guid` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 



#### `observationguid` / `observationguidupdate`
**When they run:** AFTER INSERT / AFTER UPDATE OF `guid`

**What they do:** Assign GUID at insert when missing; prevent changes later.

**If the check passes:** Insert writes GUID; unchanged updates proceed.

**If the check fails:** On change, abort with: `Cannot update guid column.`



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
<a id="observedproperty"></a>
## Table: `observedproperty`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | A unique, read-only attribute that serves as an identifier for the entity. |
| `guid` | `TEXT` |  | Universally unique identifier. |
| `name` | `TEXT` | NOT NULL | A property provides a label for ObservedProperty entity, commonly a descriptive name. |
| `definition` | `TEXT` | NOT NULL | The URI of the ObservedProperty. Dereferencing this URI SHOULD result in a representation of the definition of the ObservedProperty. The definition SHOULD be unique in a service. |
| `description` | `TEXT` |  | A description about the ObservedProperty. |
| `properties` | `TEXT` |  | mime type: 'application/json'. A JSON Object containing user-annotated properties as key-value pairs. |
| `source` | `TEXT` | NOT NULL, DEFAULT 'Local' | Indicate the origin of the data. In the case of the insertion of new properties by the user, these will be marked with the label «Local». |


### Table Identifiers
In this table, the primary key is the *id* field (integer, auto-incrementing).  
There is also a text field named **GUID**, which stores a *UUID* (Universally Unique Identifier) compliant with RFC 4122.

Although GUID is not mandatory at the schema level (it is not declared NOT NULL), its functional requirement is enforced by two triggers:
- **observedpropertyguid (INSERT)** trigger: if GUID is missing or empty, a correctly formatted UUID is generated and inserted automatically.
- **observedpropertyguidupdate (UPDATE)** trigger: prevents any modification of GUID after insertion, making it immutable (effectively behaving as a stable key).  

Any foreign keys (FK) from other tables reference this table’s GUID field rather than the id field, ensuring stable and interoperable references across datasets and database instances.


### Relationships (as child)
- None

### Referenced by (as parent)
- `datastream.guid_observedproperty` → `observedproperty.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `obsprocedure_obsdproperty.guid_observedproperty` → `observedproperty.guid` (**ON UPDATE** CASCADE, **ON DELETE** RESTRICT)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_observedproperty_1` | Yes | `guid` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 



#### `observedpropertyguid` / `observedpropertyguidupdate`
**When they run:** AFTER INSERT / AFTER UPDATE OF `guid`

**What they do:** Assign GUID at insert when missing; block later changes.

**If the check passes:** Insert writes GUID; unchanged updates proceed.

**If the check fails:** On change, abort with: `Cannot update guid column.`

---
<a id="observingprocedure"></a>
## Table: `observingprocedure`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | A unique, read-only attribute that serves as an identifier for the entity. |
| `guid` | `TEXT` |  | Universally unique identifier. |
| `name` | `TEXT` | NOT NULL | A property provides a label for Observing Procedure entity, commonly a descriptive name. |
| `definition` | `TEXT` |  | The URI linking the Thing to an external definition. Dereferencing this URI SHOULD result in a representation of the definition of the Observing Procedure. |
| `description` | `TEXT` |  | This is a short description of the corresponding Observing Procedure entity. |
| `properties` | `TEXT` |  | mime type: 'application/json'. A JSON Object containing user-annotated properties as key-value pairs. |

### Table Identifiers
In this table, the primary key is the *id* field (integer, auto-incrementing).  
There is also a text field named **GUID**, which stores a *UUID* (Universally Unique Identifier) compliant with RFC 4122.

Although GUID is not mandatory at the schema level (it is not declared NOT NULL), its functional requirement is enforced by two triggers:
- **observingprocedureguid (INSERT)** trigger: if GUID is missing or empty, a correctly formatted UUID is generated and inserted automatically.
- **observingprocedureguidupdate (UPDATE)** trigger: prevents any modification of GUID after insertion, making it immutable (effectively behaving as a stable key).  

Any foreign keys (FK) from other tables reference this table’s GUID field rather than the id field, ensuring stable and interoperable references across datasets and database instances.


### Relationships (as child)
- None

### Referenced by (as parent)
- `datastream.guid_observingprocedure` → `observingprocedure.guid` (**ON UPDATE** CASCADE, **ON DELETE** SET NULL)
- `obsprocedure_obsdproperty.guid_observingprocedure` → `observingprocedure.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `obsprocedure_sensor.guid_observingprocedure` → `observingprocedure.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_observingprocedure_1` | Yes | `guid` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 



#### `observingprocedureguid` / `observingprocedureguidupdate`
**When they run:** AFTER INSERT / AFTER UPDATE OF `guid`

**What they do:** Assign GUID at insert when missing; block changes later.

**If the check passes:** Insert writes GUID; unchanged updates proceed.

**If the check fails:** On change, abort with: `Cannot update guid column.`

---
<a id="obsprocedure_obsdproperty"></a>
## Table: `obsprocedure_obsdproperty`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | A unique, read-only attribute that serves as an identifier for the entity. |
| `guid_observingprocedure` | `TEXT` | NOT NULL | Foreign key to the  Procedure table, guid field. |
| `guid_observedproperty` | `TEXT` | NOT NULL | Foreign key to the Observed Property table, guid field. |

### Relationships (as child)
- `obsprocedure_obsdproperty.guid_observedproperty` → `observedproperty.guid` (**ON UPDATE** CASCADE, **ON DELETE** RESTRICT)
- `obsprocedure_obsdproperty.guid_observingprocedure` → `observingprocedure.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `observingprocedure` cascades to `obsprocedure_obsdproperty`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_obsprocedure_obsdproperty_1` | Yes | `guid_observingprocedure`, `guid_observedproperty` | `u` | No |

### Triggers
- None

---
<a id="obsprocedure_sensor"></a>
## Table: `obsprocedure_sensor`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | A unique, read-only attribute that serves as an identifier for the entity. |
| `guid_observingprocedure` | `TEXT` | NOT NULL | Foreign key to the  Procedure table, guid field. |
| `guid_sensor` | `TEXT` | NOT NULL |  |

### Relationships (as child)
- `obsprocedure_sensor.guid_sensor` → `sensor.guid` (**ON UPDATE** CASCADE, **ON DELETE** RESTRICT)
- `obsprocedure_sensor.guid_observingprocedure` → `observingprocedure.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `observingprocedure` cascades to `obsprocedure_sensor`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_obsprocedure_sensor_1` | Yes | `guid_observingprocedure`, `guid_sensor` | `u` | No |

### Triggers
- None

---
<a id="otherhorizon_profileelement"></a>
## Table: `otherhorizon_profileelement`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guid_profileelement` | `TEXT` | NOT NULL | Foreign key to the ProfileElement table, guid field. |
| `guid_otherhorizonnotationtype` | `TEXT` | NOT NULL | Foreign key to the OtherhorizonNotationType table, guid field. |

### Relationships (as child)
- `otherhorizon_profileelement.guid_otherhorizonnotationtype` → `otherhorizonnotationtype.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `otherhorizonnotationtype` cascades to `otherhorizon_profileelement`.
- `otherhorizon_profileelement.guid_profileelement` → `profileelement.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `profileelement` cascades to `otherhorizon_profileelement`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_otherhorizon_profileelement_1` | Yes | `guid_profileelement`, `guid_otherhorizonnotationtype` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 


#### `i_ceckothprofileelementtype` / `u_ceckothprofileelementtype`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** Ensure the linked `profileelement` is **HORIZON** (`profileelementtype = 0`).

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table otherhorizon_profileelement: The associated profileelement must have profileelementtype = 0 (HORIZON)`.

---
<a id="otherhorizonnotationtype"></a>
## Table: `otherhorizonnotationtype`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guid` | `TEXT` |  | Universally unique identifier. |
| `horizonnotation` | `TEXT` | NOT NULL | Notation characterizing the soil horizon according to a specified classification system. |
| `diagnostichorizon` | `TEXT` |  | Codelist wrbdiagnostichorizonvalue. |
| `isoriginalclassification` | `BOOLEAN` | NOT NULL, DEFAULT 0 | Boolean value to indicate whether the specified horizon notation system was the original notation system to describe the horizon. |
| `otherhorizonnotation` | `TEXT` |  |  |


### Table Identifiers
In this table, the primary key is the *id* field (integer, auto-incrementing).  
There is also a text field named **GUID**, which stores a *UUID* (Universally Unique Identifier) compliant with RFC 4122.

Although GUID is not mandatory at the schema level (it is not declared NOT NULL), its functional requirement is enforced by two triggers:
- **otherhorizonnotationtypeguid (INSERT)** trigger: if GUID is missing or empty, a correctly formatted UUID is generated and inserted automatically.
- **otherhorizonnotationtypeguidupdate (UPDATE)** trigger: prevents any modification of GUID after insertion, making it immutable (effectively behaving as a stable key).  

Any foreign keys (FK) from other tables reference this table’s GUID field rather than the id field, ensuring stable and interoperable references across datasets and database instances.


### Relationships (as child)
- None

### Referenced by (as parent)
- `otherhorizon_profileelement.guid_otherhorizonnotationtype` → `otherhorizonnotationtype.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_otherhorizonnotationtype_1` | Yes | `guid` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 



#### `otherhorizonnotationtypeguid` / `otherhorizonnotationtypeguidupdate`
**When they run:** AFTER INSERT / AFTER UPDATE OF `guid`

**What they do:** Assign GUID at insert when missing; block changes afterwards.

**If the check passes:** Insert writes GUID; unchanged updates proceed.

**If the check fails:** On change, abort with: `Cannot update guid column.`

#### `i_otherhorizonnotationtype` / `u_otherhorizonnotationtype`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** Validate `horizonnotation` membership in **OtherHorizonNotationTypeValue**.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table otherhorizonnotationtype: Invalid value for horizonnotation. Must be present in id of otherhorizonnotationtypevalue codelist.`

#### `i_diagnostichorizon` / `u_diagnostichorizon`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** If provided, `diagnostichorizon` must exist in the **relative codelist** named by `NEW.horizonnotation`.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table otherhorizonnotationtype: Invalid value for diagnostichorizon. Must be present in the relativecodelist.`

---
<a id="othersoilnametype"></a>
## Table: `othersoilnametype`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guid` | `TEXT` |  | Universally unique identifier. |
| `othersoilname_type` | `TEXT` | NOT NULL | Name of the soil profile according to a specific classification scheme. |
| `othersoilname_class` | `TEXT` |  | Specific classification scheme. |
| `isoriginalclassification` | `BOOLEAN` | NOT NULL, DEFAULT 0 | Boolean value to indicate whether the specified classification scheme was the original classification scheme to describe the profile. |
| `othersoilname` | `TEXT` |  | Foreign key to the SoilProfile table, guid field. |

### Table Identifiers
In this table, the primary key is the *id* field (integer, auto-incrementing).  
There is also a text field named **GUID**, which stores a *UUID* (Universally Unique Identifier) compliant with RFC 4122.

Although GUID is not mandatory at the schema level (it is not declared NOT NULL), its functional requirement is enforced by two triggers:
- **othersoilnametypeguid (INSERT)** trigger: if GUID is missing or empty, a correctly formatted UUID is generated and inserted automatically.
- **othersoilnametypeguidupdate (UPDATE)** trigger: prevents any modification of GUID after insertion, making it immutable (effectively behaving as a stable key).  

Any foreign keys (FK) from other tables reference this table’s GUID field rather than the id field, ensuring stable and interoperable references across datasets and database instances.


### Relationships (as child)
- `othersoilnametype.othersoilname` → `soilprofile.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilprofile` cascades to `othersoilnametype`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_othersoilnametype_1` | Yes | `guid` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 



#### `othersoilnametypeguid` / `othersoilnametypeguidupdate`
**When they run:** AFTER INSERT / AFTER UPDATE OF `guid`

**What they do:** Auto-generate a GUID at insert if missing; prevent changing it later.

**If the check passes:** Insert writes GUID; unchanged updates proceed.

**If the check fails:** On GUID change attempt, abort with: `Cannot update guid column.`

#### `i_soilname` / `u_soilname`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** Validate that `othersoilname_type` exists in the `OtherSoilNameTypeValue` codelist.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table othersoilnametype: Invalid value for othersoilname_type. Must be present in id of othersoilnametypevalue codelist.`
---
<a id="profileelement"></a>
## Table: `profileelement`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guid` | `TEXT` |  | Universally unique identifier. |
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
| `ispartof` | `TEXT` | NOT NULL | Foreign key to the SoilProfile table, guid field. |

### Table Identifiers
In this table, the primary key is the *id* field (integer, auto-incrementing).  
There is also a text field named **GUID**, which stores a *UUID* (Universally Unique Identifier) compliant with RFC 4122.

Although GUID is not mandatory at the schema level (it is not declared NOT NULL), its functional requirement is enforced by two triggers:
- **profileelementguid (INSERT)** trigger: if GUID is missing or empty, a correctly formatted UUID is generated and inserted automatically.
- **profileelementguidupdate (UPDATE)** trigger: prevents any modification of GUID after insertion, making it immutable (effectively behaving as a stable key).  

Any foreign keys (FK) from other tables reference this table’s GUID field rather than the id field, ensuring stable and interoperable references across datasets and database instances.


### Relationships (as child)
- `profileelement.ispartof` → `soilprofile.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilprofile` cascades to `profileelement`.

### Referenced by (as parent)
- `datastream.guid_profileelement` → `profileelement.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `faohorizonnotationtype.guid_profileelement` → `profileelement.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `otherhorizon_profileelement.guid_profileelement` → `profileelement.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_profileelement_1` | Yes | `guid` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 


#### `profileelementguid` / `profileelementguidupdate`
**When they run:** AFTER INSERT / AFTER UPDATE OF `guid`

**What they do:** Generate a GUID when missing; prevent changing it later.

**If the check passes:** Insert writes GUID; unchanged updates proceed.

**If the check fails:** On change, abort with: `Cannot update guid column.`

#### `i_ceckvalidversionprofileelement`
**When it runs:** BEFORE INSERT

**What it does:** Require `beginlifespanversion < endlifespanversion`.

**If the check passes:** Insert proceeds.

**If the check fails:** Aborts with: `Table profileelement: beginlifespanversion must be less than endlifespanversion`.

#### `i_ceckvaliddeepprofileelement` / `u_ceckvaliddeepprofileelement`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** Enforce depth-range ordering: `uppervalue` must be **less** than `lowervalue`.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table profileelement: profileelementdepthrange_uppervalue must be less than profileelementdepthrange_lowervalue`.

#### `i_checkgeogenicfieldsnull` / `u_checkgeogenicfieldsnotnull`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** When `layertype` is **not** geogenic (`http://inspire.ec.europa.eu/codelist/LayerTypeValue/geogenic`), the fields `layerrocktype`, `layergenesisprocess`, `layergenesisenviroment`, `layergenesisprocessstate` must all be **NULL**.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with a specific message pointing to the offending field (e.g., `layerrocktype must be NULL when LayerTypeValue is not "geogenic".`).

#### `i_ceckhorizonfields` / `u_ceckhorizonfields`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** For horizon-type elements (`profileelementtype = 0`), all layer-specific attributes must be **NULL**.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with messages such as `layertype must be NULL when profilelement is "HORIZON".`

#### `i_layertype` / `u_layertype`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** Validate `layertype` membership in the `LayerTypeValue` codelist.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table profileelement: Invalid value for layertype. Must be present in id of layertypevalue codelist.`

#### `i_layergenesisenviroment` / `u_layergenesisenviroment`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** If provided, `layergenesisenviroment` must exist in `EventEnvironmentValue`.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table profileelement: Invalid value for layergenesisenviroment. Must be present in id of eventenvironmentvalue codelist.`

#### `i_layergenesisprocess` / `u_layergenesisprocess`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** If provided, `layergenesisprocess` must exist in `EventProcessValue`.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table profileelement: Invalid value for layergenesisprocess. Must be present in id of eventprocessvalue codelist.`

#### `i_layergenesisprocessstate` / `u_layergenesisprocessstate`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** If provided, `layergenesisprocessstate` must exist in `LayerGenesisProcessStateValue`.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table profileelement: Invalid value for layergenesisprocessstate. Must be present in id of layergenesisprocessstatevalue codelist.`

#### `i_layerrocktype` / `u_layerrocktype`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** If provided, `layerrocktype` must exist in `LithologyValue`.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table profileelement: Invalid value for layerrocktype. Must be present in id of lithologyvalue codelist .`

#### `i_check_depth_range` / `u_check_depth_range`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** Require that at least one of `profileelementdepthrange_uppervalue` or `profileelementdepthrange_lowervalue` is **not NULL** (i.e., some depth info is present).

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `At least one of profileelementdepthrange_uppervalue and profileelementdepthrange_lowervalue must not be null`.

#### `u_begin_today_profileelement` / `u_begin_today_profileelement_error`
**When they run:** AFTER UPDATE

**What they do:** Refresh `beginlifespanversion` when still active; block edits if the end is **past**.

**If the check passes:** Timestamp refreshed / update continues.

**If the check fails:** Aborts with: `If you change record endlifespanversion must be greater than today`.

---
<a id="sensor"></a>
## Table: `sensor`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | A unique, read-only attribute that serves as an identifier for the entity. |
| `guid` | `TEXT` |  | Universally unique identifier. |
| `name` | `TEXT` | NOT NULL | A property provides a label for Sensor entity, commonly a descriptive name. |
| `definition` | `TEXT` |  | The URI linking the Thing to an external definition. Dereferencing this URI SHOULD result in a representation of the definition of the Thing. |
| `description` | `TEXT` |  | The description of the Sensor entity. |
| `encodingtype` | `TEXT` |  | The encoding type of the metadata property. If the metadata field is present, an encodingType must be specified. |
| `metadata` | `TEXT` |  | The detailed description of the Sensor or system. The metadata type is defined by encodingType. |
| `properties` | `TEXT` |  | mime type: 'application/json'. A JSON Object containing user-annotated properties as key-value pairs. |


### Table Identifiers
In this table, the primary key is the *id* field (integer, auto-incrementing).  
There is also a text field named **GUID**, which stores a *UUID* (Universally Unique Identifier) compliant with RFC 4122.

Although GUID is not mandatory at the schema level (it is not declared NOT NULL), its functional requirement is enforced by two triggers:
- **sensorguid (INSERT)** trigger: if GUID is missing or empty, a correctly formatted UUID is generated and inserted automatically.
- **sensorguidupdate (UPDATE)** trigger: prevents any modification of GUID after insertion, making it immutable (effectively behaving as a stable key).  

Any foreign keys (FK) from other tables reference this table’s GUID field rather than the id field, ensuring stable and interoperable references across datasets and database instances.


### Relationships (as child)
- None

### Referenced by (as parent)
- `datastream.guid_sensor` → `sensor.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `obsprocedure_sensor.guid_sensor` → `sensor.guid` (**ON UPDATE** CASCADE, **ON DELETE** RESTRICT)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_sensor_1` | Yes | `guid` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 



#### `sensorguid` / `sensorguidupdate`
**When they run:** AFTER INSERT / AFTER UPDATE OF `guid`

**What they do:** Assign GUID at insert when missing; prevent changes later.

**If the check passes:** Insert writes GUID; unchanged updates proceed.

**If the check fails:** On change, abort with: `Cannot update guid column.`

---
<a id="soilbody"></a>
## Table: `soilbody`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guid` | `TEXT` |  | Universally unique identifier. |
| `inspireid_localid` | `TEXT` |  | A local identifier, assigned by the data provider. The local identifier is unique within the namespace, that is no other spatial object carries the same unique identifier. |
| `inspireid_namespace` | `TEXT` |  | Namespace uniquely identifying the data source of the spatial object. |
| `inspireid_versionid` | `TEXT` |  | The identifier of the particular version of the spatial object, with a maximum length of 25 characters. If the specification of a spatial object type with an external object identifier includes life-cycle information, the version identifier is used to distinguish between the different versions of a spatial object. Within the set of all versions of a spatial object, the version identifier is unique. |
| `beginlifespanversion` | `DATETIME` | NOT NULL, DEFAULT strftime('%Y-%m-%dT%H:%M:%fZ', 'now') | Date and time at which this version of the spatial object was inserted or changed in the spatial data set. |
| `endlifespanversion` | `DATETIME` |  | Date and time at which this version of the spatial object was superseded or retired in the spatial data set. |
| `soilbodylabel` | `TEXT` | NOT NULL | Label to identify the soil body according to the specified reference framework (metadata). |

### Table Identifiers
In this table, the primary key is the *id* field (integer, auto-incrementing).  
There is also a text field named **GUID**, which stores a *UUID* (Universally Unique Identifier) compliant with RFC 4122.

Although GUID is not mandatory at the schema level (it is not declared NOT NULL), its functional requirement is enforced by two triggers:
- **soilbodyguid (INSERT)** trigger: if GUID is missing or empty, a correctly formatted UUID is generated and inserted automatically.
- **soilbodyguidupdate (UPDATE)** trigger: prevents any modification of GUID after insertion, making it immutable (effectively behaving as a stable key).  

Any foreign keys (FK) from other tables reference this table’s GUID field rather than the id field, ensuring stable and interoperable references across datasets and database instances.


### Relationships (as child)
- None

### Referenced by (as parent)
- `derivedprofilepresenceinsoilbody.guid_soilbody` → `soilbody.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `isbasedonsoilbody.guid_soilbody` → `soilbody.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `soilbody_geom.guid_soilbody` → `soilbody.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_soilbody_1` | Yes | `guid` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 


#### `soilbodyguid` / `soilbodyguidupdate`
**When they run:** AFTER INSERT / AFTER UPDATE OF `guid`

**What they do:** Generate a GUID at insert when missing; block GUID changes later.

**If the check passes:** Insert writes GUID; unchanged updates proceed.

**If the check fails:** On change, abort with: `Cannot update guid column.`

#### `i_ceckvalidversionsoilbody`
**When it runs:** BEFORE INSERT

**What it does:** Require `beginlifespanversion < endlifespanversion`.

**If the check passes:** Insert proceeds.

**If the check fails:** Aborts with: `Table soilbody: beginlifespanversion must be less than endlifespanversion`.

#### `u_begin_today_soilbody` / `u_begin_today_soilbody_error`
**When they run:** AFTER UPDATE

**What they do:** Refresh `beginlifespanversion` when still active; block edits if end-of-lifespan is **past**.

**If the check passes:** Timestamp refreshed / update continues.

**If the check fails:** Aborts with: `If you change record endlifespanversion must be greater than today`.


---
<a id="soilbody_geom"></a>
## Table: `soilbody_geom`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guid` | `TEXT` |  | Universally unique identifier. |
| `geom` | `MULTIPOLYGON` | NOT NULL | Geometry. |
| `guid_soilbody` | `TEXT` | NOT NULL | Foreign key to the SoilBody table. |

### Table Identifiers
In this table, the primary key is the *id* field (integer, auto-incrementing).  
There is also a text field named **GUID**, which stores a *UUID* (Universally Unique Identifier) compliant with RFC 4122.

Although GUID is not mandatory at the schema level (it is not declared NOT NULL), its functional requirement is enforced by two triggers:
- **soilbody_geomguid (INSERT)** trigger: if GUID is missing or empty, a correctly formatted UUID is generated and inserted automatically.
- **soilbody_geomguidupdate (UPDATE)** trigger: prevents any modification of GUID after insertion, making it immutable (effectively behaving as a stable key).  

Any foreign keys (FK) from other tables reference this table’s GUID field rather than the id field, ensuring stable and interoperable references across datasets and database instances.


### Relationships (as child)
- `soilbody_geom.guid_soilbody` → `soilbody.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilbody` cascades to `soilbody_geom`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_soiBody_geom` | No | `geom` | `c` | No |
| `sqlite_autoindex_soilbody_geom_1` | Yes | `guid` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 


#### `soilbody_geomguid` / `soilbody_geomguidupdate`
**When they run:** AFTER INSERT / AFTER UPDATE OF `guid`

**What they do:** Assign GUID when missing at insert; prevent changes later.

**If the check passes:** Insert writes GUID; unchanged updates proceed.

**If the check fails:** On change, abort with: `Cannot update guid column.`

---
<a id="soilderivedobject"></a>
## Table: `soilderivedobject`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guid` | `TEXT` |  | Universally unique identifier. |
| `inspireid_localid` | `TEXT` |  | A local identifier, assigned by the data provider. The local identifier is unique within the namespace, that is no other spatial object carries the same unique identifier. |
| `inspireid_namespace` | `TEXT` |  | Namespace uniquely identifying the data source of the spatial object. |
| `inspireid_versionid` | `TEXT` |  | The identifier of the particular version of the spatial object, with a maximum length of 25 characters. If the specification of a spatial object type with an external object identifier includes life-cycle information, the version identifier is used to distinguish between the different versions of a spatial object. Within the set of all versions of a spatial object, the version identifier is unique. |
| `accessuri` | `TEXT` |  | SoilDerivedObject URI. |
| `geometry` | `POLYGON` |  | Geometry. |

### Table Identifiers
In this table, the primary key is the *id* field (integer, auto-incrementing).  
There is also a text field named **GUID**, which stores a *UUID* (Universally Unique Identifier) compliant with RFC 4122.

Although GUID is not mandatory at the schema level (it is not declared NOT NULL), its functional requirement is enforced by two triggers:
- **soilderivedobjectguid (INSERT)** trigger: if GUID is missing or empty, a correctly formatted UUID is generated and inserted automatically.
- **soilderivedobjectguidupdate (UPDATE)** trigger: prevents any modification of GUID after insertion, making it immutable (effectively behaving as a stable key).  

Any foreign keys (FK) from other tables reference this table’s GUID field rather than the id field, ensuring stable and interoperable references across datasets and database instances.


### Relationships (as child)
- None

### Referenced by (as parent)
- `datastream.guid_soilderivedobject` → `soilderivedobject.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `isbasedonobservedsoilprofile.guid_soilderivedobject` → `soilderivedobject.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `isbasedonsoilbody.guid_soilderivedobject` → `soilderivedobject.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `isbasedonsoilderivedobject.guid_related` → `soilderivedobject.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `isbasedonsoilderivedobject.guid_base` → `soilderivedobject.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_soilderivedobject_geom` | No | `geometry` | `c` | No |
| `sqlite_autoindex_soilderivedobject_1` | Yes | `guid` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 


#### `soilderivedobjectguid` / `soilderivedobjectguidupdate`
**When they run:** AFTER INSERT / AFTER UPDATE OF `guid`

**What they do:** Auto-assign a GUID on insert when missing; prevent changing it later.

**If the check passes:** Insert assigns GUID; unchanged updates proceed.

**If the check fails:** On change, abort with: `Cannot update guid column.`

---
<a id="soilplot"></a>
## Table: `soilplot`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guid` | `TEXT` |  |  |
| `soilplotlocation` | `POINT` | NOT NULL | Geometry. |
| `inspireid_localid` | `TEXT` |  |  |
| `inspireid_namespace` | `TEXT` |  |  |
| `inspireid_versionid` | `TEXT` |  |  |
| `soilplottype` | `TEXT` | NOT NULL |  |
| `beginlifespanversion` | `DATETIME` | NOT NULL, DEFAULT strftime('%Y-%m-%dT%H:%M:%fZ', 'now') |  |
| `endlifespanversion` | `DATETIME` |  |  |
| `locatedon` | `TEXT` |  | Foreign key to the SoilSite table, guid field. |

### Table Identifiers
In this table, the primary key is the *id* field (integer, auto-incrementing).  
There is also a text field named **GUID**, which stores a *UUID* (Universally Unique Identifier) compliant with RFC 4122.

Although GUID is not mandatory at the schema level (it is not declared NOT NULL), its functional requirement is enforced by two triggers:
- **soilplotguid (INSERT)** trigger: if GUID is missing or empty, a correctly formatted UUID is generated and inserted automatically.
- **soilplotguidupdate (UPDATE)** trigger: prevents any modification of GUID after insertion, making it immutable (effectively behaving as a stable key).  

Any foreign keys (FK) from other tables reference this table’s GUID field rather than the id field, ensuring stable and interoperable references across datasets and database instances.


### Relationships (as child)
- `soilplot.locatedon` → `soilsite.guid` (**ON UPDATE** CASCADE, **ON DELETE** NO ACTION)

### Referenced by (as parent)
- `soilprofile.location` → `soilplot.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_soilplot_geom` | No | `soilplotlocation` | `c` | No |
| `sqlite_autoindex_soilplot_1` | Yes | `guid` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 


#### `soilplotguid`
**When it runs:** AFTER INSERT

**What it does:** Generates a UUID v4 when `NEW.guid` is NULL.

**If the check passes:** Assigns the GUID.

**If the check fails:** No failure path.

#### `soilplotguidupdate`
**When it runs:** AFTER UPDATE OF `guid`

**What it does:** Prevents changing `guid` by comparing new vs old.

**If the check passes:** Update proceeds.

**If the check fails:** Aborts with: `Cannot update guid column.`

#### `i_ceckvalidversionsoilplot`
**When it runs:** BEFORE INSERT

**What it does:** Ensures `beginlifespanversion < endlifespanversion`.

**If the check passes:** Insert proceeds.

**If the check fails:** Aborts with: `Table soilplot: beginlifespanversion must be less than endlifespanversion`.

#### `i_soilplottype` / `u_soilplottype`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** Validate that `soilplottype` exists in `codelist.id` with `collection = 'SoilPlotTypeValue'`.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table soilplot: Invalid value for soilplottype. Must be present in id of soilplottypevalue codelist.`

#### `u_begin_today_soilplot`
**When it runs:** AFTER UPDATE

**What it does:** If the plot is still active (future/NULL end), refreshes `beginlifespanversion` to **now**.

**If the check passes:** Timestamp is refreshed.

**If the check fails:** No failure path.

#### `u_begin_today_soilplot_error`
**When it runs:** AFTER UPDATE

**What it does:** Blocks edits when `endlifespanversion` lies in the **past**.

**If the check passes:** Update continues.

**If the check fails:** Aborts with: `If you change record endlifespanversion must be greater than today`.

---
<a id="soilprofile"></a>
## Table: `soilprofile`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guid` | `TEXT` |  | Universally unique identifier. |
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
| `location` | `TEXT` |  | Foreign key to the SoilPlot table, guid field. |

### Table Identifiers
In this table, the primary key is the *id* field (integer, auto-incrementing).  
There is also a text field named **GUID**, which stores a *UUID* (Universally Unique Identifier) compliant with RFC 4122.

Although GUID is not mandatory at the schema level (it is not declared NOT NULL), its functional requirement is enforced by two triggers:
- **soilprofileguid (INSERT)** trigger: if GUID is missing or empty, a correctly formatted UUID is generated and inserted automatically.
- **soilprofileguidupdate (UPDATE)** trigger: prevents any modification of GUID after insertion, making it immutable (effectively behaving as a stable key).  

Any foreign keys (FK) from other tables reference this table’s GUID field rather than the id field, ensuring stable and interoperable references across datasets and database instances.


### Relationships (as child)
- `soilprofile.location` → `soilplot.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilplot` cascades to `soilprofile`.

### Referenced by (as parent)
- `datastream.guid_soilprofile` → `soilprofile.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `derivedprofilepresenceinsoilbody.guid_soilprofile` → `soilprofile.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `isbasedonobservedsoilprofile.guid_soilprofile` → `soilprofile.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `isderivedfrom.guid_related` → `soilprofile.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `isderivedfrom.guid_base` → `soilprofile.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `othersoilnametype.othersoilname` → `soilprofile.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `profileelement.ispartof` → `soilprofile.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `wrbqualifiergroup_profile.guid_soilprofile` → `soilprofile.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_soilprofile_2` | Yes | `location` | `u` | No |
| `sqlite_autoindex_soilprofile_1` | Yes | `guid` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 



#### `soilprofileguid` / `soilprofileguidupdate`
**When they run:** AFTER INSERT / AFTER UPDATE OF `guid`

**What they do:** Auto-generate a GUID at insert if missing, and prevent changing it afterwards.

**If the check passes:** Insert writes GUID; updates with unchanged GUID proceed.

**If the check fails:** On change attempt, abort with: `Cannot update guid column.`

#### `i_ceckvalidperiodsoilprofile` / `u_ceckvalidperiodsoilprofile`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** Ensure `validfrom` is **not after** `validto`.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table soilprofile: validto must be less than validfrom`.

#### `i_ceckvalidversionsoilprofile`
**When it runs:** BEFORE INSERT

**What it does:** Checks that `beginlifespanversion < endlifespanversion` (strict inequality).

**If the check passes:** Insert proceeds.

**If the check fails:** Aborts with: `Table soilprofile: beginlifespanversion must be less than endlifespanversion`.

#### `i_ceckprofileLocation` / `u_ceckprofileLocation`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** For **derived** profiles (`isderived = 1`), require `location` to be **NULL**.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Table soilprofile: For DERIVED profile (isderived = 1), location must be NULL`.

#### `i_ceckprofileLocationobserved` / `u_ceckprofileLocationobserved`
**When they run:** BEFORE INSERT (both, despite the `u_` prefix)

**What they do:** For **observed** profiles (`isderived = 0`), require `location` to be **NOT NULL**.

**If the check passes:** Insert proceeds.

**If the check fails:** Aborts with: `Table soilprofile: For OBSERVED profile (isderived = 0), location must be NOT NULL`.

#### `i_wrbreferencesoilgroup` / `u_wrbreferencesoilgroup`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** If `wrbversion` is set, check that `wrbreferencesoilgroup` exists in the **matching year’s** codelist collection (current/2014/2022).

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with (verbatim): `Table soilprofile: Invalid value for wrbversion. Must be present in id of the correct year codelist collection.`

#### `u_begin_today_soilprofile` / `u_begin_today_soilprofile_error`
**When they run:** AFTER UPDATE

**What they do:** Refresh `beginlifespanversion` to **now** when the record is still active; block edits when `endlifespanversion` is **past**.

**If the check passes:** Timestamp refreshed / update proceeds.

**If the check fails:** Aborts with: `If you change record endlifespanversion must be greater than today`.

#### `i_wrbproversion` / `u_wrbproversion`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** Require `wrbversion` to exist in `codelist.id` for `collection = 'wrbversion'`.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with (verbatim): `Table soilprofile: Invalid value for wrbversion. Must be present in id of wrbreferencesoilgroupvalue codelist.`

---
<a id="soilsite"></a>
## Table: `soilsite`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guid` | `TEXT` |  | Universally unique identifier |
| `geometry` | `POLYGON` | NOT NULL | Geometry. |
| `inspireid_localid` | `TEXT` |  | A local identifier, assigned by the data provider. The local identifier is unique within the namespace, that is no other spatial object carries the same unique identifier. |
| `inspireid_namespace` | `TEXT` |  | Namespace uniquely identifying the data source of the spatial object. |
| `inspireid_versionid` | `TEXT` |  | The identifier of the particular version of the spatial object, with a maximum length of 25 characters. If the specification of a spatial object type with an external object identifier includes life-cycle information, the version identifier is used to distinguish between the different versions of a spatial object. Within the set of all versions of a spatial object, the version identifier is unique. |
| `soilinvestigationpurpose` | `TEXT` | NOT NULL | Indication why a survey was conducted. |
| `validfrom` | `DATETIME` | NOT NULL, DEFAULT strftime('%Y-%m-%dT%H:%M:%fZ', 'now') | The time when the phenomenon started to exist in the real world. |
| `validto` | `DATETIME` |  | The time from which the phenomenon no longer exists in the real world. |
| `beginlifespanversion` | `DATETIME` | NOT NULL, DEFAULT strftime('%Y-%m-%dT%H:%M:%fZ', 'now') | Date and time at which this version of the spatial object was inserted or changed in the spatial data set. |
| `endlifespanversion` | `DATETIME` |  | Date and time at which this version of the spatial object was superseded or retired in the spatial data set. |

### Table Identifiers
In this table, the primary key is the *id* field (integer, auto-incrementing).  
There is also a text field named **GUID**, which stores a *UUID* (Universally Unique Identifier) compliant with RFC 4122.

Although GUID is not mandatory at the schema level (it is not declared NOT NULL), its functional requirement is enforced by two triggers:
- **soilsiteguid (INSERT)** trigger: if GUID is missing or empty, a correctly formatted UUID is generated and inserted automatically.
- **soilsiteguidupdate (UPDATE)** trigger: prevents any modification of GUID after insertion, making it immutable (effectively behaving as a stable key).  

Any foreign keys (FK) from other tables reference this table’s GUID field rather than the id field, ensuring stable and interoperable references across datasets and database instances.


### Relationships (as child)
- None

### Referenced by (as parent)
- `datastream.guid_soilsite` → `soilsite.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
- `soilplot.locatedon` → `soilsite.guid` (**ON UPDATE** CASCADE, **ON DELETE** NO ACTION)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `idx_soilsite_geom` | No | `geometry` | `c` | No |
| `sqlite_autoindex_soilsite_1` | Yes | `guid` | `u` | No |

### Triggers

For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 


#### `soilsiteguid`
**When it runs:** AFTER INSERT (per row)

**What it does:** It examines the newly inserted row. If `NEW.guid` is `NULL` or absent, it generates a fresh **UUID v4** in lowercase canonical format and prepares to set it.

**If the check passes:** It updates the just-inserted row, setting `guid` to the generated UUID. No error is raised.

**If the check fails:** No failure path — it only assigns when `guid` is missing.

#### `soilsiteguidupdate`
**When it runs:** AFTER UPDATE OF `guid`

**What it does:** It compares `NEW.guid` with `OLD.guid` to detect any attempt to change the GUID.

**If the check passes:** If the GUID is unchanged, the update proceeds.

**If the check fails:** If `NEW.guid <> OLD.guid`, the statement is aborted with: `Cannot update guid column.`

#### `i_ceckvalidperiodsoilsite`
**When it runs:** BEFORE INSERT

**What it does:** Reads `validfrom` and `validto` from the new row and checks that the **from** date is **not later** than the **to** date.

**If the check passes:** Insert continues.

**If the check fails:** Aborts with: `Table soilsite: validto must be less than validfrom`.

#### `u_ceckvalidperiodsoilsite`
**When it runs:** BEFORE UPDATE

**What it does:** Performs the same period consistency check as above using `NEW.validfrom` and `NEW.validto`.

**If the check passes:** Update continues.

**If the check fails:** Aborts with: `Table soilsite: validto must be less than validfrom`.

#### `i_ceckvalidversionsoilsite`
**When it runs:** BEFORE INSERT

**What it does:** Compares lifecycle fields `beginlifespanversion` and `endlifespanversion`; begin must be **earlier** than end.

**If the check passes:** Insert proceeds.

**If the check fails:** Aborts with: `Table soilsite: beginlifespanversion must be less than endlifespanversion`.

##### `i_soilinvestigationpurpose`
**When it runs:** BEFORE INSERT

**What it does:** Looks up `soilinvestigationpurpose` in the `codelist` table, restricting to `collection = 'SoilInvestigationPurposeValue'`.

**If the check passes:** Insert proceeds.

**If the check fails:** Aborts with: `Table soilsite: Invalid value for soilinvestigationpurpose. Must be present in id of soilinvestigationpurposevalue codelist.`

#### `u_soilinvestigationpurpose`
**When it runs:** BEFORE UPDATE

**What it does:** Performs the same codelist membership check as above before updating.

**If the check passes:** Update proceeds.

**If the check fails:** Same abort message as the insert variant.

#### `u_begin_today_soilsite`
**When it runs:** AFTER UPDATE of selected columns

**What it does:** If `endlifespanversion` is in the **future** or **NULL** (record still active), it refreshes `beginlifespanversion` to the **current timestamp**.

**If the check passes:** The row is updated with the refreshed begin-lifespan timestamp.

**If the check fails:** No explicit failure; this trigger only updates the timestamp.

#### `u_begin_today_soilsite_error`
**When it runs:** AFTER UPDATE of the same columns

**What it does:** If `endlifespanversion` is **before now**, it blocks the edit.

**If the check passes:** When end is in the future or NULL, the update continues.

**If the check fails:** Aborts with: `If you change record endlifespanversion must be greater than today`.


---
<a id="thing"></a>
## Table: `thing`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | A unique, read-only attribute that serves as an identifier for the entity. |
| `guid` | `TEXT` |  | Universally unique identifier. |
| `name` | `TEXT` | NOT NULL | A property provides a label for Thing entity, commonly a descriptive name. |
| `definition` | `TEXT` |  | The URI linking the Thing to an external definition. Dereferencing this URI SHOULD result in a representation of the definition of the Thing. |
| `description` | `TEXT` |  | This is a short description of the corresponding Thing entity. |
| `properties` | `TEXT` |  | mime type: 'application/json'. A JSON Object containing user-annotated properties as key-value pairs. |


### Table Identifiers
In this table, the primary key is the *id* field (integer, auto-incrementing).  
There is also a text field named **GUID**, which stores a *UUID* (Universally Unique Identifier) compliant with RFC 4122.

Although GUID is not mandatory at the schema level (it is not declared NOT NULL), its functional requirement is enforced by two triggers:
- **thingguid (INSERT)** trigger: if GUID is missing or empty, a correctly formatted UUID is generated and inserted automatically.
- **thingguidupdate (UPDATE)** trigger: prevents any modification of GUID after insertion, making it immutable (effectively behaving as a stable key).  

Any foreign keys (FK) from other tables reference this table’s GUID field rather than the id field, ensuring stable and interoperable references across datasets and database instances.


### Relationships (as child)
- None

### Referenced by (as parent)
- `datastream.guid_thing` → `thing.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_thing_1` | Yes | `guid` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 


#### `thingguid` / `thingguidupdate`
**When they run:** AFTER INSERT / AFTER UPDATE OF `guid`

**What they do:** Assign GUID at insert when missing; prevent changes later.

**If the check passes:** Insert writes GUID; unchanged updates proceed.

**If the check fails:** On change, abort with: `Cannot update guid column.`

---
<a id="unitofmeasure"></a>
## Table: `unitofmeasure`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | A unique, read-only attribute that serves as an identifier for the entity. |
| `code` | `TEXT` |  | The Unified Code for Units of Measure is a code system intended to include all units of measures being contemporarily used in international science, engineering, and business. |
| `label` | `TEXT` |  | A word or phrase used to name or describe something, often to identify or classify it. |
| `symbol` | `TEXT` |  | Standardized, unambiguous string used to represent a unit of measure. Symbols are designed for machine-to-machine communication and ensure consistent interpretation of units across systems and applications. |
| `qudt_unit` | `TEXT` |  | Is an entity that represents a standardized measure of a physical quantity. |
| `conversionoffset` | `REAL` |  | Is the value added after applying the multiplier, used for units that do not start at zero relative to the reference unit. |
| `conversionmultiplier` | `REAL` |  | Is the scaling factor used to convert a value from one unit to its reference unit (typically the SI base unit for that dimension). |

### Relationships (as child)
- None

### Referenced by (as parent)
- `datastream.code_unitofmeasure` → `unitofmeasure.code` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_unitofmeasure_1` | Yes | `code` | `u` | No |

### Triggers
- None

---
<a id="wrbqualifiergroup_profile"></a>
## Table: `wrbqualifiergroup_profile`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guid_soilprofile` | `TEXT` | NOT NULL | Foreign key to the SaoilProfile table, guid field. |
| `guid_wrbqualifiergrouptype` | `TEXT` | NOT NULL | Foreign key to the WrbqualifierGroupType table, guid field. |
| `qualifierposition` | `INTEGER` | NOT NULL | Number to indicate the position of a qualifier with regard to the WRB reference soil group (RSG) it belongs to and with regard to its placement to that (RSG) i.e. as a prefix or a suffix. |

### Relationships (as child)
- `wrbqualifiergroup_profile.guid_wrbqualifiergrouptype` → `wrbqualifiergrouptype.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `wrbqualifiergrouptype` cascades to `wrbqualifiergroup_profile`.
- `wrbqualifiergroup_profile.guid_soilprofile` → `soilprofile.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)
  - *Note:* delete on `soilprofile` cascades to `wrbqualifiergroup_profile`.

### Referenced by (as parent)
- None

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_wrbqualifiergroup_profile_1` | Yes | `guid_soilprofile`, `guid_wrbqualifiergrouptype` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 



#### `i_check_wrbversion_match` / `u_check_wrbversion_match`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** Read `wrbversion` from the linked `soilprofile` and `wrbqualifiergrouptype` and ensure they **match**.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Mismatch in wrbversion values`.

#### `i_check_qualifier_position_unique` / `u_check_qualifier_position_unique`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** Within the **same soilprofile** and **same qualifier place**, ensure `qualifierposition` is **unique**.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `qualifierposition must be unique for each qualifierplace within the same soilprofile`.

---
<a id="wrbqualifiergrouptype"></a>
## Table: `wrbqualifiergrouptype`

### Columns

| Name | Type | Constraints | Description |
|------|------|-------------|-------------|
| `id` | `INTEGER` | PRIMARY KEY | Primary Key of the Table. |
| `guid` | `TEXT` |  | Universally unique identifier. |
| `wrbversion` | `TEXT` | NOT NULL, DEFAULT 'https://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue' | Indicates the WRB classification version. |
| `qualifierplace` | `TEXT` | NOT NULL | Attribute to indicate the placement of the Qualifier with regard to the WRB reference soil group (RSG). The placement can be in front of the RSG i.e. prefix or it can be behind the RSG i.e. suffix. |
| `wrbqualifier` | `TEXT` | NOT NULL | Name element of WRB, 2nd level of classification. |
| `wrbspecifier_1` | `TEXT` |  | First code that indicates the degree of expression of a qualifier or the depth range of which the qualifier applies. |
| `wrbspecifier_2` | `TEXT` |  | Second code that indicates the degree of expression of a qualifier or the depth range of which the qualifier applies. |


### Table Identifiers
In this table, the primary key is the *id* field (integer, auto-incrementing).  
There is also a text field named **GUID**, which stores a *UUID* (Universally Unique Identifier) compliant with RFC 4122.

Although GUID is not mandatory at the schema level (it is not declared NOT NULL), its functional requirement is enforced by two triggers:
- **wrbqualifiergrouptypeguid (INSERT)** trigger: if GUID is missing or empty, a correctly formatted UUID is generated and inserted automatically.
- **wrbqualifiergrouptypeguidupdate (UPDATE)** trigger: prevents any modification of GUID after insertion, making it immutable (effectively behaving as a stable key).  

Any foreign keys (FK) from other tables reference this table’s GUID field rather than the id field, ensuring stable and interoperable references across datasets and database instances.


### Relationships (as child)
- None

### Referenced by (as parent)
- `wrbqualifiergroup_profile.guid_wrbqualifiergrouptype` → `wrbqualifiergrouptype.guid` (**ON UPDATE** CASCADE, **ON DELETE** CASCADE)

### Indexes

| Name | Unique | Columns | Origin | Partial |
|------|--------|---------|--------|---------|
| `sqlite_autoindex_wrbqualifiergrouptype_2` | Yes | `wrbversion`, `qualifierplace`, `wrbqualifier`, `wrbspecifier_1`, `wrbspecifier_2` | `u` | No |
| `sqlite_autoindex_wrbqualifiergrouptype_1` | Yes | `guid` | `u` | No |

### Triggers
For every trigger you will find:

- **When it runs** (BEFORE/AFTER, INSERT/UPDATE/DELETE)
- **What it reads and compares** (columns, lookups in other tables)
- **What happens on success** (the statement proceeds, optional updates)
- **What happens on failure** (the exact error text raised)

 


#### `wrbqualifiergrouptypeguid` / `wrbqualifiergrouptypeguidupdate`
**When they run:** AFTER INSERT / AFTER UPDATE OF `guid`

**What they do:** Assign GUID when missing; prevent changing it later.

**If the check passes:** Insert writes GUID; unchanged updates proceed.

**If the check fails:** On change, abort with: `Cannot update guid column.`

#### `i_wrbqualifier` / `u_wrbqualifier`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** Based on `wrbversion`, pick the appropriate **year’s codelist** (current/2014/2022) and verify `wrbqualifier` exists there.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with (verbatim): `Table wrbqualifiergrouptype: Invalid value for wrbversion. Must be present in id of the correct year codelist collection.`

#### `i_qualifierplace` / `u_qualifierplace`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** Ensure `qualifierplace` exists in **WRBQualifierPlaceValue**.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with the invalid-value message.

#### `i_wrbspecifier_1/2` / `u_wrbspecifier_1/2`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** When provided, `wrbspecifier_1` and `wrbspecifier_2` must exist in the **WRBSpecifierValue** collection corresponding to `wrbversion`.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with the invalid-value message.

#### `i_wrbqualversion` / `u_wrbqualversion`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** Ensure `wrbversion` exists in `codelist.id` for `collection = 'wrbversion'`.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with (verbatim): `Table soilprofile: Invalid value for wrbversion. Must be present in id of wrbreferencesoilgroupvalue codelist.`

#### `i_unique_wrbqualifiergrouptype` / `u_unique_wrbqualifiergrouptype`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** Enforce **composite uniqueness** for the tuple `(wrbversion, qualifierplace, wrbqualifier, wrbspecifier_1, wrbspecifier_2)`.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with: `Duplicate entry found for wrbversion, qualifierplace, wrbqualifier, wrbspecifier_1, wrbspecifier_2.`

#### `i_check_specifiers_not_equal` / `u_check_specifiers_not_equal`
**When they run:** BEFORE INSERT / BEFORE UPDATE

**What they do:** Apply two rules: (1) `wrbspecifier_1` must **not equal** `wrbspecifier_2`; (2) if `wrbspecifier_2` is not NULL, then `wrbspecifier_1` must **not be NULL**.

**If the check passes:** Statement proceeds.

**If the check fails:** Aborts with either `wrbspecifier_1 and wrbspecifier_2 must not be equal` or `wrbspecifier_1 must not be NULL when wrbspecifier_2 is not NULL`.


---

Relationships (child → parent):
-------------------------------
- [datastream].guid_soilderivedobject  -->  [soilderivedobject].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [datastream].guid_profileelement  -->  [profileelement].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [datastream].guid_soilprofile  -->  [soilprofile].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [datastream].guid_soilsite  -->  [soilsite].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [datastream].guid_observingprocedure  -->  [observingprocedure].guid  (ON UPDATE CASCADE, ON DELETE SET NULL)
- [datastream].guid_observedproperty  -->  [observedproperty].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [datastream].guid_sensor  -->  [sensor].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [datastream].guid_thing  -->  [thing].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [datastream].code_unitofmeasure  -->  [unitofmeasure].code  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [derivedprofilepresenceinsoilbody].guid_soilprofile  -->  [soilprofile].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [derivedprofilepresenceinsoilbody].guid_soilbody  -->  [soilbody].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [faohorizonnotationtype].guid_profileelement  -->  [profileelement].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [isbasedonobservedsoilprofile].guid_soilprofile  -->  [soilprofile].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [isbasedonobservedsoilprofile].guid_soilderivedobject  -->  [soilderivedobject].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [isbasedonsoilbody].guid_soilbody  -->  [soilbody].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [isbasedonsoilbody].guid_soilderivedobject  -->  [soilderivedobject].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [isbasedonsoilderivedobject].guid_related  -->  [soilderivedobject].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [isbasedonsoilderivedobject].guid_base  -->  [soilderivedobject].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [isderivedfrom].guid_related  -->  [soilprofile].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [isderivedfrom].guid_base  -->  [soilprofile].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [observation].guid_datastream  -->  [datastream].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [obsprocedure_obsdproperty].guid_observedproperty  -->  [observedproperty].guid  (ON UPDATE CASCADE, ON DELETE RESTRICT)
- [obsprocedure_obsdproperty].guid_observingprocedure  -->  [observingprocedure].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [obsprocedure_sensor].guid_sensor  -->  [sensor].guid  (ON UPDATE CASCADE, ON DELETE RESTRICT)
- [obsprocedure_sensor].guid_observingprocedure  -->  [observingprocedure].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [otherhorizon_profileelement].guid_otherhorizonnotationtype  -->  [otherhorizonnotationtype].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [otherhorizon_profileelement].guid_profileelement  -->  [profileelement].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [othersoilnametype].othersoilname  -->  [soilprofile].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [profileelement].ispartof  -->  [soilprofile].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilbody_geom].guid_soilbody  -->  [soilbody].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilplot].locatedon  -->  [soilsite].guid  (ON UPDATE CASCADE, ON DELETE NO ACTION)
- [soilprofile].location  -->  [soilplot].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [wrbqualifiergroup_profile].guid_wrbqualifiergrouptype  -->  [wrbqualifiergrouptype].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [wrbqualifiergroup_profile].guid_soilprofile  -->  [soilprofile].guid  (ON UPDATE CASCADE, ON DELETE CASCADE)

Reverse relationships (parent → children):
------------------------------------------
- [datastream].guid  -->  [observation].guid_datastream  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [observedproperty].guid  -->  [datastream].guid_observedproperty  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [observedproperty].guid  -->  [obsprocedure_obsdproperty].guid_observedproperty  (ON UPDATE CASCADE, ON DELETE RESTRICT)
- [observingprocedure].guid  -->  [datastream].guid_observingprocedure  (ON UPDATE CASCADE, ON DELETE SET NULL)
- [observingprocedure].guid  -->  [obsprocedure_obsdproperty].guid_observingprocedure  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [observingprocedure].guid  -->  [obsprocedure_sensor].guid_observingprocedure  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [otherhorizonnotationtype].guid  -->  [otherhorizon_profileelement].guid_otherhorizonnotationtype  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [profileelement].guid  -->  [datastream].guid_profileelement  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [profileelement].guid  -->  [faohorizonnotationtype].guid_profileelement  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [profileelement].guid  -->  [otherhorizon_profileelement].guid_profileelement  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [sensor].guid  -->  [datastream].guid_sensor  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [sensor].guid  -->  [obsprocedure_sensor].guid_sensor  (ON UPDATE CASCADE, ON DELETE RESTRICT)
- [soilbody].guid  -->  [derivedprofilepresenceinsoilbody].guid_soilbody  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilbody].guid  -->  [isbasedonsoilbody].guid_soilbody  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilbody].guid  -->  [soilbody_geom].guid_soilbody  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilderivedobject].guid  -->  [datastream].guid_soilderivedobject  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilderivedobject].guid  -->  [isbasedonobservedsoilprofile].guid_soilderivedobject  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilderivedobject].guid  -->  [isbasedonsoilbody].guid_soilderivedobject  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilderivedobject].guid  -->  [isbasedonsoilderivedobject].guid_related  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilderivedobject].guid  -->  [isbasedonsoilderivedobject].guid_base  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilplot].guid  -->  [soilprofile].location  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilprofile].guid  -->  [datastream].guid_soilprofile  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilprofile].guid  -->  [derivedprofilepresenceinsoilbody].guid_soilprofile  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilprofile].guid  -->  [isbasedonobservedsoilprofile].guid_soilprofile  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilprofile].guid  -->  [isderivedfrom].guid_related  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilprofile].guid  -->  [isderivedfrom].guid_base  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilprofile].guid  -->  [othersoilnametype].othersoilname  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilprofile].guid  -->  [profileelement].ispartof  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilprofile].guid  -->  [wrbqualifiergroup_profile].guid_soilprofile  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilsite].guid  -->  [datastream].guid_soilsite  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [soilsite].guid  -->  [soilplot].locatedon  (ON UPDATE CASCADE, ON DELETE NO ACTION)
- [thing].guid  -->  [datastream].guid_thing  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [unitofmeasure].code  -->  [datastream].code_unitofmeasure  (ON UPDATE CASCADE, ON DELETE CASCADE)
- [wrbqualifiergrouptype].guid  -->  [wrbqualifiergroup_profile].guid_wrbqualifiergrouptype  (ON UPDATE CASCADE, ON DELETE CASCADE)

Legend:
  * column name prefixed with '*' denotes PRIMARY KEY in table boxes.
  * arrow 'child --> parent' indicates a many-to-one relationship.
  * arrow 'parent --> child' indicates the reverse view of the same FK.


## Cascade Summary
- Deleting from `datastream` may delete rows in:
  - `observation`
- Deleting from `observedproperty` may delete rows in:
  - `datastream`
- Deleting from `observingprocedure` may delete rows in:
  - `obsprocedure_obsdproperty`
  - `obsprocedure_sensor`
- Deleting from `otherhorizonnotationtype` may delete rows in:
  - `otherhorizon_profileelement`
- Deleting from `profileelement` may delete rows in:
  - `datastream`
  - `faohorizonnotationtype`
  - `otherhorizon_profileelement`
- Deleting from `sensor` may delete rows in:
  - `datastream`
- Deleting from `soilbody` may delete rows in:
  - `derivedprofilepresenceinsoilbody`
  - `isbasedonsoilbody`
  - `soilbody_geom`
- Deleting from `soilderivedobject` may delete rows in:
  - `datastream`
  - `isbasedonobservedsoilprofile`
  - `isbasedonsoilbody`
  - `isbasedonsoilderivedobject`
- Deleting from `soilplot` may delete rows in:
  - `soilprofile`
- Deleting from `soilprofile` may delete rows in:
  - `datastream`
  - `derivedprofilepresenceinsoilbody`
  - `isbasedonobservedsoilprofile`
  - `isderivedfrom`
  - `othersoilnametype`
  - `profileelement`
  - `wrbqualifiergroup_profile`
- Deleting from `soilsite` may delete rows in:
  - `datastream`
- Deleting from `thing` may delete rows in:
  - `datastream`
- Deleting from `unitofmeasure` may delete rows in:
  - `datastream`
- Deleting from `wrbqualifiergrouptype` may delete rows in:
  - `wrbqualifiergroup_profile`