# SoilWise GeoPackage Resources  

This repository provides resources for working with the **INSPIRE** data model in GeoPackage format.  
It also includes an implementation using the **OGC SensorThings API 2.0**, an open, geospatial‑enabled framework for interconnecting sensor‑data‑producing devices, data, and applications over the Web. [link](https://hylkevds.github.io/23-019/23-019.html)

SensorThings 2.0 defines a core data model aligned with the OGC/ISO Observations, Measurements and Samples (ISO 19156:2023), an abstract REST API, and protocol bindings for HTTP and MQTT—supporting create/read/update/delete operations, advanced filtering, and customizable responses—as well as push notifications for data changes over MQTT.

Below is an overview of the folder structure and its contents.


## Folder Structure  

### 1. `SoilWise_empty`  
- **Contents:**  
  - GeoPackage files containing the complete SoilWise data structure.
  - A set of QGIS forms for:  
      - Easier navigation of the dataset.  
      - Data input and editing.  
- **Purpose:**  
  - To provide a clean template of the SoilWise model for further customization and data population.  

---

### 2. `SoilWise_with_data`  
- **Contents:**  
  - GeoPackage files with:  
    - The complete SoilWise structure.  
    - Sample data derived from the **Soil Map of Sicily** (scale 1:250,000) (Fantappiè et al., 2011).  
    - A set of QGIS forms for:  
      - Easier navigation of the dataset.  
      - Data input and editing.  
### Usage Instructions:
  1. Link the GeoPackage to QGIS.  
  2. Open the **`PRJ_SO`** project file (contained within the GeoPackage).  
  3. Utilize the included forms for efficient data handling.  




> **Note**:  
QGIS version **3.44.0-Solothurn** or higher is required.

---

## References

Fantappiè, M., Bocci, M., Paolanti, M., Perciabosco, M., Antinoro, C., Riveccio, R., et al. (2011).  
**Realizzazione della carta digitale dei suoli della Sicilia utilizzando il rilevamento GIS-oriented e un modello CLORPT.**  
In *La percezione del suolo* (pp. 139-142). Le Penseur.  
[Online version available here](https://iris.unipa.it/handle/10447/105053?mode=full).
