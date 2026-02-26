The Model Builder in QGIS is a visual tool that lets you create automated geoprocessing workflows without writing code. It's a visual scripting environment for spatial data processing. It allows to chain multiple processing algorithms together (e.g., buffer → clip → dissolve).
It's possible to define inputs, parameters, and outputs. Supports conditional logic and iteration. The result is a reusable model that can be saved and run like any other tool (model3 extension).

The developing team worked on a few demonstrative models (without parameters): 
1) Average pH of the soilProfile (simple average among all profileElements): SoilWise_SP_mean_pH.model3 & pH_USDA.qml;
2) Weighted average of Soil organic carbon at standard depths (0-30) for soilProfiles: SoiWise_SP_CO_0_30.model3 & CO_0_30.qml.

Both models are linked to QGIS styles so that the generated outputs can be displayed using a preconfigured visualization style.

<img width="831" height="414" alt="image" src="https://github.com/user-attachments/assets/4bb01b0a-386b-4f84-922f-9fa635d276b6" />
