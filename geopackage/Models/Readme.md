The Model Builder in QGIS is a visual tool that lets you create automated geoprocessing workflows without writing code. It's a visual scripting environment for spatial data processing.

It allows to chain multiple processing algorithms together (e.g., buffer → clip → dissolve).
It allows to define inputs, parameters, and outputs. 
Supports conditional logic and iteration.

The result is a reusable model that can be saved and run like any other tool (model3 extension).
The developing team worked on a few demonstrative models: 
1) Average pH of the soilProfile (simple average among all profileElements): SoilWise_pH_mean.model3 & pH.qml;
2) Organic carbon weighted average at standard depths (0-30) for soilProfiles: SoiWise_CO_0_30.model3 & CO_0_30.qml (to be uploaded yet).

Both models are linked to QGIS styles so that the generated outputs can be displayed using a preconfigured visualization style.
