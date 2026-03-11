---
-- title: "Howto: Update the codelist table to guarantee coherent data input using triggers in a GeoPackage template for INSPIRE Soil data"
-- date: 02/12/2025
-- author: Andrea Lachi - andrea.lachi@crea.gov.it
---
--------------------------------------------------------------
--   C O D E L I S T   ---------------------------------------
--------------------------------------------------------------

-- SoilInvestigationPurposeValue
-- FEATURE soilsite
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/SoilInvestigationPurposeValue

INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilInvestigationPurposeValue/generalSoilSurvey', 'general soil survey', 'SoilInvestigationPurposeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilInvestigationPurposeValue/specificSoilSurvey', 'specific soil survey', 'SoilInvestigationPurposeValue');


-- SoilPlotTypeValue
-- FEATURE soilplot
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/SoilPlotTypeValue

INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilPlotTypeValue/borehole', 'borehole', 'SoilPlotTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilPlotTypeValue/sample', 'sample', 'SoilPlotTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilPlotTypeValue/trialPit', 'trial pit', 'SoilPlotTypeValue');

-- *** INTERNAL *** 
-- WRBRversion
-- FEATURE  soilprofile
-- CODELIST for internal management of Qgis forms based on real URI of WRB Classification

INSERT INTO "codelist" (id, label, collection) VALUES ('https://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue', 'WRB 2006', 'wrbversion');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/WRB_2014-2015', 'WRB 2014', 'wrbversion');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/', 'WRB 2022', 'wrbversion');


-- WRBReferenceSoilGroupValue (2006)
-- FEATURE soilprofile
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue

INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/acrisol', 'Acrisols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/albeluvisol', 'Albeluvisols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/alisol', 'Alisols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/andosol', 'Andosols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/anthrosol', 'Anthrosols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/arenosol', 'Arenosols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/calcisol', 'Calcisols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/cambisol', 'Cambisols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/chernozem', 'Chernozems', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/cryosol', 'Cryosols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/durisol', 'Durisols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/ferralsol', 'Ferralsols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/fluvisol', 'Fluvisols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/gleysol', 'Gleysols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/gypsisol', 'Gypsisols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/histosol', 'Histosols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/kastanozem', 'Kastanozems', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/leptosol', 'Leptosols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/lixisol', 'Lixisols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/luvisol', 'Luvisols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/nitisol', 'Nitisols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/phaeozem', 'Phaeozems', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/planosol', 'Planosols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/plinthosol', 'Plinthosols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/podzol', 'Podzols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/regosol', 'Regosols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/solonchak', 'Solonchaks', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/solonetz', 'Solonetzs', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/stagnosol', 'Stagnosols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/technosol', 'Technosols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/umbrisol', 'Umbrisols', 'WRBReferenceSoilGroupValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/vertisol', 'Vertisols', 'WRBReferenceSoilGroupValue');


-- WRBReferenceSoilGroupValue (2014)
-- FEATURE soilprofile
-- CODELIST AGROPRTAL
-- https://agroportal.lirmm.fr/ontologies/AGROVOC

INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_101', 'Acrisols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_479c499a', 'Alisols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_404', 'Andosols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_4515b13e', 'Anthrosols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_601', 'Arenosols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_ea60e31f', 'Calcisols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_1224', 'Cambisols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_1533', 'Chernozems', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_829043c3', 'Cryosols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_51ec138f', 'Durisols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_2858', 'Ferralsols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_3000', 'Fluvisols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_3276', 'Gleysols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_61704b51', 'Gypsisols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_3636', 'Histosols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_4079', 'Kastanozems', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_da0af025', 'Leptosols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_7283bd0a', 'Lixisols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_4470', 'Luvisols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_5185', 'Nitisols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_5755', 'Phaeozems', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_5953', 'Planosols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_309e7c25', 'Plinthosols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_6044', 'Podzols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_6492', 'Regosols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_ff831af0', 'Retisols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_7231', 'Solonchaks', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_7232', 'Solonetz', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_d9028da2', 'Stagnosols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_3a0750ba', 'Technosols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_9e95a849', 'Umbrisols', 'WRBReferenceSoilGroupValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_8199', 'Vertisols', 'WRBReferenceSoilGroupValue2014');



-- WRBReferenceSoilGroupValue (2022)
-- FEATURE soilprofile
-- CODELIST ORBL-SOIL
-- https://obrl-soil.github.io/wrbsoil2022/

INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html#sec-key-ac', 'Acrisols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html#sec-key-al', 'Alisols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-an', 'Andosols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-at', 'Anthrosols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html#sec-key-ar', 'Arenosols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-cl', 'Calcisols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html#sec-key-cm', 'Cambisols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-ch', 'Chernozems', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-cr', 'Cryosols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-du', 'Durisols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-fr', 'Ferralsols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html#sec-key-fl', 'Fluvisols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-gl', 'Gleysols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-gy', 'Gypsisols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-hs', 'Histosols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-ks', 'Kastanozems', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-lp', 'Leptosols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html#sec-key-lx', 'Lixisols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html#sec-key-lv', 'Luvisols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-nt', 'Nitisols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-ph', 'Phaeozems', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-pl', 'Planosols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-pt', 'Plinthosols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-pz', 'Podzols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html#sec-key-rg', 'Regosols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-rt', 'Retisols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-sc', 'Solonchaks', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-sn', 'Solonetz', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-st', 'Stagnosols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-tc', 'Technosols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-um', 'Umbrisols', 'WRBReferenceSoilGroupValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-vr', 'Vertisols', 'WRBReferenceSoilGroupValue2022');



-- OtherSoilNameTypeValue
-- FEATURE othersoilnametype
-- CODELIST INSPIRE
-- https://inspire.ec.europa.eu/codelist/OtherSoilNameTypeValue

INSERT INTO "codelist" (id, label, collection) VALUES ('https://inspire.ec.europa.eu/codelist/OtherSoilNameTypeValue', 'Void', 'OtherSoilNameTypeValue');


-- LayerTypeValue
-- FEATURE profileelement
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/LayerTypeValue

INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LayerTypeValue/depthInterval', 'depth interval', 'LayerTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LayerTypeValue/geogenic', 'geogenic', 'LayerTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LayerTypeValue/subSoil', 'subsoil', 'LayerTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LayerTypeValue/topSoil', 'topsoil', 'LayerTypeValue');


-- LithologyValue
-- FEATURE profileelement
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/LithologyValue

INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/acidicIgneousMaterial', 'acidicIgneousMaterial', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/acidicIgneousRock', 'acidicIgneousRock', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/alkaliFeldsparRhyolite', 'alkaliFeldsparRhyolite', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/amphibolite', 'amphibolite', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/anthropogenicMaterial', 'anthropogenicMaterial', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/ashAndLapilli', 'ashAndLapilli', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/ashBrecciaBombOrBlockTephra', 'ashBrecciaBombOrBlockTephra', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/basicIgneousMaterial', 'basicIgneousMaterial', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/boulderGravelSizeSediment', 'boulderGravelSizeSediment', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/breccia', 'breccia', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/carbonateMudstone', 'carbonateMudstone', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/carbonateRichMudstone', 'carbonateRichMudstone', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/carbonateSedimentaryMaterial', 'carbonateSedimentaryMaterial', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/carbonateSedimentaryRock', 'carbonateSedimentaryRock', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/cataclasiteSeries', 'cataclasiteSeries', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/chalk', 'chalk', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/chemicalSedimentaryMaterial', 'chemicalSedimentaryMaterial', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/chloriteActinoliteEpidoteMetamorphicRock', 'chloriteActinoliteEpidoteMetamorphicRock', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/clasticSedimentaryMaterial', 'clasticSedimentaryMaterial', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/crystallineCarbonate', 'crystallineCarbonate', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/dacite', 'dacite', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/dolomite', 'dolomite', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/eclogite', 'eclogite', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/foliatedMetamorphicRock', 'foliatedMetamorphicRock', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/fragmentalIgneousMaterial', 'fragmentalIgneousMaterial', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/framestone', 'framestone', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/genericConglomerate', 'genericConglomerate', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/genericMudstone', 'genericMudstone', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/genericSandstone', 'genericSandstone', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/gneiss', 'gneiss', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/grainstone', 'grainstone', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/granite', 'granite', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/granodiorite', 'granodiorite', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/granofels', 'granofels', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/granulite', 'granulite', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/hornfels', 'hornfels', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/hybridSediment', 'hybridSediment', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/hybridSedimentaryRock', 'hybridSedimentaryRock', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/igneousMaterial', 'igneousMaterial', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/igneousRock', 'igneousRock', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/impureCarbonateSedimentaryRock', 'impureCarbonateSedimentaryRock', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/impureDolomite', 'impureDolomite', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/impureLimestone', 'impureLimestone', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/intermediateCompositionIgneousMaterial', 'intermediateCompositionIgneousMaterial', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/limestone', 'limestone', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/marble', 'marble', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/materialFormedInSurficialEnvironment', 'materialFormedInSurficialEnvironment', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/metamorphicRock', 'metamorphicRock', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/micaSchist', 'micaSchist', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/migmatite', 'migmatite', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/mineDumpMaterial', 'mineDumpMaterial', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/monzogranite', 'monzogranite', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/mudSizeSediment', 'mudSizeSediment', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/naturalUnconsolidatedMaterial', 'naturalUnconsolidatedMaterial', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/nonClasticSiliceousSedimentaryMaterial', 'nonClasticSiliceousSedimentaryMaterial', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/organicBearingMudstone', 'organicBearingMudstone', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/organicRichSedimentaryMaterial', 'organicRichSedimentaryMaterial', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/packstone', 'packstone', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/peat', 'peat', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/phyllite', 'phyllite', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/sandSizeSediment', 'sandSizeSediment', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/silicateMudstone', 'silicateMudstone', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/skarn', 'skarn', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/slate', 'slate', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/syenogranite', 'syenogranite', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/tephra', 'tephra', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/tonalite', 'tonalite', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/tuffite', 'tuffite', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/unconsolidatedMaterial', 'unconsolidatedMaterial', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/waste', 'waste', 'LithologyValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/carbonateWackestone', 'https://inspire.ec.europa.eu/codelist/LithologyValue/carbonateWackestone', 'LithologyValue');


-- EventProcessValue
-- FEATURE profileelement
-- CODELIST INSPIRE
--http://inspire.ec.europa.eu/codelist/EventProcessValue

INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/bolideImpact', 'bolide impact', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/cometaryImpact', 'cometary impact', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/meteoriteImpact', 'meteorite impact', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/deepWaterOxygenDepletion', 'deep water oxygen depletion', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/deformation', 'deformation', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/ductileFlow', 'ductile flow', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/faulting', 'faulting', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/folding', 'folding', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/fracturing', 'fracturing', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/shearing', 'shearing', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/diageneticProcess', 'diagenetic process', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/extinction', 'extinction', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/geomagneticProcess', 'geomagnetic process', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/magneticFieldReversal', 'magnetic field reversal', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/polarWander', 'polar wander', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/humanActivity', 'human activity', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/excavation', 'excavation', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/grading', 'grading', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/materialTransportAndDeposition', 'material transport and deposition', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/mixing', 'mixing', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/magmaticProcess', 'magmatic process', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/eruption', 'eruption', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/intrusion', 'intrusion', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/magmaticCrystallisation', 'magmatic crystallisation', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/melting', 'melting', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/metamorphicProcess', 'metamorphic process', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/alteration', 'alteration', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/contactMetamorphism', 'contact metamorphism', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/dislocationMetamorphism', 'dislocation metamorphism', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/seaLevelChange', 'sea level change', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/seaLevelFall', 'sea level fall', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/seaLevelRise', 'sea level rise', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/sedimentaryProcess', 'sedimentary process', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/deposition', 'deposition', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/erosion', 'erosion', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/speciation', 'speciation', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/tectonicProcess', 'tectonic process', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/accretion', 'accretion', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/continentalBreakup', 'continental breakup', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/continentalCollision', 'continental collision', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/obduction', 'obduction', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/orogenicProcess', 'orogenic process', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/spreading', 'spreading', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/subduction', 'subduction', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/transformFaulting', 'transform faulting', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/weathering', 'weathering', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/biologicalWeathering', 'biological weathering', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/chemicalWeathering', 'chemical weathering', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/physicalWeathering', 'physical weathering', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/deepPloughing', 'deep ploughing', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/depositionByOrFromMovingIce', 'deposition by or from moving ice', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/depositionFromAir', 'deposition from air', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/depositionFromWater', 'deposition from water', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/digging', 'digging', 'EventProcessValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/geologicProcess', 'geologic process', 'EventProcessValue');


-- EventEnvironmentValue
-- FEATURE profileelement
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/EventEnvironmentValue

INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/agriculturalAndForestryLandSetting''', 'agricultural and forestry land setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/carbonateShelfSetting', 'carbonate shelf setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/deltaSlopeSetting', 'delta slope setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/dwellingAreaSetting', 'dwelling area setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/earthInteriorSetting', 'earth interior setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/earthSurfaceSetting', 'earth surface setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/extraTerrestrialSetting', 'extra-terrestrial setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/fanDeltaSetting', 'fan delta setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/foreshore', 'foreshore', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/glaciofluvialSetting', 'glaciofluvial setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/glaciolacustrineSetting', 'glaciolacustrine setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/glaciomarineSetting', 'glaciomarine setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/graben', 'graben', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/halfGraben', 'half-graben', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/humanEnvironmentSetting', 'human environment setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/intracratonicSetting', 'intracratonic setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/landReclamationSetting', 'land reclamation setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/miningAreaSetting', 'mining area setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/saltPan', 'salt pan', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/tectonicallyDefinedSetting', 'tectonically defined setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/wasteAndMaterialDepositionAreaSetting', 'waste and material deposition area setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/wetToSubHumidSetting', 'wet to sub-humid setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/fastSpreadingCenterSetting', 'fast spreading center setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/mediumRateSpreadingCenterSetting', 'medium-rate spreading center setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/slowSpreadingCenterSetting', 'slow spreading center setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/dunefieldSetting', 'dunefield setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/dustAccumulationSetting', 'dust accumulation setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/sandPlainSetting', 'sand plain setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/gibberPlainSetting', 'gibber plain setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/marginalMarineSabkhaSetting', 'marginal marine sabkha setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/playaSetting', 'playa setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/barrierBeachSetting', 'barrier beach setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/barrierLagoonSetting', 'barrier lagoon setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lowerBathyalSetting', 'lower bathyal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/middleBathyalSetting', 'middle bathyal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/upperBathyalSetting', 'upper bathyal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/backreefSetting', 'backreef setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/forereefSetting', 'forereef setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/reefFlatSetting', 'reef flat setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/basinBogSetting', 'basin bog setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/blanketBog', 'blanket bog', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/collisionalSetting', 'collisional setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/forelandSetting', 'foreland setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/hinterlandTectonicSetting', 'hinterland tectonic setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lowerContinentalCrustalSetting', 'lower continental-crustal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/middleContinentalCrustSetting', 'middle continental crust setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/upperContinentalCrustalSetting', 'upper continental crustal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/continentalCrustalSetting', 'continental-crustal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/oceanicCrustalSetting', 'oceanic-crustal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/transitionalCrustalSetting', 'transitional-crustal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/deltaDistributaryChannelSetting', 'delta distributary channel setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/deltaDistributaryMouthSetting', 'delta distributary mouth setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/deltaFrontSetting', 'delta front setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/deltaPlainSetting', 'delta plain setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/estuarineDeltaSetting', 'estuarine delta setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/interdistributaryBaySetting', 'interdistributary bay setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lacustrineDeltaSetting', 'lacustrine delta setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/prodeltaSetting', 'prodelta setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lowerDeltaPlainSetting', 'lower delta plain setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/upperDeltaPlainSetting', 'upper delta plain setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/coastalDuneFieldSetting', 'coastal dune field setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/contactMetamorphicSetting', 'contact metamorphic setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/crustalSetting', 'crustal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/highPressureLowTemperatureEarthInteriorSetting', 'high pressure low temperature Earth interior setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/hypabyssalSetting', 'hypabyssal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lowPressureHighTemperatureSetting', 'low pressure high temperature setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/mantleSetting', 'mantle setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/regionalMetamorphicSetting', 'regional metamorphic setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/ultraHighPressureCrustalSetting', 'ultra high pressure crustal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/anoxicSetting', 'anoxic setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/aridOrSemiAridEnvironmentSetting', 'arid or Semi Arid environment setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/caveSetting', 'cave setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/deltaicSystemSetting', 'deltaic system setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/glacierRelatedSetting', 'glacier related setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/hillslopeSetting', 'hillslope setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/humidTemperateClimaticSetting', 'humid temperate climatic setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/humidTropicalClimaticSetting', 'humid tropical climatic setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/polarClimaticSetting', 'polar climatic setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/shorelineSetting', 'shoreline setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/subaerialSetting', 'subaerial setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/subaqueousSetting', 'subaqueous setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/terrestrialSetting', 'terrestrial setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/wetlandSetting', 'wetland setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/estuarineLagoonSetting', 'estuarine lagoon setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/continentalRiftSetting', 'continental rift setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/englacialSetting', 'englacial setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/glacialOutwashPlainSetting', 'glacial outwash plain setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/glacierLateralSetting''', 'glacier lateral setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/proglacialSetting', 'proglacial setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/subglacialSetting', 'subglacial setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/supraglacialSetting', 'supraglacial setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/inactiveSpreadingCenterSetting', 'inactive spreading center setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/seamountSetting', 'seamount setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/algalFlatSetting', 'algal flat setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/mudFlatSetting', 'mud flat setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lowerMantleSetting', 'lower mantle setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/upperMantleSetting', 'upper mantle setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/aboveCarbonateCompensationDepthSetting', 'above carbonate compensation depth setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/abyssalSetting', 'abyssal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/basinPlainSetting', 'basin plain setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/bathyalSetting', 'bathyal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/belowCarbonateCompensationDepthSetting', 'below carbonate compensation depth setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/biologicalReefSetting', 'biological reef setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/continentalBorderlandSetting', 'continental borderland setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/continentalShelfSetting', 'continental shelf setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/deepSeaTrenchSetting', 'deep sea trench setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/epicontinentalMarineSetting', 'epicontinental marine setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/hadalSetting', 'hadal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/marineCarbonatePlatformSetting', 'marine carbonate platform setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/neriticSetting', 'neritic setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/oceanHighlandSetting', 'ocean highland setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/slopeRiseSetting', 'slope-rise setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/submarineFanSetting', 'submarine fan setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/innerNeriticSetting', 'inner neritic setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/middleNeriticSetting', 'middle neritic setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/outerNeriticSetting', 'outer neritic setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/midOceanRidgeSetting', 'mid ocean ridge setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/oceanicPlateauSetting', 'oceanic plateau setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lowerOceanicCrustalSetting', 'lower oceanic-crustal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/upperOceanicCrustalSetting', 'upper oceanic crustal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/alluvialFanSetting', 'alluvial fan setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/alluvialPlainSetting', 'alluvial plain setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/pedimentSetting', 'pediment setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/activeContinentalMarginSetting', 'active continental margin setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/activeSpreadingCenterSetting', 'active spreading center setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/forearcSetting', 'forearc setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/subductionZoneSetting', 'subduction zone setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/transformPlateBoundarySetting', 'transform plate boundary setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/volcanicArcSetting', 'volcanic arc setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/glacierTerminusSetting', 'glacier terminus setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/braidedRiverChannelSetting', 'braided river channel setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/meanderingRiverChannelSetting', 'meandering river channel setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/abandonedRiverChannelSetting', 'abandoned river channel setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/cutoffMeanderSetting', 'cutoff meander setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/floodplainSetting', 'floodplain setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/riverChannelSetting', 'river channel setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/springSetting', 'spring setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/barrierIslandCoastlineSetting', 'barrier island coastline setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/beachSetting', 'beach setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/carbonateDominatedShorelineSetting', 'carbonate dominated shoreline setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/coastalPlainSetting', 'coastal plain setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/estuarySetting', 'estuary setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lagoonalSetting', 'lagoonal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lowEnergyShorelineSetting', 'low energy shoreline setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/rockyCoastSetting', 'rocky coast setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/strandplainSetting', 'strandplain setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/supratidalSetting', 'supratidal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/tidalSetting', 'tidal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/aeolianProcessSetting', 'aeolian process setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/piedmontSlopeSystemSetting', 'piedmont slope system setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/intertidalSetting', 'intertidal setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/marineSetting', 'marine setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/tidalChannelSetting', 'tidal channel setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/tidalMarshSetting', 'tidal marsh setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/backArcSetting', 'back arc setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/extendedTerraneSetting', 'extended terrane setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/hotSpotSetting', 'hot spot setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/intraplateTectonicSetting', 'intraplate tectonic setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/passiveContinentalMarginSetting', 'passive continental margin setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/plateMarginSetting', 'plate margin setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/plateSpreadingCenterSetting', 'plate spreading center setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/bogSetting', 'bog setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lacustrineSetting', 'lacustrine setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/riverPlainSystemSetting', 'river plain system setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/tidalFlatSetting', 'tidal flat setting', 'EventEnvironmentValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/swampOrMarshSetting', 'swamp or marsh setting', 'EventEnvironmentValue');


-- LayerGenesisProcessStateValue
-- FEATURE profileelement
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/LayerGenesisProcessStateValue

INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LayerGenesisProcessStateValue/ongoing', 'on-going', 'LayerGenesisProcessStateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/LayerGenesisProcessStateValue/terminated', 'terminated', 'LayerGenesisProcessStateValue');


-- FAOHorizonMaster
-- FEATURE faohorizonnotationtype
-- CODELIST INSPIRE
-- https://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue

INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/B', 'B', 'FAOHorizonMasterValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/O', 'O', 'FAOHorizonMasterValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/C', 'C', 'FAOHorizonMasterValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/E', 'E', 'FAOHorizonMasterValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/I', 'I', 'FAOHorizonMasterValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/W', 'W', 'FAOHorizonMasterValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/H', 'H', 'FAOHorizonMasterValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/A', 'A', 'FAOHorizonMasterValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/R', 'R', 'FAOHorizonMasterValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/L', 'L', 'FAOHorizonMasterValue');


-- FAOHorizonSubordinate
-- FEATURE faohorizonnotationtype
-- CODELIST INSPIRE
-- https://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue

INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/a', 'a', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/b', 'b', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/c', 'c', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/c-L', 'c-L', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/f', 'f', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/d-L', 'd-L', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/e', 'e', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/g', 'g', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/d', 'd', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/i-HO', 'i-HO', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/r', 'r', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/u', 'u', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/x', 'x', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/k', 'k', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/l', 'l', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/z', 'z', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/@', '@', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/j', 'j', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/v', 'v', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/t', 't', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/m-L', 'm-L', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/n', 'n', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/h', 'h', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/w', 'w', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/m', 'm', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/q', 'q', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/o', 'o', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/p', 'p', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/s', 's', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/i', 'i', 'FAOHorizonSubordinateValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/y', 'y', 'FAOHorizonSubordinateValue');


-- FAOPrime
-- FEATURE faohorizonnotationtype
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/FAOPrimeValue

INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOPrimeValue/0', '0', 'FAOPrimeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOPrimeValue/1', '1', 'FAOPrimeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOPrimeValue/2', '2', 'FAOPrimeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/FAOPrimeValue/3', '3', 'FAOPrimeValue');



-- OtherHorizonNotationType
-- FEATURE otherhorizonnotationtype
-- CODELIST ORBL (INSPIRE - VOID)
-- https://obrl-soil.github.io/wrbsoil2022/

INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-albich', 'Albic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-anthh', 'Anthraquic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-argich', 'Argic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-calch', 'Calcic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-cambich', 'Cambic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-chernh', 'Chernic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-cohesich', 'Cohesic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-cryich', 'Cryic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-durich', 'Duric', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-feralh', 'Ferralic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-ferich', 'Ferric', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-folich', 'Folic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-fragh', 'Fragic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-gypsih', 'Gypsic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-histih', 'Histic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-hydrh', 'Hydragric', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-iragh', 'Irragric', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-limonich', 'Limonic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-mollh', 'Mollic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-natrich', 'Natric', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-nitich', 'Nitic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-panpaich', 'Panpaic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-hortih', 'Hortic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-pcalch', 'Petrocalcic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-pdurich', 'Petroduric', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-pgypsich', 'Petrogypsic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-pplinthich', 'Petroplinthic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-pisoph', 'Pisoplinthic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-plaggh', 'Plaggic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-plinth', 'Plinthic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-preth', 'Pretic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-protvh', 'Protovertic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-salich', 'Salic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-sombrh', 'Sombric', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-spodich', 'Spodic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-terich', 'Terric', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-thionh', 'Thionic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-tsitelich', 'Tsitelic', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-umbrich', 'Umbric', 'OtherHorizonNotationTypeValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-verth', 'Vertic', 'OtherHorizonNotationTypeValue');



-- WRBQualifierPlaceValue
-- FEATURE wrbqualifiergrouptype
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/WRBQualifierPlaceValue

INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierPlaceValue/suffix', 'suffix', 'WRBQualifierPlaceValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierPlaceValue/prefix', 'prefix', 'WRBQualifierPlaceValue');


-- WRBQualifierValue (2006)
-- FEATURE wrbqualifiergrouptype
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/WRBQualifierValue


INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Nudiargic', 'Nudiargic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Ortsteinic', 'Ortsteinic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Aric', 'Aric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Acric', 'Acric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Alcalic', 'Alcalic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Arzic', 'Arzic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Irragric', 'Irragric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Rheic', 'Rheic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Arenic', 'Arenic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Anthric', 'Anthric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Aluandic', 'Aluandic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Aridic', 'Aridic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Sombric', 'Sombric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Calcaric', 'Calcaric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Alumic', 'Alumic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Anthraquic', 'Anthraquic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Solodic', 'Solodic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Acroxic', 'Acroxic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Andic', 'Andic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Calcic', 'Calcic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Alic', 'Alic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Brunic', 'Brunic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Endoduric', 'Endoduric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Carbic', 'Carbic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Eutric', 'Eutric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Chloridic', 'Chloridic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Clayic', 'Clayic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Chromic', 'Chromic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Densic', 'Densic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Glossalbic', 'Glossalbic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Duric', 'Duric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Colluvic', 'Colluvic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Carbonatic', 'Carbonatic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Dystric', 'Dystric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Thaptandic', 'Thaptandic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Pisocalcic', 'Pisocalcic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Cambic', 'Cambic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Cryic', 'Cryic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Eutrosilic', 'Eutrosilic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Drainic', 'Drainic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Ferralic', 'Ferralic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Cutanic', 'Cutanic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Ferric', 'Ferric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Gelistagnic', 'Gelistagnic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Fibric', 'Fibric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Greyic', 'Greyic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Fluvic', 'Fluvic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Glossic', 'Glossic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Gibbsic', 'Gibbsic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Fractiplinthic', 'Fractiplinthic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Fractipetric', 'Fractipetric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Gelic', 'Gelic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Gleyic', 'Gleyic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Floatic', 'Floatic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Folic', 'Folic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Gypsic', 'Gypsic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Geric', 'Geric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Glacic', 'Glacic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Garbic', 'Garbic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Fulvic', 'Fulvic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Fragic', 'Fragic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Grumic', 'Grumic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Gypsiric', 'Gypsiric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hypereutric', 'Hypereutric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Endogleyic', 'Endogleyic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hemic', 'Hemic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Umbriglossic', 'Umbriglossic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Endoeutric', 'Endoeutric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Endofluvic', 'Endofluvic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Epidystric', 'Epidystric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Epieutric', 'Epieutric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Rustic', 'Rustic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Voronic', 'Voronic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Turbic', 'Turbic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Posic', 'Posic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Leptic', 'Leptic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Lixic', 'Lixic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Vetic', 'Vetic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Toxic', 'Toxic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Magnesic', 'Magnesic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Xanthic', 'Xanthic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Stagnic', 'Stagnic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Pisoplinthic', 'Pisoplinthic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hyposalic', 'Hyposalic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Puffic', 'Puffic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Mesotrophic', 'Mesotrophic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Mazic', 'Mazic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Plaggic', 'Plaggic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hydric', 'Hydric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Pachic', 'Pachic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Aceric', 'Aceric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Albic', 'Albic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hortic', 'Hortic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Ekranic', 'Ekranic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Ombric', 'Ombric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Escalic', 'Escalic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Sodic', 'Sodic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Haplic', 'Haplic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Ornithic', 'Ornithic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hyperalbic', 'Hyperalbic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Lignic', 'Lignic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Endosalic', 'Endosalic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Linic', 'Linic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Endostagnic', 'Endostagnic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Natric', 'Natric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Vitric', 'Vitric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Histic', 'Histic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hypergypsic', 'Hypergypsic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Endoleptic', 'Endoleptic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Petroplinthic', 'Petroplinthic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Spolic', 'Spolic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Luvic', 'Luvic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Lamellic', 'Lamellic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Melanic', 'Melanic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Ruptic', 'Ruptic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hydragric', 'Hydragric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Petric', 'Petric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Protic', 'Protic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Thionic', 'Thionic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Spodic', 'Spodic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Petroduric', 'Petroduric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Subaquatic', 'Subaquatic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Technic', 'Technic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Reductic', 'Reductic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Takyric', 'Takyric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Transportic', 'Transportic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Vermic', 'Vermic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Plinthic', 'Plinthic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hypocalcic', 'Hypocalcic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Rubic', 'Rubic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Nitic', 'Nitic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Thaptovitric', 'Thaptovitric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Tephric', 'Tephric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hyperskeletic', 'Hyperskeletic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Lithic', 'Lithic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Tidalic', 'Tidalic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Sulphatic', 'Sulphatic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Profondic', 'Profondic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Terric', 'Terric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Placic', 'Placic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Thixotropic', 'Thixotropic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Regic', 'Regic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Petrocalcic', 'Petrocalcic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Protothionic', 'Protothionic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Skeletic', 'Skeletic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Manganiferric', 'Manganiferric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hydrophobic', 'Hydrophobic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Oxyaquic', 'Oxyaquic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Rendzic', 'Rendzic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Humic', 'Humic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Laxic', 'Laxic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Limnic', 'Limnic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hyperalic', 'Hyperalic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Yermic', 'Yermic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Petrosalic', 'Petrosalic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Nudilithic', 'Nudilithic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Petrogleyic', 'Petrogleyic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Rhodic', 'Rhodic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Siltic', 'Siltic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Silandic', 'Silandic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hyperochric', 'Hyperochric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Urbic', 'Urbic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Reductaquic', 'Reductaquic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hyperdystric', 'Hyperdystric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Petrogypsic', 'Petrogypsic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hypogypsic', 'Hypogypsic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Vertic', 'Vertic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Pellic', 'Pellic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Sapric', 'Sapric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Novic', 'Novic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hypersalic', 'Hypersalic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hypoluvic', 'Hypoluvic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Mollic', 'Mollic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Salic', 'Salic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Umbric', 'Umbric', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hypercalcic', 'Hypercalcic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hyposodic', 'Hyposodic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Abruptic', 'Abruptic', 'WRBQualifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Entic', 'Entic', 'WRBQualifierValue');




-- WRBQualifierValue (2022)
-- FEATURE wrbqualifiergrouptype
-- CODELIST ORBL-SOIL
-- https://obrl-soil.github.io/wrbsoil2022/

INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ap', 'Abruptic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ae', 'Aceric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ac', 'Acric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ao', 'Acroxic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-at', 'Activic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ay', 'Aeolic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ab', 'Albic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ax', 'Alcalic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-al', 'Alic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-aa', 'Aluandic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-an', 'Andic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-aq', 'Anthraquic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ak', 'Anthric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ah', 'Archaic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ar', 'Arenic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ad', 'Arenicolic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ai', 'Aric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-az', 'Arzic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-bc', 'Biocrustic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-br', 'Brunic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-by', 'Bryic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ca', 'Calcaric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cc', 'Calcic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cm', 'Cambic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cp', 'Capillaric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cb', 'Carbic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cn', 'Carbonatic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cx', 'Carbonic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ch', 'Chernic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cl', 'Chloridic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cr', 'Chromic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cq', 'Claric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ce', 'Clayic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cs', 'Coarsic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-co', 'Cohesic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cu', 'Columnic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cd', 'Cordic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cy', 'Cryic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ct', 'Cutanic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-dn', 'Densic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-df', 'Differentic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-do', 'Dolomitic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ds', 'Dorsic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-dr', 'Drainic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-du', 'Duric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-dy', 'Dystric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ek', 'Ekranic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ed', 'Endic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-et', 'Entic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ep', 'Epic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ec', 'Escalic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-eu', 'Eutric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-es', 'Eutrosilic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ev', 'Evapocrustic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-fl', 'Ferralic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-fr', 'Ferric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-fe', 'Ferritic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-fi', 'Fibric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ft', 'Floatic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-fv', 'Fluvic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-fc', 'Fractic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-fg', 'Fragic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ga', 'Garbic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ge', 'Gelic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gt', 'Gelistagnic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gr', 'Geric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gi', 'Gibbsic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gg', 'Gilgaic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gc', 'Glacic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gl', 'Gleyic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gs', 'Glossic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gz', 'Greyzemic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gm', 'Grumic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gy', 'Gypsic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gp', 'Gypsiric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ha', 'Haplic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-hm', 'Hemic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-hi', 'Histic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ht', 'Hortic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-hu', 'Humic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-hg', 'Hydragric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-hy', 'Hydric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-hf', 'Hydrophobic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-jl', 'Hyperalic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ja', 'Hyperartefactic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#hypercalcic-jc', 'Hypercalcic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#hypereutric-je', 'Hypereutric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#hypergypsic-jy', 'Hypergypsic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#hypernatric-jn', 'Hypernatric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-jo', 'Hyperorganic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#hypersalic-jz', 'Hypersalic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#hyperspodic-jp', 'Hyperspodic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-im', 'Immissic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ic', 'Inclinic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ia', 'Infraandic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-is', 'Infraspodic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ir', 'Irragric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-il', 'Isolatic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ip', 'Isopteric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ka', 'Kalaic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ll', 'Lamellic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ld', 'Lapiadic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-la', 'Laxic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-le', 'Leptic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-lg', 'Lignic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-lm', 'Limnic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ln', 'Limonic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-lc', 'Linic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-li', 'Lithic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-lh', 'Litholinic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-lx', 'Lixic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-lo', 'Loamic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-lv', 'Luvic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-mg', 'Magnesic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ma', 'Mahic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-mw', 'Mawic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-mz', 'Mazic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-mi', 'Mineralic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-mc', 'Mochipic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-mo', 'Mollic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-mm', 'Mulmic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-mh', 'Murshic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-mu', 'Muusic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-nr', 'Naramic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-na', 'Natric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ne', 'Nechic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#neobrunic-nb', 'Neobrunic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#neocambic-nc', 'Neocambic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ni', 'Nitic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-nv', 'Novic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ng', 'Nudiargic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#nudilithic-nt', 'Nudilithic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#nudinatric-nn', 'Nudinatric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-oh', 'Ochric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-om', 'Ombric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-oc', 'Ornithic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#orthofluvic-of', 'Orthofluvic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-os', 'Ortsteinic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-oa', 'Oxyaquic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-oy', 'Oxygleyic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ph', 'Pachic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pb', 'Panpaic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pe', 'Pellic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-p', 'Pelocrustic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pt', 'Petric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pc', 'Petrocalcic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pd', 'Petroduric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pg', 'Petrogypsic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pp', 'Petroplinthic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ps', 'Petrosalic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-px', 'Pisoplinthic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pi', 'Placic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pa', 'Plaggic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pl', 'Plinthic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-po', 'Posic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pk', 'Pretic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pn', 'Profondic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pr', 'Protic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#protoandic-qa', 'Protoandic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-qg', 'Protoargic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#protocalcic-qc', 'Protocalcic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#protospodic-qp', 'Protospodic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#protovertic-qv', 'Protovertic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pu', 'Puffic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-py', 'Pyric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-rp', 'Raptic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ra', 'Reductaquic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-rd', 'Reductic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ry', 'Reductigleyic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-rc', 'Relocatic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-rz', 'Rendzic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-rt', 'Retic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-rh', 'Rheic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ro', 'Rhodic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-rk', 'Rockic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ru', 'Rubic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-rs', 'Rustic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sz', 'Salic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sa', 'Sapric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sh', 'Saprolithic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-se', 'Sideralic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sn', 'Silandic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sl', 'Siltic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sk', 'Skeletic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-so', 'Sodic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sv', 'Solimovic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sb', 'Sombric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-si', 'Someric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sd', 'Spodic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sp', 'Spolic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-st', 'Stagnic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sq', 'Subaquatic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sf', 'Sulfidic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-su', 'Sulphatic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ty', 'Takyric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-te', 'Technic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-tf', 'Tephric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-tr', 'Terric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ti', 'Thionic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-tp', 'Thixotropic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-th', 'Thyric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-td', 'Tidalic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-to', 'Tonguic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-tx', 'Toxic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-tn', 'Transportic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ts', 'Tsitelic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-tu', 'Turbic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-um', 'Umbric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ub', 'Urbic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-uq', 'Uterquic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-vm', 'Vermic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-vr', 'Vertic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-vi', 'Vitric', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-wa', 'Wapnic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-xa', 'Xanthic', 'WRBQualifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ye', 'Yermic', 'WRBQualifierValue2022');


-- WRBQualifierValue (2014)
-- FEATURE wrbqualifiergrouptype
-- CODELIST WRB 2014-2015
-- http://stats-class.fao.uniroma2.it/wrbsoil2014/
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Abruptic', 'Abruptic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Aceric', 'Aceric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Acric', 'Acric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Acroxic', 'Acroxic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Aeolic', 'Aeolic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Akrofluvic', 'Akrofluvic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Akromineralic', 'Akromineralic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Akroskeletic', 'Akroskeletic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Albic', 'Albic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Alcalic', 'Alcalic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Alic', 'Alic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Aluandic', 'Aluandic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Andic', 'Andic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Anthraquic', 'Anthraquic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Anthric', 'Anthric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Anthromollic', 'Anthromollic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Anthrotoxic', 'Anthrotoxic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Anthroumbric', 'Anthroumbric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Archaic', 'Archaic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Arenic', 'Arenic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Areninovic', 'Areninovic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Argisodic', 'Argisodic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Aric', 'Aric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Aridic', 'Aridic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Arzic', 'Arzic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Brunic', 'Brunic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Calcaric', 'Calcaric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Calcic', 'Calcic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Calcifractic', 'Calcifractic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Cambic', 'Cambic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Capillaric', 'Capillaric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Carbic', 'Carbic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Carbonatic', 'Carbonatic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Carbonic', 'Carbonic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Chernic', 'Chernic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Chloridic', 'Chloridic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Chromic', 'Chromic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Clayic', 'Clayic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Clayinovic', 'Clayinovic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Colluvic', 'Colluvic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Columnic', 'Columnic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Cryic', 'Cryic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Cutanic', 'Cutanic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Densic', 'Densic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Differentic', 'Differentic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Dolomitic', 'Dolomitic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Drainic', 'Drainic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Duric', 'Duric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Dystric', 'Dystric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Ekranic', 'Ekranic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Entic', 'Entic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Escalic', 'Escalic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Eutric', 'Eutric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Eutrisilic', 'Eutrisilic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Evapocrustic', 'Evapocrustic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Ferralic', 'Ferralic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Ferric', 'Ferric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Ferritic', 'Ferritic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Fibric', 'Fibric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Floatic', 'Floatic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Fluvic', 'Fluvic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Folic', 'Folic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Fractic', 'Fractic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Fragic', 'Fragic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Fulvic', 'Fulvic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Garbic', 'Garbic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Gelic', 'Gelic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Gelistagnic', 'Gelistagnic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Geoabruptic', 'Geoabruptic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Geric', 'Geric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Gibbsic', 'Gibbsic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Gilgaic', 'Gilgaic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Glacic', 'Glacic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Gleyic', 'Gleyic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Glossic', 'Glossic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Greyzemic', 'Greyzemic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Grumic', 'Grumic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Gypsic', 'Gypsic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Gypsifractic', 'Gypsifractic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Gypsiric', 'Gypsiric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Haplic', 'Haplic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hemic', 'Hemic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Histic', 'Histic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hortic', 'Hortic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Humic', 'Humic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hydragric', 'Hydragric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hydric', 'Hydric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hydrophobic', 'Hydrophobic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hyperalic', 'Hyperalic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hyperartefactic', 'Hyperartefactic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hypercalcic', 'Hypercalcic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hyperduric', 'Hyperduric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hyperdystric', 'Hyperdystric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hypereutric', 'Hypereutric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hyperferritic', 'Hyperferritic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hypergypsic', 'Hypergypsic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hyperhumic', 'Hyperhumic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hyperhydragric', 'Hyperhydragric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hypermagnesic', 'Hypermagnesic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hypernatric', 'Hypernatric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hyperorganic', 'Hyperorganic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hypersalic', 'Hypersalic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hypersideralic', 'Hypersideralic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hyperspodic', 'Hyperspodic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hypersulfidic', 'Hypersulfidic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hypertechnic', 'Hypertechnic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hyperthionic', 'Hyperthionic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hypocalcic', 'Hypocalcic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hypogypsic', 'Hypogypsic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hyposulfidic', 'Hyposulfidic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Hypothionic', 'Hypothionic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Immissic', 'Immissic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Inclinic', 'Inclinic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Infraandic', 'Infraandic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Infraspodic', 'Infraspodic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Irragric', 'Irragric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Isolatic', 'Isolatic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Lamellic', 'Lamellic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Lapiadic', 'Lapiadic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Laxic', 'Laxic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Leptic', 'Leptic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Lignic', 'Lignic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Limnic', 'Limnic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Linic', 'Linic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Lithic', 'Lithic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Lixic', 'Lixic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Loamic', 'Loamic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Loaminovic', 'Loaminovic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Luvic', 'Luvic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Magnesic', 'Magnesic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Manganiferric', 'Manganiferric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Mawic', 'Mawic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Mazic', 'Mazic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Melanic', 'Melanic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Mesotrophic', 'Mesotrophic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Mineralic', 'Mineralic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Mollic', 'Mollic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Murshic', 'Murshic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Muusic', 'Muusic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Natric', 'Natric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Nechic', 'Nechic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Neocambic', 'Neocambic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Nitic', 'Nitic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Nudiargic', 'Nudiargic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Nudilithic', 'Nudilithic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Nudinatric', 'Nudinatric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Nudipetric', 'Nudipetric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Ochric', 'Ochric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Oligeoeutric', 'Oligeoeutric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Ombric', 'Ombric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Organotransportic', 'Organotransportic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Ornithic', 'Ornithic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Orthidystric', 'Orthidystric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Orthieutric', 'Orthieutric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Orthofluvic', 'Orthofluvic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Orthomineralic', 'Orthomineralic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Orthoskeletic', 'Orthoskeletic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Ortsteinic', 'Ortsteinic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Oxyaquic', 'Oxyaquic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Oxygleyic', 'Oxygleyic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Pachic', 'Pachic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Pellic', 'Pellic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Petric', 'Petric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Petrocalcic', 'Petrocalcic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Petroduric', 'Petroduric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Petrogleyic', 'Petrogleyic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Petrogypsic', 'Petrogypsic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Petroplinthic', 'Petroplinthic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Petrosalic', 'Petrosalic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Phytotoxic', 'Phytotoxic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Pisoplinthic', 'Pisoplinthic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Placic', 'Placic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Plaggic', 'Plaggic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Plinthic', 'Plinthic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Plinthofractic', 'Plinthofractic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Posic', 'Posic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Pretic', 'Pretic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Profondic', 'Profondic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Profundihumic', 'Profundihumic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Protic', 'Protic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Protoandic', 'Protoandic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Protoargic', 'Protoargic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Protoaridic', 'Protoaridic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Protocalcic', 'Protocalcic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Protosalic', 'Protosalic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Protosodic', 'Protosodic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Protospodic', 'Protospodic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Protostagnic', 'Protostagnic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Prototechnic', 'Prototechnic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Prototephric', 'Prototephric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Protovertic', 'Protovertic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Puffic', 'Puffic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Radiotoxic', 'Radiotoxic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Raptic', 'Raptic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Reductaquic', 'Reductaquic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Reductic', 'Reductic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Reductigleyic', 'Reductigleyic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Relictigleyic', 'Relictigleyic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Relictistagnic', 'Relictistagnic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Relictiturbic', 'Relictiturbic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Relocatic', 'Relocatic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Rendzic', 'Rendzic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Retic', 'Retic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Rheic', 'Rheic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Rhodic', 'Rhodic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Rockic', 'Rockic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Rubic', 'Rubic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Rustic', 'Rustic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Salic', 'Salic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Sapric', 'Sapric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Sideralic', 'Sideralic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Silandic', 'Silandic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Siltic', 'Siltic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Siltinovic', 'Siltinovic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Skeletic', 'Skeletic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Sodic', 'Sodic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Sombric', 'Sombric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Someric', 'Someric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Somerimollic', 'Somerimollic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Somerirendzic', 'Somerirendzic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Someriumbric', 'Someriumbric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Spodic', 'Spodic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Spolic', 'Spolic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Stagnic', 'Stagnic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Subaquatic', 'Subaquatic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Sulfidic', 'Sulfidic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Sulfatic', 'Sulphatic', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Takyric', 'Takyric', 'WRBQualifierValue2014');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://stats-class.fao.uniroma2.it/WRB/v2014/Technic', 'Technic', 'WRBQualifierValue2014');




-- WRBSpecifiers (2006)
-- FEATURE wrbqualifiergrouptype
-- CODELIST INSPIRE 
-- http://inspire.ec.europa.eu/codelist/WRBSpecifierValue (Under review)

INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/bathi', 'Bathi', 'WRBSpecifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/cumuli', 'Cumuli', 'WRBSpecifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/endo', 'Endo', 'WRBSpecifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/epi', 'Epi', 'WRBSpecifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/hyper', 'Hyper', 'WRBSpecifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/hypo', 'Hypo', 'WRBSpecifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/ortho', 'Ortho', 'WRBSpecifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/para', 'Para', 'WRBSpecifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/proto', 'Proto', 'WRBSpecifierValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/thapto', 'Thapto', 'WRBSpecifierValue');



-- WRBSpecifierValue (2022)
-- FEATURE wrbqualifiergrouptype
-- CODELIST ORBL-SOIL
-- https://obrl-soil.github.io/wrbsoil2022/

INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Amphi', 'Amphi', 'WRBSpecifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Ano', 'Ano', 'WRBSpecifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Bathy', 'Bathy', 'WRBSpecifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Endo', 'Endo', 'WRBSpecifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Epi', 'Epi', 'WRBSpecifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Kato', 'Kato', 'WRBSpecifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Panto', 'Panto', 'WRBSpecifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Poly', 'Poly', 'WRBSpecifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Supra', 'Supra', 'WRBSpecifierValue2022');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Thapto', 'Thapto', 'WRBSpecifierValue2022');



-- WRBSpecifierValue (2014)
-- FEATURE wrbqualifiergrouptype
-- CODELIST UNCDD
-- https://catalogue.unccd.int/402_a-i3794e.pdf
INSERT INTO codelist (id, label, collection) VALUES ('https://catalogue.unccd.int/402_a-i3794e.pdf#Amphi', 'Amphi', 'WRBSpecifierValue2014');
INSERT INTO codelist (id, label, collection) VALUES ('https://catalogue.unccd.int/402_a-i3794e.pdf#Ano', 'Ano', 'WRBSpecifierValue2014');
INSERT INTO codelist (id, label, collection) VALUES ('https://catalogue.unccd.int/402_a-i3794e.pdf#Bathy', 'Bathy', 'WRBSpecifierValue2014');
INSERT INTO codelist (id, label, collection) VALUES ('https://catalogue.unccd.int/402_a-i3794e.pdf#Endo', 'Endo', 'WRBSpecifierValue2014');
INSERT INTO codelist (id, label, collection) VALUES ('https://catalogue.unccd.int/402_a-i3794e.pdf#Epi', 'Epi', 'WRBSpecifierValue2014');
INSERT INTO codelist (id, label, collection) VALUES ('https://catalogue.unccd.int/402_a-i3794e.pdf#Kato', 'Kato', 'WRBSpecifierValue2014');
INSERT INTO codelist (id, label, collection) VALUES ('https://catalogue.unccd.int/402_a-i3794e.pdf#Panto', 'Panto', 'WRBSpecifierValue2014');
INSERT INTO codelist (id, label, collection) VALUES ('https://catalogue.unccd.int/402_a-i3794e.pdf#Supra', 'Supra', 'WRBSpecifierValue2014');
INSERT INTO codelist (id, label, collection) VALUES ('https://catalogue.unccd.int/402_a-i3794e.pdf#Thapto', 'Thapto', 'WRBSpecifierValue2014');



-- *** INTERNAL *** codelist for managing forms 
-- Define the featuretype
-- FEATURE observableproperty
-- CODELIST for internal management of Qgis forms

-- INSERT INTO "codelist" (id, label, collection) VALUES ('profileelement', 'profileelement', 'featuretype');
-- INSERT INTO "codelist" (id, label, collection) VALUES ('soilprofile', 'soilprofile', 'featuretype');
-- INSERT INTO "codelist" (id, label, collection) VALUES ('soilderivedobject', 'soilderivedobject', 'featuretype');
-- INSERT INTO "codelist" (id, label, collection) VALUES ('soilsite', 'soilsite', 'featuretype');

-- *** INTERNAL *** codelist for managing forms 
-- Define the PhenomenonType
-- FEATURE observableproperty
-- CODELIST for internal management of Qgis forms

-- INSERT INTO "codelist" (id, label, collection) VALUES ('chemical', 'chemical', 'PhenomenonType');
-- INSERT INTO "codelist" (id, label, collection) VALUES ('biological', 'biological', 'PhenomenonType');
-- INSERT INTO "codelist" (id, label, collection) VALUES ('physical', 'physical', 'PhenomenonType');

-- ProcessParameterNameValue
-- FEATURE processparameter
-- CODELIST AGROPRTAL - LOD 
-- https://agroportal.lirmm.fr/ - https://lod.nal.usda.gov/

INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/UC_SENSE/sensory_perception_process', 'Sensory Assesment', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/UC_SENSE/perceived_aroma', 'Aroma method', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://lod.nal.usda.gov/nalt/55677', 'Smelling', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/UC_SENSE/perceived_flavor', 'Taste method', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AGFOOD/Q1W-PVK52ZPF-9', 'Gustation', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/UC_SENSE/perceived_visual_stimulus', 'Visual Observation', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/BDG/CountingUnit', 'Counting', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://lod.nal.usda.gov/nalt/28752', 'Estimation', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://lod.nal.usda.gov/nalt/52488', 'Visual Rating', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/CO_350/CO_350:0000001', 'Visual Scoring', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/UC_SENSE/perceived_texture', 'Texture method', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/UC_SENSE/perceived_tactile_stimulus', 'By hand', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/UC_SENSE/perceived_mouthfeel', 'By mouth', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://lod.nal.usda.gov/nalt/31779', 'Computation', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://lod.nal.usda.gov/nalt/302029', 'Calculation', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/AFO/p4794', 'Measurement', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/ONTOBIOTOPE/OBT_000146', 'Field determination', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/ONTOBIOTOPE/OBT_000103', 'Instrumental', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://agroportal.lirmm.fr/ontologies/ONTOBIOTOPE/OBT_001169', 'Laboratory determination', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://lod.nal.usda.gov/nalt/17521', 'Sensor', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://lod.nal.usda.gov/nalt/136977', 'Expert attribution', 'ProcessParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('https://lod.nal.usda.gov/nalt/52488', 'Classificazione, classe, categoria', 'ProcessParameterNameValue');




-- ResponsiblePartyRole
-- FEATURE relatedparty
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole

INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/resourceProvider', 'Resource Provider', 'ResponsiblePartyRole');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/custodian', 'Custodian', 'ResponsiblePartyRole');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/owner', 'Owner', 'ResponsiblePartyRole');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/user', 'User', 'ResponsiblePartyRole');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/distributor', 'Distributor', 'ResponsiblePartyRole');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/originator', 'Originator', 'ResponsiblePartyRole');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/pointOfContact', 'Point of Contact', 'ResponsiblePartyRole');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/principalInvestigator', 'Principal Investigator', 'ResponsiblePartyRole');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/processor', 'Processor', 'ResponsiblePartyRole');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/publisher', 'Publisher', 'ResponsiblePartyRole');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/author', 'Author', 'ResponsiblePartyRole');


----------------------------------------------------------------
-- PARAMETER --
----------------------------------------------------------------


-- SoilSiteParameterNameValue
-- PARAMETER soilsite
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue

-- CHEMICAL
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalAs', 'Arsenic and compounds (as As)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalBa', 'Barium and compounds (as Ba)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalCd', 'Cadmium and compounds (as Cd)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalCr', 'Chromium and compounds (as Cr)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalCo', 'Cobalt and compounds (as Co)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalCu', 'Copper and compounds (as Cu)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalHg', 'Mercury and compounds (as Hg)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalNi', 'Nickel and compounds (as Ni)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalPb', 'Lead and compounds (as Pb)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalTl', 'Thallium and compounds (as Tl)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalZn', 'Zinc and compounds (as Zn)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalSb', 'Antimony and compounds (as Sb)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalV', 'Vanadium and compounds (as V)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalMo', 'Molybdenum and compounds (as Mo)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/organometalSn', 'Organotin compounds (as total Sn)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/organometalTributylSn', 'Tributyltin and compounds (total mass)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/organometalTriphenylSn', 'Triphenyltin and compounds (total mass)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/inorganicAsbestos', 'Asbestos', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/inorganicCN', 'Cyanides (as total CN)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/inorganicF', 'Fluorides (as total F)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/aromaticBTEX', 'BTEX', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/aromaticBenzene', 'Benzene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/aromaticToluene', 'Toluene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/aromaticEthylbenzene', 'Ethylbenzene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/aromaticXylene', 'Xylene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/aromaticStyrene', 'Styrene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCBs', 'Polychlorinated biphenyls (PCBs)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB28', 'Polychlorinated biphenyl 28', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB52', 'Polychlorinated biphenyls 52', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB101', 'Polychlorinated biphenyls 101', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB138', 'Polychlorinated biphenyls 138', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB153', 'Polychlorinated biphenyls 153', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB180', 'Polychlorinated biphenyls 180', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB77', 'Polychlorinated biphenyls 77', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB81', 'Polychlorinated biphenyls 81', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB126', 'Polychlorinated biphenyls 126', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB169', 'Polychlorinated biphenyls 169', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB105', 'Polychlorinated biphenyls 105', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB114', 'Polychlorinated biphenyls 114', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB118', 'Polychlorinated biphenyls 118', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB123', 'Polychlorinated biphenyls 123', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB156', 'Polychlorinated biphenyls 156', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB157', 'Polychlorinated biphenyls 157', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB167', 'Polychlorinated biphenyls 167', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB189', 'Polychlorinated biphenyls 189', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticHCB', 'Hexachlorobenzene (HCB)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCDD-PCF', 'PCDD+PCDF (dioxines and furans; as Teq)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic2-3-7-8-Tetra-CDD', '2,3,7,8-Tetra-CDD (as concentration ng/kg)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-7-8-Penta-CDD', '1,2,3,7,8-Penta-CDD (as concentration ng/kg)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-4-7-8-Hexa-CDD', '1,2,3,4,7,8-Hexa-CDD (as concentration ng/kg)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-6-7-8-Hexa-CDD', '1,2,3,6,7,8-Hexa-CDD (as concentration ng/kg)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-7-8-9-Hexa-CDD', '1,2,3,7,8,9-Hexa-CDD (as concentration ng/kg)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-3-6-7-8-Hepta-CDD', '1,2,3,3,6,7,8-Hepta-CDD (as concentration ng/kg)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-4-6-7-8-9-Octa-CDD', '1,2,3,4,6,7,8,9-Octa-CDD (as concentration ng/kg)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic2-3-7-8-Tetra-CDF', '2,3,7,8-Tetra-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-7-8-Penta-CDF', '1,2,3,7,8-Penta-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic2-3-4-7-8-Penta-CDF', '2,3,4,7,8-Penta-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-4-7-8-Hexa-CDF', '1,2,3,4,7,8-Hexa-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-6-7-8-Hexa-CDF', '1,2,3,6,7,8-Hexa-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-7-8-9-Hexa-CDF', '1,2,3,7,8,9-Hexa-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic2-3-4-6-7-8-Hexa-CDF', '2,3,4,6,7,8-Hexa-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-4-6-7-8-Hepta-CDF', '1,2,3,4,6,7,8-Hepta-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-4-7-8-9-Hepta-CDF', '1,2,3,4,7,8,9-Hepta-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-4-6-7-8-9-Octa-CDF', '1,2,3,4,6,7,8,9-Octa-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticClbenzenes', 'Chlorobenzenes (total)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticTriClbenzenes', 'Trichlorobenzenes', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPentaClbenzene', 'Pentachlorobenzene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticHCBD', 'Hexachlorobutadiene (HCBD)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticHBB', 'Hexabromobiphenyl (HBB)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticBDPE', 'Brominated diphenylether (sum) / Pentabromodiphenylether', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic6-7BDPE', 'Hexabromodiphenyl ether and heptabromodiphenyl ether', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic4-5BDPE', 'Tetrabromodiphenyl ether and Pentabromodiphenyl ether', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticAOX', 'halogenated organic compounds (as AOX)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticC10-13', 'Chloro-alkanes C10-C13', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticTCE', '{Trichloroethylene}', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticPCE', '{Tetrachloroethylene (or Perchloroethylene)}', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticDCM', 'Dichloromethane (DCM)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticTriCM', '{Trichloromethane (chloroform)}', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticEDC', '1,2-dichlorethane (EDC)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticTCM', '{Tetrachloromethane (TCM)}', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticVinylCl', 'Vinylchloride', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticPFOS-A', 'Perfluorooctane sulfonic (acid and salts) and Perfluorooctane sulfonyl fluoride', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/phenolsTotal', 'Phenols (as total C of phenols)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/phenolsPCP', 'Pentachlorophenol (PCP)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/phenolsClPTotal', 'Chlorophenols (total)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/phenolsNonylP', 'Nonylphenols / (4-nonylphenol)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/phenolsOctylP', '{Octylphenols and octylphenolethoxylates}', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAHsum', 'PAHs sum or report specific releases of', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-BaP', 'Benzo(a)pyrene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-BbF', 'Benzo(b)fluoranthene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-BkF', 'Benzo(k)fluoranthene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-IcP', 'Indeno(1,23-cd)pyrene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-BgP', '{Benzo(g,h,i)perylene}', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-ANT', 'Anthracene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-NAP', 'Naphtalene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-ACY', 'Acenaphthylene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-ACE', 'Acenaphthene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-FLE', 'Fluorene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-PHE', 'Phenanthrene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-FLA', 'Fluoranthene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-PYE', 'Pyrene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-BaA', 'Benzo(a)anthracene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-CHE', 'Chrysene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-DaA', 'Dibenzo(a,h)anthracene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideAldrin', 'Aldrin', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideDieldrin', 'Dieldrin', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideEndrin', 'Endrin', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideIsodrin', '{Isodrin}', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideOpDDT', 'op-DDT', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticidePpDDT', 'pp-DDT', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideAlHCH', 'alpha-HCH', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideBeHCH', 'beta-HCH', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideDeHCH', 'delta-HCH', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideGaHCH', 'gamma-HCH (Lindan)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideAtrazin', 'Atrazine', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideChlordane', 'Chlordane', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideChlordecone', 'Chlordecone', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideChlorfenvinphos', 'Chlorfenvinphos', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideChlorpyrifos', 'Chlorpyrifos', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideDiuron', 'Diuron', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideEndosulphan', 'Endosulphan', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideHeptachlor', 'Heptachlor', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideMirex', 'Mirex', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideSimazine', 'Simazine', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideToxaphene', 'Toxaphene', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideIsoproturon', 'Isoproturon', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideDEHP', 'Di-(2-ethyl hexyl) phtalate (DEHP)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideTrifluralin', 'Trifluralin', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideAlachlor', 'Alachlor', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideCyclodiene', 'Cyclodiene pesticides', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/otherMTBE', 'Methyl tertiary-butyl ether (MTBE)', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/otherMineralOil', 'Mineral oil', 'SoilSiteParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/otherPhtalatesTotal', 'Phtalates (total)', 'SoilSiteParameterNameValue');


-- SoilProfileParameterNameValue
-- PARAMETER soilprofile
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/SoilProfileParameterNameValue

-- CHEMICAL
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilProfileParameterNameValue/carbonStock', 'carbon stock', 'SoilProfileParameterNameValue');
-- PHYSICAL
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilProfileParameterNameValue/potentialRootDepth', 'potential root depth', 'SoilProfileParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilProfileParameterNameValue/availableWaterCapacity', 'available water capacity', 'SoilProfileParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilProfileParameterNameValue/waterDrainage', 'water drainage', 'SoilProfileParameterNameValue');


-- SoilDerivedObjectParameterNameValue
-- PARAMETER soilderivedobject
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue

-- CHEMICAL
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/carbonStock', 'carbon stock', 'SoilDerivedObjectParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/organicCarbonContent', 'organic carbon content', 'SoilDerivedObjectParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/nitrogenContent', 'nitrogen content', 'SoilDerivedObjectParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/pHValue', 'pH value', 'SoilDerivedObjectParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/cadmiumContent', 'cadmium content', 'SoilDerivedObjectParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/chromiumContent', 'chromium content', 'SoilDerivedObjectParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/copperContent', 'copper content', 'SoilDerivedObjectParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/leadContent', 'lead content', 'SoilDerivedObjectParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/mercuryContent', 'mercury content', 'SoilDerivedObjectParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/nickelContent', 'nickel content', 'SoilDerivedObjectParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/zincContent', 'zinc content', 'SoilDerivedObjectParameterNameValue');
-- PHYSICAL
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/potentialRootDepth', 'potential root depth', 'SoilDerivedObjectParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/availableWaterCapacity', 'available water capacity', 'SoilDerivedObjectParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/waterDrainage', 'water drainage', 'SoilDerivedObjectParameterNameValue');


-- ProfileElementParameterNameValue
-- PARAMETER profileelement
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue

-- CHEMICAL
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue/organicCarbonContent', 'organic carbon content', 'ProfileElementParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue/nitrogenContent', 'nitrogen content', 'ProfileElementParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue/pHValue', 'pH value', 'ProfileElementParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue/cadmiumContent', 'cadmium content', 'ProfileElementParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue/chromiumContent', 'chromium content', 'ProfileElementParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue/copperContent', 'copper content', 'ProfileElementParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue/leadContent', 'lead content', 'ProfileElementParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue/mercuryContent', 'mercury content', 'ProfileElementParameterNameValue');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue/nickelContent', 'nickel content', 'ProfileElementParameterNameValue');


-- EncodingType
-- PARAMETER feature
-- CODELIST STA2
-- https://hylkevds.github.io/23-019/23-019.html#location-encodingType-value-codes


--INSERT INTO "codelist" (id, label, definition, collection, featuretype, phenomenon, featuretype_phenomenon, parent) VALUES ('application/geo+json', 'GeoJSON', 'GeoJSON', 'encodingType', null, null, null, null);
--INSERT INTO "codelist" (id, label, definition, collection, featuretype, phenomenon, featuretype_phenomenon, parent) VALUES ('application/geopose+json', 'GeoPose', 'GeoPose', 'encodingType', null, null, null, null);
--INSERT INTO "codelist" (id, label, definition, collection, featuretype, phenomenon, featuretype_phenomenon, parent) VALUES ('text/plain', 'WKT', 'WKT', 'encodingType', null, null, null, null);
--INSERT INTO "codelist" (id, label, definition, collection, featuretype, phenomenon, featuretype_phenomenon, parent) VALUES ('application/geopackage+sqlite3', 'Geopackage', 'Geopackage', 'encodingType', null, null, null, null);

-- ResultType
-- PARAMETER Datatstream
-- STA2
-- https://hylkevds.github.io/23-019/23-019.html#location-encodingType-value-codes


INSERT INTO "codelist" (id, label, collection) VALUES ('Quantity', 'Quantity', 'resultType');
INSERT INTO "codelist" (id, label, collection) VALUES ('Category', 'Category', 'resultType');
INSERT INTO "codelist" (id, label, collection) VALUES ('Boolean', 'Boolean', 'resultType');
INSERT INTO "codelist" (id, label, collection) VALUES ('Count', 'Count', 'resultType');
INSERT INTO "codelist" (id, label, collection) VALUES ('Text', 'Text', 'resultType');


--
--INSERT INTO featuretype (id, name, definition, description, properties) VALUES (1, 'Soil Site', 'http://inspire.ec.europa.eu/featureconcept/SoilSite:1', 'An area within a larger survey, study or monitored area, where a specific soil investigation is carried out.', null);
--INSERT INTO featuretype (id, name, definition, description, properties) VALUES (2, 'Soil Profile', 'http://inspire.ec.europa.eu/featureconcept/SoilProfile:1', 'A description of the soil that is characterized by a vertical succession of profile elements.', null);
--INSERT INTO featuretype (id, name, definition, description, properties) VALUES (3, 'Profile Element', 'http://inspire.ec.europa.eu/featureconcept/ProfileElement:1', 'An abstract spatial object type grouping soil layers and / or horizons for functional/operational aims.', null);
--INSERT INTO featuretype (id, name, definition, description, properties) VALUES (4, 'Soil Derived Object', 'http://inspire.ec.europa.eu/featureconcept/SoilDerivedObject:1', 'A spatial object type for representing spatial objects with soil-related property derived from one or more soil and possibly other non soil properties.', null);
--

-- 

-- TEST category codes

/*
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode', 'biologicalFeaturesValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingLocationValueCode', 'coatingLocationValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode', 'coatingNatureValueCode', 'Category');


INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode-A', 'Artefacts', 'http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode-B', 'Burrows (unspecified)', 'http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode-BI', 'Infilled large burrows', 'http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode-BO', 'Open large burrows', 'http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode-C', 'Charcoal', 'http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode-E', 'Earthworm channels', 'http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode-I', 'Other insect activity', 'http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode-P', 'Pedotubules', 'http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode-T', 'Termite or ant channels and nests', 'http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode');


INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingLocationValueCode-BR', 'Bridges between sand grains', 'http://w3id.org/glosis/model/codelists/coatingLocationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingLocationValueCode-CF', 'Coarse fragments', 'http://w3id.org/glosis/model/codelists/coatingLocationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingLocationValueCode-LA', 'Lamellae (clay bands)', 'http://w3id.org/glosis/model/codelists/coatingLocationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingLocationValueCode-NS', 'No specific location', 'http://w3id.org/glosis/model/codelists/coatingLocationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingLocationValueCode-P', 'Pedfaces', 'http://w3id.org/glosis/model/codelists/coatingLocationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingLocationValueCode-PH', 'Horizontal pedfaces', 'http://w3id.org/glosis/model/codelists/coatingLocationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingLocationValueCode-PV', 'Vertical pedfaces', 'http://w3id.org/glosis/model/codelists/coatingLocationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingLocationValueCode-VO', 'Voids', 'http://w3id.org/glosis/model/codelists/coatingLocationValueCode');

INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-C', 'Clay', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-CC', 'Calcium carbonate', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-CH', 'Clay and humus (organic matter)', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-CS', 'Clay and sesquioxides', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-GB', 'Gibbsite', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-H', 'Humus', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-HC', 'Hypodermic coatings (Hypodermic coatings', 'are field-scale features');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-JA', 'Jarosite', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-MN', 'Manganese', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-PF', 'Pressure faces', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-S', 'Sesquioxides', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-SA', 'Sand coatings', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-SF', 'Shiny faces (as in nitic horizon)', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-SI', 'Slickensides', 'Slickensides');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-SL', 'Silica (opal)', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-SN', 'Slickensides', 'Slickensides');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-SP', 'Slickensides', 'Slickensides');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-ST', 'Silt coatings', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
*/

-- Coded values for properties
-- CODELIST GLOSIS


INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/weatherConditionsValueCode', 'weatherConditionsValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingAbundanceValueCode', 'coatingAbundanceValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/weatheringValueCode', 'weatheringValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingContrastValueCode', 'coatingContrastValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingFormValueCode', 'coatingFormValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode', 'biologicalFeaturesValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingLocationValueCode', 'coatingLocationValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode', 'coatingNatureValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/consistenceDryValueCode', 'consistenceDryValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/consistenceMoistValueCode', 'consistenceMoistValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/contrastValueCode', 'contrastValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cracksDepthValueCode', 'cracksDepthValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cracksDistanceValueCode', 'cracksDistanceValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cracksWidthValueCode', 'cracksWidthValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode', 'cropClassValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/bleachedSandValueCode', 'bleachedSandValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionActivityPeriodValueCode', 'erosionActivityPeriodValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionAreaAffectedValueCode', 'erosionAreaAffectedValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionCategoryValueCode', 'erosionCategoryValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionDegreeValueCode', 'erosionDegreeValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionTotalAreaAffectedValueCode', 'erosionTotalAreaAffectedValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/boundaryClassificationValueCode', 'boundaryClassificationValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentCoverValueCode', 'fragmentCoverValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentsClassValueCode', 'fragmentsClassValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentsSizeValueCode', 'fragmentsSizeValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/gypsumContentValueCode', 'gypsumContentValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/gypsumFormsValueCode', 'gypsumFormsValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/boundaryDistinctnessValueCode', 'boundaryDistinctnessValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode', 'humanInfluenceClassValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode', 'landUseClassValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/boundaryTopographyValueCode', 'boundaryTopographyValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landformComplexValueCode', 'landformComplexValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/bulkDensityMineralValueCode', 'bulkDensityMineralValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode', 'lithologyValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/bulkDensityPeatValueCode', 'bulkDensityPeatValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/majorLandFormValueCode', 'majorLandFormValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcColourValueCode', 'mineralConcColourValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/carbonatesContentValueCode', 'carbonatesContentValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcHardnessValueCode', 'mineralConcHardnessValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcKindValueCode', 'mineralConcKindValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode', 'mineralConcNatureValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcShapeValueCode', 'mineralConcShapeValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcSizeValueCode', 'mineralConcSizeValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcVolumeValueCode', 'mineralConcVolumeValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralFragmentsValueCode', 'mineralFragmentsValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mottlesAbundanceValueCode', 'mottlesAbundanceValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/carbonatesFormsValueCode', 'carbonatesFormsValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mottlesSizeValueCode', 'mottlesSizeValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatDecompostionValueCode', 'peatDecompostionValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatDrainageValueCode', 'peatDrainageValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatVolumeValueCode', 'peatVolumeValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationContinuityValueCode', 'cementationContinuityValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalAbundanceValueCode', 'biologicalAbundanceValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationDegreeValueCode', 'cementationDegreeValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/physiographyValueCode', 'physiographyValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/plasticityValueCode', 'plasticityValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/poresAbundanceValueCode', 'poresAbundanceValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/porosityClassValueCode', 'porosityClassValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode', 'profileDescriptionStatusValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockAbundanceValueCode', 'rockAbundanceValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockOutcropsCoverValueCode', 'rockOutcropsCoverValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockOutcropsDistanceValueCode', 'rockOutcropsDistanceValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockShapeValueCode', 'rockShapeValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockSizeValueCode', 'rockSizeValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationFabricValueCode', 'cementationFabricValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rootsAbundanceValueCode', 'rootsAbundanceValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/saltContentValueCode', 'saltContentValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/saltCoverValueCode', 'saltCoverValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/saltThicknessValueCode', 'saltThicknessValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationNatureValueCode', 'cementationNatureValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sandyTextureValueCode', 'sandyTextureValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sealingConsistenceValueCode', 'sealingConsistenceValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sealingThicknessValueCode', 'sealingThicknessValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopeFormValueCode', 'slopeFormValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode', 'slopeGradientClassValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopePathwaysValueCode', 'slopePathwaysValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/stickinessValueCode', 'stickinessValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/structureGradeValueCode', 'structureGradeValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/structureSizeValueCode', 'structureSizeValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/surfaceAgeValueCode', 'surfaceAgeValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode', 'vegetationClassValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/voidsClassificationValueCode', 'voidsClassificationValueCode', 'Category');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/voidsDiameterValueCode', 'voidsDiameterValueCode', 'Category');


-- weatherConditions
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/weatherConditionsValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/weatherConditionsValueCode-OV', 'overcast', 'http://w3id.org/glosis/model/codelists/weatherConditionsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/weatherConditionsValueCode-PC', 'partly cloudy', 'http://w3id.org/glosis/model/codelists/weatherConditionsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/weatherConditionsValueCode-RA', 'rain', 'http://w3id.org/glosis/model/codelists/weatherConditionsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/weatherConditionsValueCode-SL', 'sleet', 'http://w3id.org/glosis/model/codelists/weatherConditionsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/weatherConditionsValueCode-SN', 'snow', 'http://w3id.org/glosis/model/codelists/weatherConditionsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/weatherConditionsValueCode-SU', 'sunny/clear', 'http://w3id.org/glosis/model/codelists/weatherConditionsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/weatherConditionsValueCode-WC1', 'no rain in the last month', 'http://w3id.org/glosis/model/codelists/weatherConditionsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/weatherConditionsValueCode-WC2', 'no rain in the last week', 'http://w3id.org/glosis/model/codelists/weatherConditionsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/weatherConditionsValueCode-WC3', 'no rain in the last 24 hours', 'http://w3id.org/glosis/model/codelists/weatherConditionsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/weatherConditionsValueCode-WC4', 'rainy without heavy rain in the last 24 hours', 'http://w3id.org/glosis/model/codelists/weatherConditionsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/weatherConditionsValueCode-WC5', 'heavier rain for some days or rainstorm in the last 24 hours', 'http://w3id.org/glosis/model/codelists/weatherConditionsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/weatherConditionsValueCode-WC6', 'extremely rainy time or snow melting', 'http://w3id.org/glosis/model/codelists/weatherConditionsValueCode');
-- coatingAbundance
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/coatingAbundanceValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingAbundanceValueCode-A', 'Abundant', 'http://w3id.org/glosis/model/codelists/coatingAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingAbundanceValueCode-C', 'Common', 'http://w3id.org/glosis/model/codelists/coatingAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingAbundanceValueCode-D', 'Dominant', 'http://w3id.org/glosis/model/codelists/coatingAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingAbundanceValueCode-F', 'Few', 'http://w3id.org/glosis/model/codelists/coatingAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingAbundanceValueCode-M', 'Many', 'http://w3id.org/glosis/model/codelists/coatingAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingAbundanceValueCode-N', 'None', 'http://w3id.org/glosis/model/codelists/coatingAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingAbundanceValueCode-V', 'Very few', 'http://w3id.org/glosis/model/codelists/coatingAbundanceValueCode');
-- weathering
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/weatheringValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/weatheringValueCode-F', 'Fresh or slightly weathered', 'http://w3id.org/glosis/model/codelists/weatheringValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/weatheringValueCode-S', 'Strongly weathered', 'http://w3id.org/glosis/model/codelists/weatheringValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/weatheringValueCode-W', 'Weathered', 'http://w3id.org/glosis/model/codelists/weatheringValueCode');
-- coatingContrast
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/coatingContrastValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingContrastValueCode-D', 'Distinct', 'http://w3id.org/glosis/model/codelists/coatingContrastValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingContrastValueCode-F', 'Faint', 'http://w3id.org/glosis/model/codelists/coatingContrastValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingContrastValueCode-P', 'Prominent', 'http://w3id.org/glosis/model/codelists/coatingContrastValueCode');
-- coatingForm
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/coatingFormValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingFormValueCode-C', 'Continuous', 'http://w3id.org/glosis/model/codelists/coatingFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingFormValueCode-CI', 'Continuous irregular (non-uniform, heterogeneous)', 'http://w3id.org/glosis/model/codelists/coatingFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingFormValueCode-DC', 'Discontinuous circular', 'http://w3id.org/glosis/model/codelists/coatingFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingFormValueCode-DE', 'Dendroidal', 'http://w3id.org/glosis/model/codelists/coatingFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingFormValueCode-DI', 'Discontinuous irregular', 'http://w3id.org/glosis/model/codelists/coatingFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingFormValueCode-O', 'Other', 'http://w3id.org/glosis/model/codelists/coatingFormValueCode');
-- biologicalFeatures
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode-A', 'Artefacts', 'http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode-B', 'Burrows (unspecified)', 'http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode-BI', 'Infilled large burrows', 'http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode-BO', 'Open large burrows', 'http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode-C', 'Charcoal', 'http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode-E', 'Earthworm channels', 'http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode-I', 'Other insect activity', 'http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode-P', 'Pedotubules', 'http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode-T', 'Termite or ant channels and nests', 'http://w3id.org/glosis/model/codelists/biologicalFeaturesValueCode');
-- coatingLocation
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/coatingLocationValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingLocationValueCode-BR', 'Bridges between sand grains', 'http://w3id.org/glosis/model/codelists/coatingLocationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingLocationValueCode-CF', 'Coarse fragments', 'http://w3id.org/glosis/model/codelists/coatingLocationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingLocationValueCode-LA', 'Lamellae (clay bands)', 'http://w3id.org/glosis/model/codelists/coatingLocationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingLocationValueCode-NS', 'No specific location', 'http://w3id.org/glosis/model/codelists/coatingLocationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingLocationValueCode-P', 'Pedfaces', 'http://w3id.org/glosis/model/codelists/coatingLocationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingLocationValueCode-PH', 'Horizontal pedfaces', 'http://w3id.org/glosis/model/codelists/coatingLocationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingLocationValueCode-PV', 'Vertical pedfaces', 'http://w3id.org/glosis/model/codelists/coatingLocationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingLocationValueCode-VO', 'Voids', 'http://w3id.org/glosis/model/codelists/coatingLocationValueCode');
-- coatingNature
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/coatingNatureValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-C', 'Clay', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-CC', 'Calcium carbonate', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-CH', 'Clay and humus (organic matter)', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-CS', 'Clay and sesquioxides', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-GB', 'Gibbsite', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-H', 'Humus', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-HC', 'Hypodermic coatings (Hypodermic coatings, as used here, are field-scale features, commonly only expressed as hydromorphic features. Micromorphological hypodermic coatings include non-redox features [Bullock et al., 1985].)', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-JA', 'Jarosite', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-MN', 'Manganese', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-PF', 'Pressure faces', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-S', 'Sesquioxides', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-SA', 'Sand coatings', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-SF', 'Shiny faces (as in nitic horizon)', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-SI', 'Slickensides, predominantly intersecting (Slickensides are polished and grooved ped surfaces that are produced by aggregates sliding one past another.)', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-SL', 'Silica (opal)', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-SN', 'Slickensides, non intersecting', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-SP', 'Slickensides, partly intersecting', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/coatingNatureValueCode-ST', 'Silt coatings', 'http://w3id.org/glosis/model/codelists/coatingNatureValueCode');
-- consistenceDry
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/consistenceDryValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/consistenceDryValueCode-EHA', 'Extremely hard', 'http://w3id.org/glosis/model/codelists/consistenceDryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/consistenceDryValueCode-HA', 'Hard', 'http://w3id.org/glosis/model/codelists/consistenceDryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/consistenceDryValueCode-HVH', 'hard to very hard', 'http://w3id.org/glosis/model/codelists/consistenceDryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/consistenceDryValueCode-LO', 'Loose', 'http://w3id.org/glosis/model/codelists/consistenceDryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/consistenceDryValueCode-SHA', 'Slightly hard', 'http://w3id.org/glosis/model/codelists/consistenceDryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/consistenceDryValueCode-SHH', 'slightly hard to hard', 'http://w3id.org/glosis/model/codelists/consistenceDryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/consistenceDryValueCode-SO', 'Soft', 'http://w3id.org/glosis/model/codelists/consistenceDryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/consistenceDryValueCode-SSH', 'soft to slightly hard', 'http://w3id.org/glosis/model/codelists/consistenceDryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/consistenceDryValueCode-VHA', 'Very hard', 'http://w3id.org/glosis/model/codelists/consistenceDryValueCode');
-- consistenceMoist
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/consistenceMoistValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/consistenceMoistValueCode-EFI', 'Extremely firm', 'http://w3id.org/glosis/model/codelists/consistenceMoistValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/consistenceMoistValueCode-FI', 'Firm', 'http://w3id.org/glosis/model/codelists/consistenceMoistValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/consistenceMoistValueCode-FR', 'Friable', 'http://w3id.org/glosis/model/codelists/consistenceMoistValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/consistenceMoistValueCode-LO', 'Loose', 'http://w3id.org/glosis/model/codelists/consistenceMoistValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/consistenceMoistValueCode-VFI', 'Very firm', 'http://w3id.org/glosis/model/codelists/consistenceMoistValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/consistenceMoistValueCode-VFR', 'Very friable', 'http://w3id.org/glosis/model/codelists/consistenceMoistValueCode');
-- contrast
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/contrastValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/contrastValueCode-D', 'Distinct', 'http://w3id.org/glosis/model/codelists/contrastValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/contrastValueCode-F', 'Faint', 'http://w3id.org/glosis/model/codelists/contrastValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/contrastValueCode-P', 'Prominent', 'http://w3id.org/glosis/model/codelists/contrastValueCode');
-- cracksDepth
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/cracksDepthValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cracksDepthValueCode-D', 'Deep 10–20', 'http://w3id.org/glosis/model/codelists/cracksDepthValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cracksDepthValueCode-M', 'Medium 2–10', 'http://w3id.org/glosis/model/codelists/cracksDepthValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cracksDepthValueCode-S', 'Surface < 2', 'http://w3id.org/glosis/model/codelists/cracksDepthValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cracksDepthValueCode-V', 'Very deep > 20', 'http://w3id.org/glosis/model/codelists/cracksDepthValueCode');
-- cracksDistance
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/cracksDistanceValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cracksDistanceValueCode-C', 'Very closely spaced < 0.2', 'http://w3id.org/glosis/model/codelists/cracksDistanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cracksDistanceValueCode-D', 'Closely spaced 0.2–0.5', 'http://w3id.org/glosis/model/codelists/cracksDistanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cracksDistanceValueCode-M', 'Moderately widely spaced 0.5–2', 'http://w3id.org/glosis/model/codelists/cracksDistanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cracksDistanceValueCode-V', 'Very widely spaced > 5', 'http://w3id.org/glosis/model/codelists/cracksDistanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cracksDistanceValueCode-W', 'Widely spaced 2–5', 'http://w3id.org/glosis/model/codelists/cracksDistanceValueCode');
-- cracksWidth
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/cracksWidthValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cracksWidthValueCode-E', 'Extremely wide > 10cm', 'http://w3id.org/glosis/model/codelists/cracksWidthValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cracksWidthValueCode-F', 'Fine < 1cm', 'http://w3id.org/glosis/model/codelists/cracksWidthValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cracksWidthValueCode-M', 'Medium 1cm–2cm', 'http://w3id.org/glosis/model/codelists/cracksWidthValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cracksWidthValueCode-V', 'Very wide 5cm–10cm', 'http://w3id.org/glosis/model/codelists/cracksWidthValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cracksWidthValueCode-W', 'Wide 2cm–5cm', 'http://w3id.org/glosis/model/codelists/cracksWidthValueCode');
-- cropClass
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/cropClassValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ce', 'Cereals', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ce_Ba', 'Barley', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ce_Ma', 'Maize', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ce_Mi', 'Millet', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ce_Oa', 'Oats', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ce_Pa', 'Rice, paddy', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ce_Ri', 'Rice, dry', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ce_Ry', 'Rye', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ce_So', 'Sorghum', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ce_Wh', 'Wheat', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Fi', 'Fibre crops', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Fi_Co', 'Cotton', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Fi_Ju', 'Jute', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Fo', 'Fodder plants', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Fo_Al', 'Alfalfa', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Fo_Cl', 'Clover', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Fo_Gr', 'Grasses', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Fo_Ha', 'Hay', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Fo_Le', 'Leguminous', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Fo_Ma', 'Maize', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Fo_Pu', 'Pumpkins', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Fr', 'Fruits and melons', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Fr_Ap', 'Apples', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Fr_Ba', 'Bananas', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Fr_Ci', 'Citrus', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Fr_Gr', 'Grapes, Wine, Raisins', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Fr_Ma', 'Mangoes', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Fr_Me', 'Melons', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Lu', 'Semi-luxury foods and tobacco', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Lu_Cc', 'Cocoa', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Lu_Co', 'Coffee', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Lu_Te', 'Tea', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Lu_To', 'Tobacco', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Oi', 'Oilcrops', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Oi_Cc', 'Coconuts', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Oi_Gr', 'Groundnuts', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Oi_Li', 'Linseed', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Oi_Op', 'Oil-palm', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Oi_Ra', 'Rape', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Oi_Se', 'Sesame', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Oi_So', 'Soybeans', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Oi_Su', 'Sunflower', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ol', 'Olives', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ot', 'Other crops', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ot_Pa', 'Palm (fibres, kernels)', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ot_Ru', 'Rubber', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ot_Sc', 'Sugar cane', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Pu', 'Pulses', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Pu_Be', 'Beans', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Pu_Le', 'Lentils', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Pu_Pe', 'Peas', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ro', 'Roots and tubers', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ro_Ca', 'Cassava', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ro_Po', 'Potatoes', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ro_Su', 'Sugar beets', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ro_Ya', 'Yams', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cropClassValueCode-Ve', 'Vegetables', 'http://w3id.org/glosis/model/codelists/cropClassValueCode');
-- bleachedSand
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/bleachedSandValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/bleachedSandValueCode-0', 'Bleached sand of surface coverage 0-2%', 'http://w3id.org/glosis/model/codelists/bleachedSandValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/bleachedSandValueCode-1', 'Bleached sand of surface coverage 2-15%', 'http://w3id.org/glosis/model/codelists/bleachedSandValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/bleachedSandValueCode-2', 'Bleached sand of surface coverage 15-40%', 'http://w3id.org/glosis/model/codelists/bleachedSandValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/bleachedSandValueCode-3', 'Bleached sand of surface coverage  40-80%', 'http://w3id.org/glosis/model/codelists/bleachedSandValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/bleachedSandValueCode-4', 'Bleached sand of surface coverage more than 80%', 'http://w3id.org/glosis/model/codelists/bleachedSandValueCode');
-- erosionActivityPeriod
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/erosionActivityPeriodValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionActivityPeriodValueCode-A', 'Active at present', 'http://w3id.org/glosis/model/codelists/erosionActivityPeriodValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionActivityPeriodValueCode-H', 'Active in historical times', 'http://w3id.org/glosis/model/codelists/erosionActivityPeriodValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionActivityPeriodValueCode-N', 'Period of activity not known', 'http://w3id.org/glosis/model/codelists/erosionActivityPeriodValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionActivityPeriodValueCode-R', 'Active in recent past', 'http://w3id.org/glosis/model/codelists/erosionActivityPeriodValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionActivityPeriodValueCode-X', 'Accelerated and natural erosion not distinguished', 'http://w3id.org/glosis/model/codelists/erosionActivityPeriodValueCode');
-- erosionAreaAffected
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/erosionAreaAffectedValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionAreaAffectedValueCode-0', 'Zero', 'http://w3id.org/glosis/model/codelists/erosionAreaAffectedValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionAreaAffectedValueCode-1', 'Between 0% and 5%', 'http://w3id.org/glosis/model/codelists/erosionAreaAffectedValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionAreaAffectedValueCode-2', 'Between 5% and 10%', 'http://w3id.org/glosis/model/codelists/erosionAreaAffectedValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionAreaAffectedValueCode-3', 'Between 10% and 25%', 'http://w3id.org/glosis/model/codelists/erosionAreaAffectedValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionAreaAffectedValueCode-4', 'Between 25% and 50%', 'http://w3id.org/glosis/model/codelists/erosionAreaAffectedValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionAreaAffectedValueCode-5', 'More than 50%', 'http://w3id.org/glosis/model/codelists/erosionAreaAffectedValueCode');
-- erosionCategory
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/erosionCategoryValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionCategoryValueCode-A', 'Wind (aeolian) erosion or deposition', 'http://w3id.org/glosis/model/codelists/erosionCategoryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionCategoryValueCode-AD', 'Wind deposition', 'http://w3id.org/glosis/model/codelists/erosionCategoryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionCategoryValueCode-AM', 'Wind erosion and deposition', 'http://w3id.org/glosis/model/codelists/erosionCategoryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionCategoryValueCode-AS', 'Shifting sands', 'http://w3id.org/glosis/model/codelists/erosionCategoryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionCategoryValueCode-AZ', 'Salt deposition', 'http://w3id.org/glosis/model/codelists/erosionCategoryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionCategoryValueCode-M', 'Mass movement', 'http://w3id.org/glosis/model/codelists/erosionCategoryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionCategoryValueCode-N', 'No evidence of erosion', 'http://w3id.org/glosis/model/codelists/erosionCategoryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionCategoryValueCode-NK', 'Not known', 'http://w3id.org/glosis/model/codelists/erosionCategoryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionCategoryValueCode-W', 'Water erosion or deposition', 'http://w3id.org/glosis/model/codelists/erosionCategoryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionCategoryValueCode-WA', 'Water and wind erosion', 'http://w3id.org/glosis/model/codelists/erosionCategoryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionCategoryValueCode-WD', 'Deposition by water', 'http://w3id.org/glosis/model/codelists/erosionCategoryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionCategoryValueCode-WG', 'Gully erosion', 'http://w3id.org/glosis/model/codelists/erosionCategoryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionCategoryValueCode-WR', 'Rill erosion', 'http://w3id.org/glosis/model/codelists/erosionCategoryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionCategoryValueCode-WS', 'Sheet erosion', 'http://w3id.org/glosis/model/codelists/erosionCategoryValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionCategoryValueCode-WT', 'Tunnel erosion', 'http://w3id.org/glosis/model/codelists/erosionCategoryValueCode');
-- erosionDegree
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/erosionDegreeValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionDegreeValueCode-E', 'Extreme', 'http://w3id.org/glosis/model/codelists/erosionDegreeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionDegreeValueCode-M', 'Moderate', 'http://w3id.org/glosis/model/codelists/erosionDegreeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionDegreeValueCode-S', 'Slight', 'http://w3id.org/glosis/model/codelists/erosionDegreeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionDegreeValueCode-V', 'Severe', 'http://w3id.org/glosis/model/codelists/erosionDegreeValueCode');
-- erosionTotalAreaAffected
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/erosionTotalAreaAffectedValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionTotalAreaAffectedValueCode-0', 'Zero', 'http://w3id.org/glosis/model/codelists/erosionTotalAreaAffectedValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionTotalAreaAffectedValueCode-1', 'Between 0% and 5%', 'http://w3id.org/glosis/model/codelists/erosionTotalAreaAffectedValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionTotalAreaAffectedValueCode-2', 'Between 5% and 10%', 'http://w3id.org/glosis/model/codelists/erosionTotalAreaAffectedValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionTotalAreaAffectedValueCode-3', 'Between 10% and 25%', 'http://w3id.org/glosis/model/codelists/erosionTotalAreaAffectedValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionTotalAreaAffectedValueCode-4', 'Between 25% and 50%', 'http://w3id.org/glosis/model/codelists/erosionTotalAreaAffectedValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/erosionTotalAreaAffectedValueCode-5', 'More than 50%', 'http://w3id.org/glosis/model/codelists/erosionTotalAreaAffectedValueCode');
-- boundaryClassification
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/boundaryClassificationValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/boundaryClassificationValueCode-C', 'Clear', 'http://w3id.org/glosis/model/codelists/boundaryClassificationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/boundaryClassificationValueCode-D', 'Diffuse', 'http://w3id.org/glosis/model/codelists/boundaryClassificationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/boundaryClassificationValueCode-S', 'Sharp', 'http://w3id.org/glosis/model/codelists/boundaryClassificationValueCode');
-- fragmentCover
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/fragmentCoverValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentCoverValueCode-A', 'Abundant', 'http://w3id.org/glosis/model/codelists/fragmentCoverValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentCoverValueCode-C', 'Common', 'http://w3id.org/glosis/model/codelists/fragmentCoverValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentCoverValueCode-D', 'Dominant', 'http://w3id.org/glosis/model/codelists/fragmentCoverValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentCoverValueCode-F', 'Few', 'http://w3id.org/glosis/model/codelists/fragmentCoverValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentCoverValueCode-M', 'Many', 'http://w3id.org/glosis/model/codelists/fragmentCoverValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentCoverValueCode-N', 'None', 'http://w3id.org/glosis/model/codelists/fragmentCoverValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentCoverValueCode-V', 'Very few', 'http://w3id.org/glosis/model/codelists/fragmentCoverValueCode');
-- fragmentsClass
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/fragmentsClassValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentsClassValueCode-FGF1', 'FragmentsGravimetricFraction01', 'http://w3id.org/glosis/model/codelists/fragmentsClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentsClassValueCode-FGF2', 'FragmentsGravimetricFraction02', 'http://w3id.org/glosis/model/codelists/fragmentsClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentsClassValueCode-FGF3', 'FragmentsGravimetricFraction03', 'http://w3id.org/glosis/model/codelists/fragmentsClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentsClassValueCode-FGF4', 'FragmentsGravimetricFraction04', 'http://w3id.org/glosis/model/codelists/fragmentsClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentsClassValueCode-FGT', 'FragmentsGravimetricTotal', 'http://w3id.org/glosis/model/codelists/fragmentsClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentsClassValueCode-FV1', 'FragmentsVolumetric01', 'http://w3id.org/glosis/model/codelists/fragmentsClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentsClassValueCode-FV2', 'FragmentsVolumetric02', 'http://w3id.org/glosis/model/codelists/fragmentsClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentsClassValueCode-FV3', 'FragmentsVolumetric03', 'http://w3id.org/glosis/model/codelists/fragmentsClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentsClassValueCode-FVE', 'FragmentsVolumetricEstimate', 'http://w3id.org/glosis/model/codelists/fragmentsClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentsClassValueCode-FVT', 'FragmentsVolumetricTotal', 'http://w3id.org/glosis/model/codelists/fragmentsClassValueCode');
-- fragmentsSize
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/fragmentsSizeValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentsSizeValueCode-B', 'Boulders', 'http://w3id.org/glosis/model/codelists/fragmentsSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentsSizeValueCode-C', 'Coarse gravel', 'http://w3id.org/glosis/model/codelists/fragmentsSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentsSizeValueCode-F', 'Fine gravel', 'http://w3id.org/glosis/model/codelists/fragmentsSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentsSizeValueCode-L', 'Large boulders', 'http://w3id.org/glosis/model/codelists/fragmentsSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentsSizeValueCode-M', 'Medium gravel', 'http://w3id.org/glosis/model/codelists/fragmentsSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/fragmentsSizeValueCode-S', 'Stones', 'http://w3id.org/glosis/model/codelists/fragmentsSizeValueCode');
-- gypsumContent
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/gypsumContentValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/gypsumContentValueCode-EX', 'Extremely gypsiric', 'http://w3id.org/glosis/model/codelists/gypsumContentValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/gypsumContentValueCode-MO', 'Moderately gypsiric', 'http://w3id.org/glosis/model/codelists/gypsumContentValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/gypsumContentValueCode-N', 'Non-gypsiric', 'http://w3id.org/glosis/model/codelists/gypsumContentValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/gypsumContentValueCode-SL', 'Slightly gypsiric', 'http://w3id.org/glosis/model/codelists/gypsumContentValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/gypsumContentValueCode-ST', 'Strongly gypsiric', 'http://w3id.org/glosis/model/codelists/gypsumContentValueCode');
-- gypsumForms
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/gypsumFormsValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/gypsumFormsValueCode-D', 'disperse powdery gypsum', 'http://w3id.org/glosis/model/codelists/gypsumFormsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/gypsumFormsValueCode-G', 'gazha', 'http://w3id.org/glosis/model/codelists/gypsumFormsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/gypsumFormsValueCode-HL', 'hard cemented layer or layers of gypsum', 'http://w3id.org/glosis/model/codelists/gypsumFormsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/gypsumFormsValueCode-SC', 'soft concretions', 'http://w3id.org/glosis/model/codelists/gypsumFormsValueCode');
-- boundaryDistinctness
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/boundaryDistinctnessValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/boundaryDistinctnessValueCode-A', 'Abrupt', 'http://w3id.org/glosis/model/codelists/boundaryDistinctnessValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/boundaryDistinctnessValueCode-C', 'Clear', 'http://w3id.org/glosis/model/codelists/boundaryDistinctnessValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/boundaryDistinctnessValueCode-D', 'Diffuse', 'http://w3id.org/glosis/model/codelists/boundaryDistinctnessValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/boundaryDistinctnessValueCode-G', 'Gradual', 'http://w3id.org/glosis/model/codelists/boundaryDistinctnessValueCode');
-- humanInfluenceClass
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-AC', 'Archaeological (burial mound, midden)', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-AD', 'Artificial drainage', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-BP', 'Borrow pit', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-BR', 'Burning', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-BU', 'Bunding', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-CL', 'Clearing', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-CR', 'Impact crater', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-DU', 'Dump (not specified)', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-FE', 'Application of fertilizers', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-IB', 'Border irrigation', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-ID', 'Drip irrigation', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-IF', 'Furrow irrigation', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-IP', 'Flood irrigation', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-IS', 'Sprinkler irrigation', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-IU', 'Irrigation (not specified)', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-LF', 'Landfill (also sanitary)', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-LV', 'Levelling', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-ME', 'Raised beds (engineering purposes)', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-MI', 'Mine (surface, including openpit, gravel and quarries)', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-MO', 'Organic additions (not specified)', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-MP', 'Plaggen', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-MR', 'Raised beds (agricultural purposes)', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-MS', 'Sand additions', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-MU', 'Mineral additions (not specified)', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-N', 'No influence', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-NK', 'Not known', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-PL', 'Ploughing', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-PO', 'Pollution', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-SA', 'Scalped area', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-SC', 'Surface compaction', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-TE', 'Terracing', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-VE', 'Vegetation strongly disturbed', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-VM', 'Vegetation moderately disturbed', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-VS', 'Vegetation slightly disturbed', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode-VU', 'Vegetation disturbed (not specified)', 'http://w3id.org/glosis/model/codelists/humanInfluenceClassValueCode');
-- landUseClass
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/landUseClassValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-A', 'Crop agriculture (cropping)', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-AA', 'Annual field cropping', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-AA1', 'Shifting cultivation', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-AA2', 'Fallow system cultivation', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-AA3', 'Ley system cultivation', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-AA4', 'Rainfed arable cultivation', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-AA5', 'Wet rice cultivation', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-AA6', 'Irrigated cultivation', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-AP', 'Perennial field cropping', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-AP1', 'Non-irrigated cultivation', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-AP2', 'Irrigated cultivation', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-AT', 'Tree and shrub cropping', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-AT1', 'Non-irrigated tree crop cultivation', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-AT2', 'Irrigated tree crop cultivation', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-AT3', 'Non-irrigated shrub crop cultivation', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-AT4', 'Irrigated shrub crop cultivation', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-F', 'F = Forestry', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-FN', 'Natural forest and woodland', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-FN1', 'Selective felling', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-FN2', 'Clear felling', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-FP', 'Plantation forestry', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-H', 'Animal husbandry', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-HE', 'Extensive grazing', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-HE1', 'Nomadism', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-HE2', 'Semi-nomadism', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-HE3', 'Ranching', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-HI', 'Intensive grazing', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-HI1', 'Animal production', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-HI2', 'Dairying', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-M', 'M = Mixed farming', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-MF', 'Agroforestry', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-MP', 'Agropastoralism', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-Oi', 'Other land uses', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-P', 'P = Nature protection', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-PD', 'Degradation control', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-PD1', 'Without interference', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-PD2', 'With interference', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-PN', 'Nature and game preservation', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-PN1', 'Reserves', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-PN2', 'Parks', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-PN3', 'Wildlife management', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-S', 'S = Settlement, industry', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-SC', 'Recreational use', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-SD', 'Disposal sites', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-SI', 'Industrial use', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-SR', 'Residential use', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-ST', 'Transport', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-SX', 'Excavations', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-U', 'Not used and not managed', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landUseClassValueCode-Y', 'Military area', 'http://w3id.org/glosis/model/codelists/landUseClassValueCode');
-- boundaryTopography
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/boundaryTopographyValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/boundaryTopographyValueCode-B', 'Broken', 'http://w3id.org/glosis/model/codelists/boundaryTopographyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/boundaryTopographyValueCode-I', 'Irregular', 'http://w3id.org/glosis/model/codelists/boundaryTopographyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/boundaryTopographyValueCode-S', 'Smooth', 'http://w3id.org/glosis/model/codelists/boundaryTopographyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/boundaryTopographyValueCode-W', 'Wavy', 'http://w3id.org/glosis/model/codelists/boundaryTopographyValueCode');
-- landformComplex
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/landformComplexValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landformComplexValueCode-CU', 'Cuesta-shaped', 'http://w3id.org/glosis/model/codelists/landformComplexValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landformComplexValueCode-DO', 'Dome-shaped', 'http://w3id.org/glosis/model/codelists/landformComplexValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landformComplexValueCode-DU', 'Dune-shaped', 'http://w3id.org/glosis/model/codelists/landformComplexValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landformComplexValueCode-IM', 'With intermontane plains (occupying > 15%)', 'http://w3id.org/glosis/model/codelists/landformComplexValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landformComplexValueCode-IN', 'Inselberg covered (occupying > 1% of level land)', 'http://w3id.org/glosis/model/codelists/landformComplexValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landformComplexValueCode-KA', 'Strong karst', 'http://w3id.org/glosis/model/codelists/landformComplexValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landformComplexValueCode-RI', 'Ridged', 'http://w3id.org/glosis/model/codelists/landformComplexValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landformComplexValueCode-TE', 'Terraced', 'http://w3id.org/glosis/model/codelists/landformComplexValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/landformComplexValueCode-WE', 'With wetlands (occupying > 15%)', 'http://w3id.org/glosis/model/codelists/landformComplexValueCode');
-- bulkDensityMineral
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/bulkDensityMineralValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/bulkDensityMineralValueCode-BD1', 'Many pores, moist materials drop easily out of the auger.', 'http://w3id.org/glosis/model/codelists/bulkDensityMineralValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/bulkDensityMineralValueCode-BD2', 'Sample disintegrates into numerous fragments after application of weak pressure.', 'http://w3id.org/glosis/model/codelists/bulkDensityMineralValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/bulkDensityMineralValueCode-BD3', 'Knife can be pushed into the moist soil with weak pressure, sample disintegrates into few fragments, which may be further divided.', 'http://w3id.org/glosis/model/codelists/bulkDensityMineralValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/bulkDensityMineralValueCode-BD4', 'Knife penetrates only 1–2 cm into the moist soil, some effort required, sample disintegrates into few fragments, which cannot be subdivided further.', 'http://w3id.org/glosis/model/codelists/bulkDensityMineralValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/bulkDensityMineralValueCode-BD5', 'Very large pressure necessary to force knife into the soil, no further disintegration of sample.', 'http://w3id.org/glosis/model/codelists/bulkDensityMineralValueCode');
-- lithology
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/lithologyValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-I', 'igneous rock', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-IA', 'acid igneous', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-IA1', 'diorite', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-IA2', 'grano-diorite', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-IA3', 'quartz-diorite', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-IA4', 'rhyolite', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-IB', 'basic igneous', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-IB1', 'gabbro', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-IB2', 'basalt', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-IB3', 'dolerite', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-II', 'intermediate igneous', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-II1', 'andesite, trachyte, phonolite', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-II2', 'diorite-syenite', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-IP', 'pyroclastic', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-IP1', 'tuff, tuffite', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-IP2', 'volcanic scoria/breccia', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-IP3', 'volcanic ash', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-IP4', 'ignimbrite', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-IU', 'ultrabasic igneous', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-IU1', 'peridotite', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-IU2', 'pyroxenite', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-IU3', 'ilmenite, magnetite, ironstone, serpentine', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-M', 'metamorphic rock', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-MA', 'acid metamorphic', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-MA1', 'quartzite', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-MA2', 'gneiss, migmatite', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-MA3', 'slate, phyllite (pelitic rocks)', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-MA4', 'schist', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-MB', 'basic metamorphic', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-MB1', 'slate, phyllite (pelitic rocks)', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-MB2', '(green)schist', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-MB3', 'gneiss rich in Fe–Mg minerals', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-MB4', 'metamorphic limestone (marble)', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-MB5', 'amphibolite', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-MB6', 'eclogite', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-MU', 'ultrabasic metamorphic', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-MU1', 'serpentinite, greenstone', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-S', 'sedimentary rock (consolidated)', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-SC', 'clastic sediments', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-SC1', 'conglomerate, breccia', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-SC2', 'sandstone, greywacke, arkose', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-SC3', 'silt-, mud-, claystone', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-SC4', 'shale', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-SC5', 'ironstone', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-SE', 'evaporites', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-SE1', 'anhydrite, gypsum', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-SE2', 'halite', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-SO', 'carbonatic, organic', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-SO1', 'limestone, other carbonate rock', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-SO2', 'marl and other mixtures', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-SO3', 'coals, bitumen and related rocks', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-U', 'sedimentary rock (unconsolidated)', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UA', 'anthropogenic/technogenic', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UA1', 'redeposited natural material', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UA2', 'industrial/artisanal deposits', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UC', 'colluvial', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UC1', 'slope deposits', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UC2', 'lahar', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UE', 'eolian', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UE1', 'loess', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UE2', 'sand', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UF', 'fluvial', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UF1', 'sand and gravel', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UF2', 'clay, silt and loam', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UG', 'glacial', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UG1', 'moraine', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UG2', 'UG2 glacio-fluvial sand', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UG3', 'UG3 glacio-fluvial gravel', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UK', 'kryogenic', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UK1', 'periglacial rock debris', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UK2', 'periglacial solifluction layer', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UL', 'lacustrine', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UL1', 'sand', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UL2', 'silt and clay', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UM', 'marine, estuarine', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UM1', 'sand', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UM2', 'clay and silt', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UO', 'organic', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UO1', 'rainwater-fed moor peat', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UO2', 'groundwater-fed bog peat', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UR', 'weathered residuum', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UR1', 'bauxite, laterite', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UU', 'unspecified deposits', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UU1', 'clay', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UU2', 'loam and silt', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UU3', 'sand', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UU4', 'gravelly sand', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/lithologyValueCode-UU5', 'gravel, broken rock', 'http://w3id.org/glosis/model/codelists/lithologyValueCode');
-- bulkDensityPeat
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/bulkDensityPeatValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/bulkDensityPeatValueCode-BD1', 'Very low', 'http://w3id.org/glosis/model/codelists/bulkDensityPeatValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/bulkDensityPeatValueCode-BD2', 'Low', 'http://w3id.org/glosis/model/codelists/bulkDensityPeatValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/bulkDensityPeatValueCode-BD3', 'Moderate low', 'http://w3id.org/glosis/model/codelists/bulkDensityPeatValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/bulkDensityPeatValueCode-BD4', 'Moderate high', 'http://w3id.org/glosis/model/codelists/bulkDensityPeatValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/bulkDensityPeatValueCode-BD5', 'Strong (hemic)', 'http://w3id.org/glosis/model/codelists/bulkDensityPeatValueCode');
-- majorLandForm
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/majorLandFormValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/majorLandFormValueCode-L', 'level land', 'http://w3id.org/glosis/model/codelists/majorLandFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/majorLandFormValueCode-LD', 'depression', 'http://w3id.org/glosis/model/codelists/majorLandFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/majorLandFormValueCode-LL', 'plateau', 'http://w3id.org/glosis/model/codelists/majorLandFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/majorLandFormValueCode-LP', 'plain', 'http://w3id.org/glosis/model/codelists/majorLandFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/majorLandFormValueCode-LV', 'valley floor', 'http://w3id.org/glosis/model/codelists/majorLandFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/majorLandFormValueCode-S', 'sloping land', 'http://w3id.org/glosis/model/codelists/majorLandFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/majorLandFormValueCode-SE', 'medium-gradient escarpment zone', 'http://w3id.org/glosis/model/codelists/majorLandFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/majorLandFormValueCode-SH', 'medium-gradient hill', 'http://w3id.org/glosis/model/codelists/majorLandFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/majorLandFormValueCode-SM', 'medium-gradient mountain', 'http://w3id.org/glosis/model/codelists/majorLandFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/majorLandFormValueCode-SP', 'dissected plain', 'http://w3id.org/glosis/model/codelists/majorLandFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/majorLandFormValueCode-SV', 'medium-gradient valley', 'http://w3id.org/glosis/model/codelists/majorLandFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/majorLandFormValueCode-T', 'steep land', 'http://w3id.org/glosis/model/codelists/majorLandFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/majorLandFormValueCode-TE', 'high-gradient escarpment zone', 'http://w3id.org/glosis/model/codelists/majorLandFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/majorLandFormValueCode-TH', 'high-gradient hill', 'http://w3id.org/glosis/model/codelists/majorLandFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/majorLandFormValueCode-TM', 'high-gradient mountain', 'http://w3id.org/glosis/model/codelists/majorLandFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/majorLandFormValueCode-TV', 'high-gradient valley', 'http://w3id.org/glosis/model/codelists/majorLandFormValueCode');
-- mineralConcColour
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/mineralConcColourValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcColourValueCode-BB', 'Bluish-black', 'http://w3id.org/glosis/model/codelists/mineralConcColourValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcColourValueCode-BL', 'Black', 'http://w3id.org/glosis/model/codelists/mineralConcColourValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcColourValueCode-BR', 'Brown', 'http://w3id.org/glosis/model/codelists/mineralConcColourValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcColourValueCode-BS', 'Brownish', 'http://w3id.org/glosis/model/codelists/mineralConcColourValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcColourValueCode-BU', 'Blue', 'http://w3id.org/glosis/model/codelists/mineralConcColourValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcColourValueCode-GE', 'Greenish', 'http://w3id.org/glosis/model/codelists/mineralConcColourValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcColourValueCode-GR', 'Grey', 'http://w3id.org/glosis/model/codelists/mineralConcColourValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcColourValueCode-GS', 'Greyish', 'http://w3id.org/glosis/model/codelists/mineralConcColourValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcColourValueCode-MC', 'Multicoloured', 'http://w3id.org/glosis/model/codelists/mineralConcColourValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcColourValueCode-RB', 'Reddish brown', 'http://w3id.org/glosis/model/codelists/mineralConcColourValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcColourValueCode-RE', 'Red', 'http://w3id.org/glosis/model/codelists/mineralConcColourValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcColourValueCode-RS', 'Reddish', 'http://w3id.org/glosis/model/codelists/mineralConcColourValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcColourValueCode-RY', 'Reddish yellow', 'http://w3id.org/glosis/model/codelists/mineralConcColourValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcColourValueCode-WH', 'White', 'http://w3id.org/glosis/model/codelists/mineralConcColourValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcColourValueCode-YB', 'Yellowish brown', 'http://w3id.org/glosis/model/codelists/mineralConcColourValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcColourValueCode-YE', 'Yellow', 'http://w3id.org/glosis/model/codelists/mineralConcColourValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcColourValueCode-YR', 'Yellowish red', 'http://w3id.org/glosis/model/codelists/mineralConcColourValueCode');
-- carbonatesContent
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/carbonatesContentValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/carbonatesContentValueCode-EX', 'Extremely calcareous', 'http://w3id.org/glosis/model/codelists/carbonatesContentValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/carbonatesContentValueCode-MO', 'Moderately calcareous', 'http://w3id.org/glosis/model/codelists/carbonatesContentValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/carbonatesContentValueCode-N', 'Non-calcareous', 'http://w3id.org/glosis/model/codelists/carbonatesContentValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/carbonatesContentValueCode-SL', 'Slightly calcareous', 'http://w3id.org/glosis/model/codelists/carbonatesContentValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/carbonatesContentValueCode-ST', 'Strongly calcareous', 'http://w3id.org/glosis/model/codelists/carbonatesContentValueCode');
-- mineralConcHardness
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/mineralConcHardnessValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcHardnessValueCode-B', 'Both hard and soft.', 'http://w3id.org/glosis/model/codelists/mineralConcHardnessValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcHardnessValueCode-H', 'Hard', 'http://w3id.org/glosis/model/codelists/mineralConcHardnessValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcHardnessValueCode-S', 'Soft', 'http://w3id.org/glosis/model/codelists/mineralConcHardnessValueCode');
-- mineralConcKind
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/mineralConcKindValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcKindValueCode-C', 'Concretion', 'http://w3id.org/glosis/model/codelists/mineralConcKindValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcKindValueCode-IC', 'Crack infillings', 'http://w3id.org/glosis/model/codelists/mineralConcKindValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcKindValueCode-IP', 'Pore infillings', 'http://w3id.org/glosis/model/codelists/mineralConcKindValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcKindValueCode-N', 'Nodule', 'http://w3id.org/glosis/model/codelists/mineralConcKindValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcKindValueCode-O', 'Other', 'http://w3id.org/glosis/model/codelists/mineralConcKindValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcKindValueCode-R', 'Residual rock fragment', 'http://w3id.org/glosis/model/codelists/mineralConcKindValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcKindValueCode-S', 'Soft segregation (or soft accumulation)', 'http://w3id.org/glosis/model/codelists/mineralConcKindValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcKindValueCode-SC', 'Soft concretion', 'http://w3id.org/glosis/model/codelists/mineralConcKindValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcKindValueCode-T', 'Crystal', 'http://w3id.org/glosis/model/codelists/mineralConcKindValueCode');
-- mineralConcNature
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode-C', 'Clay (argillaceous)', 'http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode-CS', 'Clay–sesquioxides', 'http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode-F', 'Iron (ferruginous)', 'http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode-FM', 'Iron–manganese (sesquioxides)', 'http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode-GB', 'Gibbsite', 'http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode-GY', 'Gypsum (gypsiferous)', 'http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode-JA', 'Jarosite', 'http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode-K', 'Carbonates (calcareous)', 'http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode-KQ', 'Carbonates–silica', 'http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode-M', 'Manganese (manganiferous)', 'http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode-NK', 'Not known', 'http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode-Q', 'Silica (siliceous)', 'http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode-S', 'Sulphur (sulphurous)', 'http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode-SA', 'Salt (saline)', 'http://w3id.org/glosis/model/codelists/mineralConcNatureValueCode');
-- mineralConcShape
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/mineralConcShapeValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcShapeValueCode-A', 'Angular', 'http://w3id.org/glosis/model/codelists/mineralConcShapeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcShapeValueCode-E', 'Elongated', 'http://w3id.org/glosis/model/codelists/mineralConcShapeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcShapeValueCode-F', 'Flat', 'http://w3id.org/glosis/model/codelists/mineralConcShapeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcShapeValueCode-I', 'Irregular', 'http://w3id.org/glosis/model/codelists/mineralConcShapeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcShapeValueCode-R', 'Rounded (spherical)', 'http://w3id.org/glosis/model/codelists/mineralConcShapeValueCode');
-- mineralConcSize
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/mineralConcSizeValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcSizeValueCode-C', 'Coarse', 'http://w3id.org/glosis/model/codelists/mineralConcSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcSizeValueCode-F', 'Fine', 'http://w3id.org/glosis/model/codelists/mineralConcSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcSizeValueCode-M', 'Medium', 'http://w3id.org/glosis/model/codelists/mineralConcSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcSizeValueCode-V', 'Very fine', 'http://w3id.org/glosis/model/codelists/mineralConcSizeValueCode');
-- mineralConcVolume
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/mineralConcVolumeValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcVolumeValueCode-A', 'Abundant', 'http://w3id.org/glosis/model/codelists/mineralConcVolumeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcVolumeValueCode-C', 'Common', 'http://w3id.org/glosis/model/codelists/mineralConcVolumeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcVolumeValueCode-D', 'Dominant', 'http://w3id.org/glosis/model/codelists/mineralConcVolumeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcVolumeValueCode-F', 'Few', 'http://w3id.org/glosis/model/codelists/mineralConcVolumeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcVolumeValueCode-M', 'Many', 'http://w3id.org/glosis/model/codelists/mineralConcVolumeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcVolumeValueCode-N', 'None', 'http://w3id.org/glosis/model/codelists/mineralConcVolumeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralConcVolumeValueCode-V', 'Very few', 'http://w3id.org/glosis/model/codelists/mineralConcVolumeValueCode');
-- mineralFragments
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/mineralFragmentsValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralFragmentsValueCode-FE', 'Feldspar', 'http://w3id.org/glosis/model/codelists/mineralFragmentsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralFragmentsValueCode-MI', 'Mica', 'http://w3id.org/glosis/model/codelists/mineralFragmentsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mineralFragmentsValueCode-QU', 'Quartz', 'http://w3id.org/glosis/model/codelists/mineralFragmentsValueCode');
-- mottlesAbundance
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/mottlesAbundanceValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mottlesAbundanceValueCode-A', 'Abundant', 'http://w3id.org/glosis/model/codelists/mottlesAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mottlesAbundanceValueCode-C', 'Common', 'http://w3id.org/glosis/model/codelists/mottlesAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mottlesAbundanceValueCode-F', 'Few', 'http://w3id.org/glosis/model/codelists/mottlesAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mottlesAbundanceValueCode-M', 'Many', 'http://w3id.org/glosis/model/codelists/mottlesAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mottlesAbundanceValueCode-N', 'None', 'http://w3id.org/glosis/model/codelists/mottlesAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mottlesAbundanceValueCode-V', 'Very few', 'http://w3id.org/glosis/model/codelists/mottlesAbundanceValueCode');
-- carbonatesForms
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/carbonatesFormsValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/carbonatesFormsValueCode-D', 'disperse powdery lime', 'http://w3id.org/glosis/model/codelists/carbonatesFormsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/carbonatesFormsValueCode-HC', 'hard concretions', 'http://w3id.org/glosis/model/codelists/carbonatesFormsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/carbonatesFormsValueCode-HHC', 'hard hollow concretions', 'http://w3id.org/glosis/model/codelists/carbonatesFormsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/carbonatesFormsValueCode-HL', 'hard cemented layer or layers of carbonates (less than 10 cm thick)', 'http://w3id.org/glosis/model/codelists/carbonatesFormsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/carbonatesFormsValueCode-M', 'marl layer', 'http://w3id.org/glosis/model/codelists/carbonatesFormsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/carbonatesFormsValueCode-PM', 'pseudomycelia* (carbonate infillings in pores, resembling mycelia)', 'http://w3id.org/glosis/model/codelists/carbonatesFormsValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/carbonatesFormsValueCode-SC', 'soft concretions', 'http://w3id.org/glosis/model/codelists/carbonatesFormsValueCode');
-- mottlesSize
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/mottlesSizeValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mottlesSizeValueCode-A', 'Coarse', 'http://w3id.org/glosis/model/codelists/mottlesSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mottlesSizeValueCode-F', 'F Fine', 'http://w3id.org/glosis/model/codelists/mottlesSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mottlesSizeValueCode-M', 'M Medium', 'http://w3id.org/glosis/model/codelists/mottlesSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/mottlesSizeValueCode-V', 'Very fine', 'http://w3id.org/glosis/model/codelists/mottlesSizeValueCode');
-- peatDecompostion
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/peatDecompostionValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatDecompostionValueCode-D1', 'very low', 'http://w3id.org/glosis/model/codelists/peatDecompostionValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatDecompostionValueCode-D2', 'low', 'http://w3id.org/glosis/model/codelists/peatDecompostionValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatDecompostionValueCode-D3', 'moderate', 'http://w3id.org/glosis/model/codelists/peatDecompostionValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatDecompostionValueCode-D4', 'strong', 'http://w3id.org/glosis/model/codelists/peatDecompostionValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatDecompostionValueCode-D5.1', 'moderately strong', 'http://w3id.org/glosis/model/codelists/peatDecompostionValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatDecompostionValueCode-D5.2', 'very strong', 'http://w3id.org/glosis/model/codelists/peatDecompostionValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatDecompostionValueCode-Fibric', 'Fibric', 'http://w3id.org/glosis/model/codelists/peatDecompostionValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatDecompostionValueCode-Hemic', 'Hemic', 'http://w3id.org/glosis/model/codelists/peatDecompostionValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatDecompostionValueCode-Sapric', 'Sapric', 'http://w3id.org/glosis/model/codelists/peatDecompostionValueCode');
-- peatDrainage
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/peatDrainageValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatDrainageValueCode-DC1', 'Undrained', 'http://w3id.org/glosis/model/codelists/peatDrainageValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatDrainageValueCode-DC2', 'Weakly drained', 'http://w3id.org/glosis/model/codelists/peatDrainageValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatDrainageValueCode-DC3', 'Moderately drained', 'http://w3id.org/glosis/model/codelists/peatDrainageValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatDrainageValueCode-DC4', 'Well drained', 'http://w3id.org/glosis/model/codelists/peatDrainageValueCode');
-- peatVolume
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/peatVolumeValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatVolumeValueCode-SV1', 'Less than 3%', 'http://w3id.org/glosis/model/codelists/peatVolumeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatVolumeValueCode-SV2', 'Between 3% and 5%', 'http://w3id.org/glosis/model/codelists/peatVolumeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatVolumeValueCode-SV3', 'Between 5% and 8%', 'http://w3id.org/glosis/model/codelists/peatVolumeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatVolumeValueCode-SV4', 'Between 8% and 12%', 'http://w3id.org/glosis/model/codelists/peatVolumeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/peatVolumeValueCode-SV5', 'More than or equal to 12 %', 'http://w3id.org/glosis/model/codelists/peatVolumeValueCode');
-- cementationContinuity
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/cementationContinuityValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationContinuityValueCode-B', 'Broken', 'http://w3id.org/glosis/model/codelists/cementationContinuityValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationContinuityValueCode-C', 'Continuous', 'http://w3id.org/glosis/model/codelists/cementationContinuityValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationContinuityValueCode-D', 'Discontinuous', 'http://w3id.org/glosis/model/codelists/cementationContinuityValueCode');
-- biologicalAbundance
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/biologicalAbundanceValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalAbundanceValueCode-C', 'Common', 'http://w3id.org/glosis/model/codelists/biologicalAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalAbundanceValueCode-F', 'Few', 'http://w3id.org/glosis/model/codelists/biologicalAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalAbundanceValueCode-M', 'Many', 'http://w3id.org/glosis/model/codelists/biologicalAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/biologicalAbundanceValueCode-N', 'None', 'http://w3id.org/glosis/model/codelists/biologicalAbundanceValueCode');
-- cementationDegree
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/cementationDegreeValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationDegreeValueCode-C', 'Cemented', 'http://w3id.org/glosis/model/codelists/cementationDegreeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationDegreeValueCode-I', 'Indurated', 'http://w3id.org/glosis/model/codelists/cementationDegreeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationDegreeValueCode-M', 'Moderately cemented', 'http://w3id.org/glosis/model/codelists/cementationDegreeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationDegreeValueCode-N', 'Non-cemented and non-compacted', 'http://w3id.org/glosis/model/codelists/cementationDegreeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationDegreeValueCode-W', 'Weakly cemented', 'http://w3id.org/glosis/model/codelists/cementationDegreeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationDegreeValueCode-Y', 'Compacted but non-cemented', 'http://w3id.org/glosis/model/codelists/cementationDegreeValueCode');
-- physiography
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/physiographyValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/physiographyValueCode-BOdl', 'Bottom (drainage line)', 'http://w3id.org/glosis/model/codelists/physiographyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/physiographyValueCode-BOf', 'Bottom (flat)', 'http://w3id.org/glosis/model/codelists/physiographyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/physiographyValueCode-CR', 'Crest (summit)', 'http://w3id.org/glosis/model/codelists/physiographyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/physiographyValueCode-HI', 'Higher part (rise)', 'http://w3id.org/glosis/model/codelists/physiographyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/physiographyValueCode-IN', 'Intermediate part (talf)', 'http://w3id.org/glosis/model/codelists/physiographyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/physiographyValueCode-LO', 'Lower part (and dip)', 'http://w3id.org/glosis/model/codelists/physiographyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/physiographyValueCode-LS', 'Lower slope (foot slope)', 'http://w3id.org/glosis/model/codelists/physiographyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/physiographyValueCode-MS', 'Middle slope (back slope)', 'http://w3id.org/glosis/model/codelists/physiographyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/physiographyValueCode-TS', 'Toe slope', 'http://w3id.org/glosis/model/codelists/physiographyValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/physiographyValueCode-UP', 'Upper slope (shoulder)', 'http://w3id.org/glosis/model/codelists/physiographyValueCode');
-- plasticity
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/plasticityValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/plasticityValueCode-NPL', 'Non-plastic', 'http://w3id.org/glosis/model/codelists/plasticityValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/plasticityValueCode-PL', 'Plastic', 'http://w3id.org/glosis/model/codelists/plasticityValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/plasticityValueCode-PVP', 'plastic to very plastic', 'http://w3id.org/glosis/model/codelists/plasticityValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/plasticityValueCode-SPL', 'Slightly plastic', 'http://w3id.org/glosis/model/codelists/plasticityValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/plasticityValueCode-SPP', 'slightly plastic to plastic', 'http://w3id.org/glosis/model/codelists/plasticityValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/plasticityValueCode-VPL', 'Very plastic', 'http://w3id.org/glosis/model/codelists/plasticityValueCode');
-- poresAbundance
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/poresAbundanceValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/poresAbundanceValueCode-C', 'Common', 'http://w3id.org/glosis/model/codelists/poresAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/poresAbundanceValueCode-F', 'Few', 'http://w3id.org/glosis/model/codelists/poresAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/poresAbundanceValueCode-M', 'Many', 'http://w3id.org/glosis/model/codelists/poresAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/poresAbundanceValueCode-N', 'None', 'http://w3id.org/glosis/model/codelists/poresAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/poresAbundanceValueCode-V', 'Very few', 'http://w3id.org/glosis/model/codelists/poresAbundanceValueCode');
-- porosityClass
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/porosityClassValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/porosityClassValueCode-1', 'Very low', 'http://w3id.org/glosis/model/codelists/porosityClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/porosityClassValueCode-2', 'Low', 'http://w3id.org/glosis/model/codelists/porosityClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/porosityClassValueCode-3', 'Medium', 'http://w3id.org/glosis/model/codelists/porosityClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/porosityClassValueCode-4', 'High', 'http://w3id.org/glosis/model/codelists/porosityClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/porosityClassValueCode-5', 'Very high', 'http://w3id.org/glosis/model/codelists/porosityClassValueCode');
-- profileDescriptionStatus
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode-1', 'Reference profile description', 'http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode-1.1', 'Reference profile description - no sampling', 'http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode-2', 'Routine profile description', 'http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode-2.1', 'Routine profile description - no sampling', 'http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode-3', 'Incomplete description', 'http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode-3.1', 'Incomplete description - no sampling', 'http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode-4', 'Soil augering description', 'http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode-4.1', 'Soil augering description - no sampling', 'http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode-5', 'Other descriptions', 'http://w3id.org/glosis/model/codelists/profileDescriptionStatusValueCode');
-- rockAbundance
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/rockAbundanceValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockAbundanceValueCode-A', 'Abundant', 'http://w3id.org/glosis/model/codelists/rockAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockAbundanceValueCode-C', 'Common', 'http://w3id.org/glosis/model/codelists/rockAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockAbundanceValueCode-D', 'Dominant', 'http://w3id.org/glosis/model/codelists/rockAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockAbundanceValueCode-F', 'Few', 'http://w3id.org/glosis/model/codelists/rockAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockAbundanceValueCode-M', 'Many', 'http://w3id.org/glosis/model/codelists/rockAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockAbundanceValueCode-N', 'None', 'http://w3id.org/glosis/model/codelists/rockAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockAbundanceValueCode-S', 'Stone line', 'http://w3id.org/glosis/model/codelists/rockAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockAbundanceValueCode-V', 'Very few', 'http://w3id.org/glosis/model/codelists/rockAbundanceValueCode');
-- rockOutcropsCover
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/rockOutcropsCoverValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockOutcropsCoverValueCode-A', 'Abundant', 'http://w3id.org/glosis/model/codelists/rockOutcropsCoverValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockOutcropsCoverValueCode-C', 'Common', 'http://w3id.org/glosis/model/codelists/rockOutcropsCoverValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockOutcropsCoverValueCode-D', 'Dominant', 'http://w3id.org/glosis/model/codelists/rockOutcropsCoverValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockOutcropsCoverValueCode-F', 'Few', 'http://w3id.org/glosis/model/codelists/rockOutcropsCoverValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockOutcropsCoverValueCode-M', 'Many', 'http://w3id.org/glosis/model/codelists/rockOutcropsCoverValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockOutcropsCoverValueCode-N', 'None', 'http://w3id.org/glosis/model/codelists/rockOutcropsCoverValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockOutcropsCoverValueCode-V', 'Very few', 'http://w3id.org/glosis/model/codelists/rockOutcropsCoverValueCode');
-- rockOutcropsDistance
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/rockOutcropsDistanceValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockOutcropsDistanceValueCode-1', 'More than 50m', 'http://w3id.org/glosis/model/codelists/rockOutcropsDistanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockOutcropsDistanceValueCode-2', 'Between 20m and 50m', 'http://w3id.org/glosis/model/codelists/rockOutcropsDistanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockOutcropsDistanceValueCode-3', 'Between 5m and 20m', 'http://w3id.org/glosis/model/codelists/rockOutcropsDistanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockOutcropsDistanceValueCode-4', 'Between 2m and 5m', 'http://w3id.org/glosis/model/codelists/rockOutcropsDistanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockOutcropsDistanceValueCode-5', 'Less than 2', 'http://w3id.org/glosis/model/codelists/rockOutcropsDistanceValueCode');
-- rockShape
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/rockShapeValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockShapeValueCode-A', 'Angular', 'http://w3id.org/glosis/model/codelists/rockShapeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockShapeValueCode-F', 'Flat', 'http://w3id.org/glosis/model/codelists/rockShapeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockShapeValueCode-R', 'Rounded', 'http://w3id.org/glosis/model/codelists/rockShapeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockShapeValueCode-S', 'Subrounded', 'http://w3id.org/glosis/model/codelists/rockShapeValueCode');
-- rockSize
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/rockSizeValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockSizeValueCode-A', 'Artefacts', 'http://w3id.org/glosis/model/codelists/rockSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockSizeValueCode-AC', 'Coarse artefacts', 'http://w3id.org/glosis/model/codelists/rockSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockSizeValueCode-AF', 'Fine artefacts', 'http://w3id.org/glosis/model/codelists/rockSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockSizeValueCode-AM', 'Medium artefacts', 'http://w3id.org/glosis/model/codelists/rockSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockSizeValueCode-AV', 'Very fine artefacts', 'http://w3id.org/glosis/model/codelists/rockSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockSizeValueCode-BL', 'Boulders and large boulders', 'http://w3id.org/glosis/model/codelists/rockSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockSizeValueCode-C', 'Combination of classes', 'http://w3id.org/glosis/model/codelists/rockSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockSizeValueCode-CS', 'Coarse gravel and stones', 'http://w3id.org/glosis/model/codelists/rockSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockSizeValueCode-FM', 'Fine and medium gravel/artefacts', 'http://w3id.org/glosis/model/codelists/rockSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockSizeValueCode-MC', 'Medium and coarse gravel/artefacts', 'http://w3id.org/glosis/model/codelists/rockSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockSizeValueCode-R', 'Rock fragments', 'http://w3id.org/glosis/model/codelists/rockSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockSizeValueCode-RB', 'Boulders', 'http://w3id.org/glosis/model/codelists/rockSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockSizeValueCode-RC', 'Coarse gravel', 'http://w3id.org/glosis/model/codelists/rockSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockSizeValueCode-RF', 'Fine gravel', 'http://w3id.org/glosis/model/codelists/rockSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockSizeValueCode-RL', 'Large boulders', 'http://w3id.org/glosis/model/codelists/rockSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockSizeValueCode-RM', 'Medium gravel', 'http://w3id.org/glosis/model/codelists/rockSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockSizeValueCode-RS', 'Stones', 'http://w3id.org/glosis/model/codelists/rockSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rockSizeValueCode-SB', 'Stones and boulders', 'http://w3id.org/glosis/model/codelists/rockSizeValueCode');
-- cementationFabric
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/cementationFabricValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationFabricValueCode-D', 'Nodular', 'http://w3id.org/glosis/model/codelists/cementationFabricValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationFabricValueCode-Pi', 'Pisolithic', 'http://w3id.org/glosis/model/codelists/cementationFabricValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationFabricValueCode-Pl', 'Platy', 'http://w3id.org/glosis/model/codelists/cementationFabricValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationFabricValueCode-V', 'Vesicular', 'http://w3id.org/glosis/model/codelists/cementationFabricValueCode');
-- rootsAbundance
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/rootsAbundanceValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rootsAbundanceValueCode-C', 'Common', 'http://w3id.org/glosis/model/codelists/rootsAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rootsAbundanceValueCode-F', 'Few', 'http://w3id.org/glosis/model/codelists/rootsAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rootsAbundanceValueCode-M', 'Many', 'http://w3id.org/glosis/model/codelists/rootsAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rootsAbundanceValueCode-N', 'None', 'http://w3id.org/glosis/model/codelists/rootsAbundanceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/rootsAbundanceValueCode-V', 'Very few', 'http://w3id.org/glosis/model/codelists/rootsAbundanceValueCode');
-- saltContent
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/saltContentValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/saltContentValueCode-EX', 'Extremely salty', 'http://w3id.org/glosis/model/codelists/saltContentValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/saltContentValueCode-MO', 'Moderately salty', 'http://w3id.org/glosis/model/codelists/saltContentValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/saltContentValueCode-N', '(nearly)Not salty', 'http://w3id.org/glosis/model/codelists/saltContentValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/saltContentValueCode-SL', 'Slightly salty', 'http://w3id.org/glosis/model/codelists/saltContentValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/saltContentValueCode-ST', 'Strongly salty', 'http://w3id.org/glosis/model/codelists/saltContentValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/saltContentValueCode-VST', 'Very strongly salty', 'http://w3id.org/glosis/model/codelists/saltContentValueCode');
-- saltCover
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/saltCoverValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/saltCoverValueCode-0', 'None', 'http://w3id.org/glosis/model/codelists/saltCoverValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/saltCoverValueCode-1', 'Low', 'http://w3id.org/glosis/model/codelists/saltCoverValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/saltCoverValueCode-2', 'Moderate', 'http://w3id.org/glosis/model/codelists/saltCoverValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/saltCoverValueCode-3', 'High', 'http://w3id.org/glosis/model/codelists/saltCoverValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/saltCoverValueCode-4', 'Dominant', 'http://w3id.org/glosis/model/codelists/saltCoverValueCode');
-- saltThickness
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/saltThicknessValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/saltThicknessValueCode-C', 'Thick', 'http://w3id.org/glosis/model/codelists/saltThicknessValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/saltThicknessValueCode-F', 'Thin', 'http://w3id.org/glosis/model/codelists/saltThicknessValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/saltThicknessValueCode-M', 'Medium', 'http://w3id.org/glosis/model/codelists/saltThicknessValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/saltThicknessValueCode-N', 'None', 'http://w3id.org/glosis/model/codelists/saltThicknessValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/saltThicknessValueCode-V', 'Very thick', 'http://w3id.org/glosis/model/codelists/saltThicknessValueCode');
-- cementationNature
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/cementationNatureValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationNatureValueCode-C', 'Clay', 'http://w3id.org/glosis/model/codelists/cementationNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationNatureValueCode-CS', 'Clay–sesquioxides', 'http://w3id.org/glosis/model/codelists/cementationNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationNatureValueCode-F', 'Iron', 'http://w3id.org/glosis/model/codelists/cementationNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationNatureValueCode-FM', 'Iron–manganese (sesquioxides)', 'http://w3id.org/glosis/model/codelists/cementationNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationNatureValueCode-FO', 'Iron–organic matter', 'http://w3id.org/glosis/model/codelists/cementationNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationNatureValueCode-GY', 'Gypsum', 'http://w3id.org/glosis/model/codelists/cementationNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationNatureValueCode-I', 'Ice', 'http://w3id.org/glosis/model/codelists/cementationNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationNatureValueCode-K', 'Carbonates', 'http://w3id.org/glosis/model/codelists/cementationNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationNatureValueCode-KQ', 'Carbonates–silica', 'http://w3id.org/glosis/model/codelists/cementationNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationNatureValueCode-M', 'Mechanical', 'http://w3id.org/glosis/model/codelists/cementationNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationNatureValueCode-NK', 'Not known', 'http://w3id.org/glosis/model/codelists/cementationNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationNatureValueCode-P', 'Ploughing', 'http://w3id.org/glosis/model/codelists/cementationNatureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/cementationNatureValueCode-Q', 'Silica', 'http://w3id.org/glosis/model/codelists/cementationNatureValueCode');
-- sandyTexture
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/sandyTextureValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sandyTextureValueCode-CS', 'Coarse sand', 'http://w3id.org/glosis/model/codelists/sandyTextureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sandyTextureValueCode-CSL', 'Coarse sandy loam', 'http://w3id.org/glosis/model/codelists/sandyTextureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sandyTextureValueCode-FS', 'Fine sand', 'http://w3id.org/glosis/model/codelists/sandyTextureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sandyTextureValueCode-FSL', 'Fine sandy loam', 'http://w3id.org/glosis/model/codelists/sandyTextureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sandyTextureValueCode-LCS', 'Loamy coarse sand', 'http://w3id.org/glosis/model/codelists/sandyTextureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sandyTextureValueCode-LFS', 'Loamy fine sand', 'http://w3id.org/glosis/model/codelists/sandyTextureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sandyTextureValueCode-LVFS', 'Loamy very fine sand', 'http://w3id.org/glosis/model/codelists/sandyTextureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sandyTextureValueCode-MS', 'Medium sand', 'http://w3id.org/glosis/model/codelists/sandyTextureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sandyTextureValueCode-US', 'Sand, unsorted', 'http://w3id.org/glosis/model/codelists/sandyTextureValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sandyTextureValueCode-VFS', 'Very fine sand', 'http://w3id.org/glosis/model/codelists/sandyTextureValueCode');
-- sealingConsistence
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/sealingConsistenceValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sealingConsistenceValueCode-E', 'Extremely hard', 'http://w3id.org/glosis/model/codelists/sealingConsistenceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sealingConsistenceValueCode-H', 'Hard', 'http://w3id.org/glosis/model/codelists/sealingConsistenceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sealingConsistenceValueCode-S', 'Slightly hard', 'http://w3id.org/glosis/model/codelists/sealingConsistenceValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sealingConsistenceValueCode-V', 'Very hard', 'http://w3id.org/glosis/model/codelists/sealingConsistenceValueCode');
-- sealingThickness
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/sealingThicknessValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sealingThicknessValueCode-C', 'Thick', 'http://w3id.org/glosis/model/codelists/sealingThicknessValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sealingThicknessValueCode-F', 'Thin', 'http://w3id.org/glosis/model/codelists/sealingThicknessValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sealingThicknessValueCode-M', 'Medium', 'http://w3id.org/glosis/model/codelists/sealingThicknessValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sealingThicknessValueCode-N', 'None', 'http://w3id.org/glosis/model/codelists/sealingThicknessValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/sealingThicknessValueCode-V', 'Very thick', 'http://w3id.org/glosis/model/codelists/sealingThicknessValueCode');
-- slopeForm
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/slopeFormValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopeFormValueCode-C', 'concave', 'http://w3id.org/glosis/model/codelists/slopeFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopeFormValueCode-S', 'straight', 'http://w3id.org/glosis/model/codelists/slopeFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopeFormValueCode-T', 'terraced', 'http://w3id.org/glosis/model/codelists/slopeFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopeFormValueCode-V', 'convex', 'http://w3id.org/glosis/model/codelists/slopeFormValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopeFormValueCode-X', 'complex (irregular)', 'http://w3id.org/glosis/model/codelists/slopeFormValueCode');
-- slopeGradientClass
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode-1', 'Flat', 'http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode-10', 'Very steep', 'http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode-2', 'Level', 'http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode-3', 'Nearly level', 'http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode-4', 'Very gently sloping', 'http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode-5', 'Gently sloping', 'http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode-6', 'Sloping', 'http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode-7', 'Strongly sloping', 'http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode-8', 'Moderately steep', 'http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode-9', 'Steep', 'http://w3id.org/glosis/model/codelists/slopeGradientClassValueCode');
-- slopePathways
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/slopePathwaysValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopePathwaysValueCode-CC', 'CC', 'http://w3id.org/glosis/model/codelists/slopePathwaysValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopePathwaysValueCode-CS', 'CS', 'http://w3id.org/glosis/model/codelists/slopePathwaysValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopePathwaysValueCode-CV', 'CV', 'http://w3id.org/glosis/model/codelists/slopePathwaysValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopePathwaysValueCode-SC', 'SC', 'http://w3id.org/glosis/model/codelists/slopePathwaysValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopePathwaysValueCode-SS', 'SS', 'http://w3id.org/glosis/model/codelists/slopePathwaysValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopePathwaysValueCode-SV', 'SV', 'http://w3id.org/glosis/model/codelists/slopePathwaysValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopePathwaysValueCode-VC', 'VC', 'http://w3id.org/glosis/model/codelists/slopePathwaysValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopePathwaysValueCode-VS', 'VS', 'http://w3id.org/glosis/model/codelists/slopePathwaysValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/slopePathwaysValueCode-VV', 'VV', 'http://w3id.org/glosis/model/codelists/slopePathwaysValueCode');
-- stickiness
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/stickinessValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/stickinessValueCode-NST', 'Non-sticky', 'http://w3id.org/glosis/model/codelists/stickinessValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/stickinessValueCode-SSS', 'slightly sticky to sticky', 'http://w3id.org/glosis/model/codelists/stickinessValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/stickinessValueCode-SST', 'Slightly sticky', 'http://w3id.org/glosis/model/codelists/stickinessValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/stickinessValueCode-ST', 'Sticky', 'http://w3id.org/glosis/model/codelists/stickinessValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/stickinessValueCode-SVS', 'sticky to very sticky', 'http://w3id.org/glosis/model/codelists/stickinessValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/stickinessValueCode-VST', 'Very sticky', 'http://w3id.org/glosis/model/codelists/stickinessValueCode');
-- structureGrade
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/structureGradeValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/structureGradeValueCode-MO', 'Moderate', 'http://w3id.org/glosis/model/codelists/structureGradeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/structureGradeValueCode-MS', 'Moderate to strong', 'http://w3id.org/glosis/model/codelists/structureGradeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/structureGradeValueCode-ST', 'Strong', 'http://w3id.org/glosis/model/codelists/structureGradeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/structureGradeValueCode-WE', 'Weak', 'http://w3id.org/glosis/model/codelists/structureGradeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/structureGradeValueCode-WM', 'Weak to moderate', 'http://w3id.org/glosis/model/codelists/structureGradeValueCode');
-- structureSize
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/structureSizeValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/structureSizeValueCode-CO', 'Coarse/thick', 'http://w3id.org/glosis/model/codelists/structureSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/structureSizeValueCode-EC', 'Extremely coarse', 'http://w3id.org/glosis/model/codelists/structureSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/structureSizeValueCode-FI', 'Fine/thin', 'http://w3id.org/glosis/model/codelists/structureSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/structureSizeValueCode-ME', 'Medium', 'http://w3id.org/glosis/model/codelists/structureSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/structureSizeValueCode-VC', 'Very coarse/thick', 'http://w3id.org/glosis/model/codelists/structureSizeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/structureSizeValueCode-VF', 'Very fine/thin', 'http://w3id.org/glosis/model/codelists/structureSizeValueCode');
-- surfaceAge
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/surfaceAgeValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/surfaceAgeValueCode-Ha', 'Holocene anthropogeomorphic', 'http://w3id.org/glosis/model/codelists/surfaceAgeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/surfaceAgeValueCode-Hn', 'Holocene natural', 'http://w3id.org/glosis/model/codelists/surfaceAgeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/surfaceAgeValueCode-O', 'Older, pre-Tertiary land surfaces', 'http://w3id.org/glosis/model/codelists/surfaceAgeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/surfaceAgeValueCode-T', 'Tertiary land surfaces', 'http://w3id.org/glosis/model/codelists/surfaceAgeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/surfaceAgeValueCode-Ya', 'Young anthropogeomorphic', 'http://w3id.org/glosis/model/codelists/surfaceAgeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/surfaceAgeValueCode-Yn', 'Young natural', 'http://w3id.org/glosis/model/codelists/surfaceAgeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/surfaceAgeValueCode-lPf', 'Late Pleistocene, without periglacial influence.', 'http://w3id.org/glosis/model/codelists/surfaceAgeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/surfaceAgeValueCode-lPi', 'Late Pleistocene, ice covered', 'http://w3id.org/glosis/model/codelists/surfaceAgeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/surfaceAgeValueCode-lPp', 'Late Pleistocene, periglacial', 'http://w3id.org/glosis/model/codelists/surfaceAgeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/surfaceAgeValueCode-oPf', 'Older Pleistocene, without periglacial influence.', 'http://w3id.org/glosis/model/codelists/surfaceAgeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/surfaceAgeValueCode-oPi', 'Older Pleistocene, ice covered', 'http://w3id.org/glosis/model/codelists/surfaceAgeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/surfaceAgeValueCode-oPp', 'Older Pleistocene, with periglacial influence', 'http://w3id.org/glosis/model/codelists/surfaceAgeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/surfaceAgeValueCode-vYa', 'Very young anthropogeomorphic', 'http://w3id.org/glosis/model/codelists/surfaceAgeValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/surfaceAgeValueCode-vYn', 'Very young natural', 'http://w3id.org/glosis/model/codelists/surfaceAgeValueCode');
-- vegetationClass
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/vegetationClassValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-B', 'Groundwater-fed bog peat', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-D', 'Dwarf shrub', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-DD', 'Deciduous dwarf shrub', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-DE', 'Evergreen dwarf shrub', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-DS', 'Semi-deciduous dwarf shrub', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-DT', 'Tundra', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-DX', 'Xermomorphic dwarf shrub', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-F', 'Closed forest', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-FC', 'Coniferous forest', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-FD', 'Deciduous forest', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-FE', 'Evergreen broad-leaved forest', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-FS', 'Semi-deciduous forest', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-FX', 'Xeromorphic forest', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-H', 'Herbaceous', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-HF', 'Forb', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-HM', 'Medium grassland', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-HS', 'Short grassland', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-HT', 'Tall grassland', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-M', 'Rainwater-fed moor peat', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-S', 'Shrub', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-SD', 'Deciduous shrub', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-SE', 'Evergreen shrub', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-SS', 'Semi-deciduous shrub', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-SX', 'Xeromorphic shrub', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-W', 'Woodland', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-WD', 'Deciduous woodland', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-WE', 'Evergreen woodland', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-WS', 'Semi-deciduous woodland', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/vegetationClassValueCode-WX', 'Xeromorphic woodland', 'http://w3id.org/glosis/model/codelists/vegetationClassValueCode');
-- voidsClassification
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/voidsClassificationValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/voidsClassificationValueCode-B', 'Vesicular', 'http://w3id.org/glosis/model/codelists/voidsClassificationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/voidsClassificationValueCode-C', 'Channels', 'http://w3id.org/glosis/model/codelists/voidsClassificationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/voidsClassificationValueCode-I', 'Interstitial', 'http://w3id.org/glosis/model/codelists/voidsClassificationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/voidsClassificationValueCode-P', 'Planes', 'http://w3id.org/glosis/model/codelists/voidsClassificationValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/voidsClassificationValueCode-V', 'Vughs', 'http://w3id.org/glosis/model/codelists/voidsClassificationValueCode');
-- voidsDiameter
-- CODELIST GLOSIS
-- http://w3id.org/glosis/model/codelists/voidsDiameterValueCode
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/voidsDiameterValueCode-C', 'Coarse', 'http://w3id.org/glosis/model/codelists/voidsDiameterValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/voidsDiameterValueCode-F', 'Fine', 'http://w3id.org/glosis/model/codelists/voidsDiameterValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/voidsDiameterValueCode-FF', 'fine and very fine', 'http://w3id.org/glosis/model/codelists/voidsDiameterValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/voidsDiameterValueCode-FM', 'fine and medium', 'http://w3id.org/glosis/model/codelists/voidsDiameterValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/voidsDiameterValueCode-M', 'Medium', 'http://w3id.org/glosis/model/codelists/voidsDiameterValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/voidsDiameterValueCode-MC', 'medium and coarse', 'http://w3id.org/glosis/model/codelists/voidsDiameterValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/voidsDiameterValueCode-V', 'Very fine', 'http://w3id.org/glosis/model/codelists/voidsDiameterValueCode');
INSERT INTO "codelist" (id, label, collection) VALUES ('http://w3id.org/glosis/model/codelists/voidsDiameterValueCode-VC', 'Very coarse', 'http://w3id.org/glosis/model/codelists/voidsDiameterValueCode');