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

- `DML_SO_PPU_Glosis.sql`
    - Database schema population script importing all GLOSIS-compliant soil properties and procedures, including ad-hoc defined units of measure..

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

