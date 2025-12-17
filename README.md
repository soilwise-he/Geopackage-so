# SoilWise

This repository provides resources for working with the **INSPIRE Soil (SO)** data model in **GeoPackage** format.  
It also includes an implementation based on the **OGC SensorThings API 2.0 (draft)** to expose soil observations and related metadata as interoperable time‑series via HTTP and MQTT. SensorThings 2.0 provides an open, geospatial‑enabled and unified way to interconnect sensor‑data‑producing devices, data, and applications over the Web. It defines a core data model aligned with OGC/ISO **Observations, Measurements and Samples (ISO 19156:2023)**, an abstract REST API, and protocol bindings for **HTTP** and **MQTT**, supporting CRUD operations, advanced filtering, customizable responses, and push notifications for data changes (via MQTT). *Note: SensorThings API 2.0 is currently a draft standard under development.*  
References: [STA 2.0 draft (OGC 23‑019)](https://hylkevds.github.io/23-019/23-019.html#_13d7055erThings overview (OGC)](https://www.ogc.org/standards/sensorthings/)

Updates previous versions developed within the **EJP SOIL** project (https://github.com/ejpsoil/inspire_soil_gpkg_template), with the goal of conforming to both **OMS** (https://docs.ogc.org/as/20-082r4/20-082r4.html) and **SensorThings API** (https://www.ogc.org/standards/sensorthings/) standards.

The **first version** of the INSPIRE Soil (SO) GeoPackage was developed under the H2020 **European Joint Research Programme EJP SOIL** (https://ejpsoil.eu/), the work package 6 aimed at supporting harmonised soil information and reporting. A so‑called “Software framework for a shared agricultural soil information system”, deliverable **EJP SOIL_D6.4**, was produced to enable transcoding and streamlining of interoperable and harmonised national agricultural soil data into **ESDAC** (https://esdac.jrc.ec.europa.eu/), as foreseen in the Grant Agreement, and in general to enable **INSPIRE‑compliant** soil data sharing.

The original GeoPackage template is available on [GitHub](https://github.com/ejpsoil/inspire_soil_gpkg_template/)



---
The data model **currently under development** can be viewed at:
🔗 https://dbdiagram.io/d/SoilWise_Geopackage-69399847e877c6307451317a

---

## Repository Structure

### /geopackage/
Contains `.gpkg` files:
- Output examples generated from the current development.
- Sample files for testing and validation.

### /geopackage_ddl/
Includes SQL scripts for:
- **DDL (Data Definition Language)**: creation of the GeoPackage schema.
- **DML (Data Manipulation Language)**: population of the 'Codelist' support table and metadata for the table fields.

### /qgis_style/
Includes **custom attribute forms and styles** to enhance data entry and visualization in QGIS.

---


- **Repository developed by the WG within User story name:** UC2-CREA-Cycle2  
- **Main Topic:** Provide an improved soil GeoPackage, tested with 3 datasets, in SoilWise repository  
- **Key words (US):** data models, vocabs  
- **UC Partner:** CREA  
- **Problem Owner:** Giovanni L'Abate / Andrea Lachi
