## UoM Conversion Table

### Background
The same property can be provided by different data providers with different but related UoM, e.g. some provide the length in meters, some in centimeters. 
Due to the SI system, this is all not a problem, the data can easily and losslessly be converted.

Here we provide a table with units commonly found in soil data, together with their mapping to [QUDT Units](https://qudt.org/vocab/unit/). 
In addition, we've identified a base unit in QUDT (e.g. M instead of CentiM), and provided a conversion factor and offset from the listed unit to the base unit

The approach is to link each Observable Property for which we expect to collect data with a corresponding base UoM.
Then, applicable UoM can be provided for that Observable Property.

| id | code | label | symbol | qudt_unit | base_qudt_unit | base_qudt_label | conversionoffset | conversionmultiplier |
|----|------|-------|--------|-----------|----------------|-----------------|------------------|----------------------|
| 1 | dag/kg | Decagram per kilogram | dag/kg |  | KiloGM-PER-KiloGM | Kilogram per Kilogram | 0 | 0.01 |
| 2 | [pH] | pH [pH Units] | pH | PH | PH | Acidity | 0 | 1 |
| 3 | dm2/m2 | Square decimeter per square meter | dm²/m² |  | M2-PER-M2 | Square Metre per Square Metre | 0 | 0.01 |
| 4 | daL/m3 | Percent by volume | daL/m3 |  | M3-PER-M3 | Cubic Metre per Cubic Metre | 0 | 0.01 |
| 5 | Cel | Degree Celsius | °C | DEG_C | K | Kelvin | 273.15 | 1 |
| 6 | μg/cm2.min | Microgram per square centimeter per minute | ug/cm²·min |  | KiloGM-PER-M2-SEC | Kilogram per Square Metre Second | 0 | 1.67E-04 |
| 7 | Bq/kg | Becquerel per kilogram | Bq/kg | BQ-PER-KiloGM | BQ-PER-KiloGM | Becquerel per Kilogram | 0 | 1 |
| 8 | cm | Centimeter | cm | CentiM | M | Metre | 0 | 0.01 |
| 9 | cm/h | Centimeter per hour | cm/h | CentiM-PER-HR | M-PER-SEC | Metre per Second | 0 | 2.77778E-06 |
| 10 | cm2 | Square centimeter | cm² | CentiM2 | M2 | Square Metre | 0 | 0.0001 |
| 11 | cmol/kg | Centimole of positive charge per kilogram | cmol/kg | CentiMOL-PER-KiloGM | MOL-PER-KiloGM | Mole per Kilogram | 0 | 0.01 |
| 12 | deg | Degree (plane angle) | ° | DEG | RAD | Radian | 0 | 0.017453293 |
| 13 | dS/m | Decisiemens per meter | dS/m | DeciS-PER-M | S-PER-M | Siemens per Metre | 0 | 0.1 |
| 14 | g/cm2 | Gram per square centimeter | g/cm² | GM-PER-CentiM2 | KiloGM-PER-M2 | Kilogram per Square Metre | 0 | 10 |
| 15 | g/cm3 | Gram per cubic centimeter | g/cm³ | GM-PER-CentiM3 | KiloGM-PER-M3 | Kilogram per Cubic Metre | 0 | 1000 |
| 16 | g/g | Gram per gram | g/g | GM-PER-GM | KiloGM-PER-KiloGM | Kilogram per Kilogram | 0 | 1 |
| 17 | g/kg | Gram per kilogram | g/kg | GM-PER-KiloGM | KiloGM-PER-KiloGM | Kilogram per Kilogram | 0 | 0.001 |
| 18 | J/m3.K | Joule per cubic meter per Kelvin | J/m³·K | J-PER-CentiM3-K | J-PER-M3-K | Joule per Cubic Metre Kelvin | 0 | 1 |
| 19 | nmol/g·h | Nanomole per Gram Hour | nmol.g-1.h-1 | NanoMOL-PER-GM-HR | NanoMOL-PER-GM-HR | Mole per Second Kilogram | 0 | 1 |
| 20 | kPa | Kilopascal | kPa | KiloPA | PA | Pascal | 0 | 1000 |
| 21 | m | Meter | m | M | M | Metre | 0 | 1 |
| 22 | m/m | Meter per meter (ratio) | m/m |  | MilliM-PER-M | Millimetre per Metre | 0 | 1000 |
| 23 | m3/kg | Cubic meter per kilogram | m³/kg | M3-PER-KiloGM | M3-PER-KiloGM | Cubic Metre per Kilogram | 0 | 1 |
| 24 | meq/100g | Milliequivalent per 100 g | meq/100g | MilliEQ-PER-HectoGM | MilliEQ-PER-HectoGM | Milliequivalent per Hectogram | 0 | 1 |
| 25 | mg/kg | Milligram per kilogram | mg/kg | MilliGM-PER-KiloGM | KiloGM-PER-KiloGM | Kilogram per Kilogram | 0 | 0.000001 |
| 26 | mg/L | Milligram per liter | mg/L | MilliGM-PER-L | KiloGM-PER-M3 | Kilogram per Cubic Metre | 0 | 0.001 |
| 27 | mm | Millimeter | mm | MilliM | M | Metre | 0 | 0.001 |
| 28 | mm/m | Millimeter per meter | mm/m | MilliM-PER-M | MilliM-PER-M | Millimetre per Metre | 0 | 1 |
| 29 | mmol/kg | Millimole of positive charge per kilogram | mmol/kg | MilliMOL-PER-KiloGM | MOL-PER-KiloGM | Mole per Kilogram | 0 | 0.001 |
| 30 | Bq  | Becquerel  | Bq  | BQ  | BQ  | Becquerel | 0 | 1 |
| 31 | a | Year | a | YR | Y | Year | 0 | 1 |

