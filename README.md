# inspire-so
This repository provides resources for working with the INSPIRE Soil (SO) data model in GeoPackage format. Updates previous versions developed within EJP-Soil project (https://github.com/ejpsoil/inspire_soil_gpkg_template) looking forward conforming to both OMS (https://docs.ogc.org/as/20-082r4/20-082r4.html) &amp; STA (https://www.ogc.org/standards/sensorthings/) standards.

The **first version** of the INSPIRE Soil (SO) GeoPackage was developed under the H2020 **European Joint Research Programme EJPSOIL** (https://ejpsoil.eu/), the working package 6 aimed at supporting harmonised soil information and reporting. A so called “Software framework for a shared agricultural soil information system”, deliverable EJP SOIL_D6.4, was produced aimed at enabling transcoding and streamlining of interoperable and harmonised national agricultural soil data into ESDAC (https://esdac.jrc.ec.europa.eu/), as foreseen in the Grant Agreement, and by general terms enabling INSPIRE compliant soil data sharing.

The template is available on [GitHub](https://github.com/ejpsoil/inspire_soil_gpkg_template/)

---
The data model **currently under development** can be viewed at:
🔗 https://dbdiagram.io/d/INSPIRE_V2-6825af7c5b2fc4582fba405d

---

## Repository Structure

### /geopackage/
Contains `.gpkg` files:
- Output examples generated from the current development.
- Sample files for testing and validation.

### /geopackage_ddl/
Includes SQL scripts for:
- **DDL (Data Definition Language)**: creation of the GeoPackage schema.
- **DML (Data Manipulation Language)**: population of the `Codelist` support table.

### /qgis_style/
Includes **custom attribute forms and styles** to enhance data entry and visualization in QGIS.

---

Repository developerd by the WG within
User story name: UC2-CREA-Cycle2;
Main Topic: Provide an improved soil geopackage, tested with 3 datasets, in soilwise repository;
Key words US: data models, vocabs;
UC Partner: CREA;
Problem Owner: Giovanni / Andrea.
