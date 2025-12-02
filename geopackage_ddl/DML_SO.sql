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

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilInvestigationPurposeValue/generalSoilSurvey', 'general soil survey', 'SoilInvestigationPurposeValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilInvestigationPurposeValue/specificSoilSurvey', 'specific soil survey', 'SoilInvestigationPurposeValue', null);


-- SoilPlotTypeValue
-- FEATURE soilplot
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/SoilPlotTypeValue

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilPlotTypeValue/borehole', 'borehole', 'SoilPlotTypeValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilPlotTypeValue/sample', 'sample', 'SoilPlotTypeValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilPlotTypeValue/trialPit', 'trial pit', 'SoilPlotTypeValue', null);

-- *** INTERNAL *** 
-- WRBRversion
-- FEATURE  soilprofile
-- CODELIST for internal management of Qgis forms based on real URI of WRB Classification

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue', 'WRB 2006', 'wrbversion', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/WRB_2014-2015', 'WRB 2014', 'wrbversion', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/', 'WRB 2022', 'wrbversion', null);


-- WRBReferenceSoilGroupValue (2006)
-- FEATURE soilprofile
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/acrisol', 'Acrisols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/albeluvisol', 'Albeluvisols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/alisol', 'Alisols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/andosol', 'Andosols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/anthrosol', 'Anthrosols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/arenosol', 'Arenosols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/calcisol', 'Calcisols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/cambisol', 'Cambisols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/chernozem', 'Chernozems', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/cryosol', 'Cryosols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/durisol', 'Durisols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/ferralsol', 'Ferralsols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/fluvisol', 'Fluvisols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/gleysol', 'Gleysols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/gypsisol', 'Gypsisols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/histosol', 'Histosols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/kastanozem', 'Kastanozems', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/leptosol', 'Leptosols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/lixisol', 'Lixisols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/luvisol', 'Luvisols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/nitisol', 'Nitisols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/phaeozem', 'Phaeozems', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/planosol', 'Planosols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/plinthosol', 'Plinthosols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/podzol', 'Podzols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/regosol', 'Regosols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/solonchak', 'Solonchaks', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/solonetz', 'Solonetzs', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/stagnosol', 'Stagnosols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/technosol', 'Technosols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/umbrisol', 'Umbrisols', 'WRBReferenceSoilGroupValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue/vertisol', 'Vertisols', 'WRBReferenceSoilGroupValue', null);


-- WRBReferenceSoilGroupValue (2014)
-- FEATURE soilprofile
-- CODELIST AGROPRTAL
-- https://agroportal.lirmm.fr/ontologies/AGROVOC

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_101', 'Acrisols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_479c499a', 'Alisols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_404', 'Andosols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_4515b13e', 'Anthrosols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_601', 'Arenosols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_ea60e31f', 'Calcisols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_1224', 'Cambisols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_1533', 'Chernozems', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_829043c3', 'Cryosols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_51ec138f', 'Durisols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_2858', 'Ferralsols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_3000', 'Fluvisols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_3276', 'Gleysols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_61704b51', 'Gypsisols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_3636', 'Histosols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_4079', 'Kastanozems', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_da0af025', 'Leptosols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_7283bd0a', 'Lixisols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_4470', 'Luvisols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_5185', 'Nitisols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_5755', 'Phaeozems', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_5953', 'Planosols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_309e7c25', 'Plinthosols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_6044', 'Podzols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_6492', 'Regosols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_ff831af0', 'Retisols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_7231', 'Solonchaks', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_7232', 'Solonetz', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_d9028da2', 'Stagnosols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_3a0750ba', 'Technosols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_9e95a849', 'Umbrisols', 'WRBReferenceSoilGroupValue2014', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGROVOC/c_8199', 'Vertisols', 'WRBReferenceSoilGroupValue2014', null);



-- WRBReferenceSoilGroupValue (2022)
-- FEATURE soilprofile
-- CODELIST ORBL-SOIL
-- https://obrl-soil.github.io/wrbsoil2022/

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html#sec-key-ac', 'Acrisols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html#sec-key-al', 'Alisols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-an', 'Andosols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-at', 'Anthrosols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html#sec-key-ar', 'Arenosols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-cl', 'Calcisols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html#sec-key-cm', 'Cambisols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-ch', 'Chernozems', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-cr', 'Cryosols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-du', 'Durisols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-fr', 'Ferralsols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html#sec-key-fl', 'Fluvisols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-gl', 'Gleysols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-gy', 'Gypsisols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-hs', 'Histosols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-ks', 'Kastanozems', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-lp', 'Leptosols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html#sec-key-lx', 'Lixisols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html#sec-key-lv', 'Luvisols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-nt', 'Nitisols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-ph', 'Phaeozems', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-pl', 'Planosols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-pt', 'Plinthosols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-pz', 'Podzols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html#sec-key-rg', 'Regosols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-rt', 'Retisols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-sc', 'Solonchaks', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-sn', 'Solonetz', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-st', 'Stagnosols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-tc', 'Technosols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-um', 'Umbrisols', 'WRBReferenceSoilGroupValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-04.html?q=acrisol#sec-key-vr', 'Vertisols', 'WRBReferenceSoilGroupValue2022', null);



-- OtherSoilNameTypeValue
-- FEATURE othersoilnametype
-- CODELIST INSPIRE
-- https://inspire.ec.europa.eu/codelist/OtherSoilNameTypeValue

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://inspire.ec.europa.eu/codelist/OtherSoilNameTypeValue', 'Void', 'OtherSoilNameTypeValue', null);


-- LayerTypeValue
-- FEATURE profileelement
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/LayerTypeValue

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LayerTypeValue/depthInterval', 'depth interval', 'LayerTypeValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LayerTypeValue/geogenic', 'geogenic', 'LayerTypeValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LayerTypeValue/subSoil', 'subsoil', 'LayerTypeValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LayerTypeValue/topSoil', 'topsoil', 'LayerTypeValue', null);


-- LithologyValue
-- FEATURE profileelement
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/LithologyValue

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/acidicIgneousMaterial', 'acidicIgneousMaterial', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/acidicIgneousRock', 'acidicIgneousRock', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/alkaliFeldsparRhyolite', 'alkaliFeldsparRhyolite', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/amphibolite', 'amphibolite', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/anthropogenicMaterial', 'anthropogenicMaterial', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/ashAndLapilli', 'ashAndLapilli', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/ashBrecciaBombOrBlockTephra', 'ashBrecciaBombOrBlockTephra', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/basicIgneousMaterial', 'basicIgneousMaterial', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/boulderGravelSizeSediment', 'boulderGravelSizeSediment', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/breccia', 'breccia', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/carbonateMudstone', 'carbonateMudstone', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/carbonateRichMudstone', 'carbonateRichMudstone', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/carbonateSedimentaryMaterial', 'carbonateSedimentaryMaterial', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/carbonateSedimentaryRock', 'carbonateSedimentaryRock', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/cataclasiteSeries', 'cataclasiteSeries', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/chalk', 'chalk', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/chemicalSedimentaryMaterial', 'chemicalSedimentaryMaterial', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/chloriteActinoliteEpidoteMetamorphicRock', 'chloriteActinoliteEpidoteMetamorphicRock', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/clasticSedimentaryMaterial', 'clasticSedimentaryMaterial', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/crystallineCarbonate', 'crystallineCarbonate', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/dacite', 'dacite', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/dolomite', 'dolomite', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/eclogite', 'eclogite', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/foliatedMetamorphicRock', 'foliatedMetamorphicRock', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/fragmentalIgneousMaterial', 'fragmentalIgneousMaterial', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/framestone', 'framestone', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/genericConglomerate', 'genericConglomerate', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/genericMudstone', 'genericMudstone', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/genericSandstone', 'genericSandstone', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/gneiss', 'gneiss', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/grainstone', 'grainstone', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/granite', 'granite', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/granodiorite', 'granodiorite', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/granofels', 'granofels', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/granulite', 'granulite', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/hornfels', 'hornfels', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/hybridSediment', 'hybridSediment', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/hybridSedimentaryRock', 'hybridSedimentaryRock', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/igneousMaterial', 'igneousMaterial', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/igneousRock', 'igneousRock', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/impureCarbonateSedimentaryRock', 'impureCarbonateSedimentaryRock', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/impureDolomite', 'impureDolomite', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/impureLimestone', 'impureLimestone', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/intermediateCompositionIgneousMaterial', 'intermediateCompositionIgneousMaterial', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/limestone', 'limestone', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/marble', 'marble', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/materialFormedInSurficialEnvironment', 'materialFormedInSurficialEnvironment', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/metamorphicRock', 'metamorphicRock', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/micaSchist', 'micaSchist', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/migmatite', 'migmatite', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/mineDumpMaterial', 'mineDumpMaterial', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/monzogranite', 'monzogranite', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/mudSizeSediment', 'mudSizeSediment', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/naturalUnconsolidatedMaterial', 'naturalUnconsolidatedMaterial', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/nonClasticSiliceousSedimentaryMaterial', 'nonClasticSiliceousSedimentaryMaterial', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/organicBearingMudstone', 'organicBearingMudstone', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/organicRichSedimentaryMaterial', 'organicRichSedimentaryMaterial', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/packstone', 'packstone', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/peat', 'peat', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/phyllite', 'phyllite', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/sandSizeSediment', 'sandSizeSediment', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/silicateMudstone', 'silicateMudstone', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/skarn', 'skarn', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/slate', 'slate', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/syenogranite', 'syenogranite', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/tephra', 'tephra', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/tonalite', 'tonalite', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/tuffite', 'tuffite', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/unconsolidatedMaterial', 'unconsolidatedMaterial', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/waste', 'waste', 'LithologyValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LithologyValue/carbonateWackestone', 'https://inspire.ec.europa.eu/codelist/LithologyValue/carbonateWackestone', 'LithologyValue', null);


-- EventProcessValue
-- FEATURE profileelement
-- CODELIST INSPIRE
--http://inspire.ec.europa.eu/codelist/EventProcessValue

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/bolideImpact', 'bolide impact', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/cometaryImpact', 'cometary impact', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/meteoriteImpact', 'meteorite impact', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/deepWaterOxygenDepletion', 'deep water oxygen depletion', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/deformation', 'deformation', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/ductileFlow', 'ductile flow', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/faulting', 'faulting', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/folding', 'folding', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/fracturing', 'fracturing', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/shearing', 'shearing', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/diageneticProcess', 'diagenetic process', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/extinction', 'extinction', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/geomagneticProcess', 'geomagnetic process', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/magneticFieldReversal', 'magnetic field reversal', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/polarWander', 'polar wander', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/humanActivity', 'human activity', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/excavation', 'excavation', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/grading', 'grading', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/materialTransportAndDeposition', 'material transport and deposition', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/mixing', 'mixing', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/magmaticProcess', 'magmatic process', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/eruption', 'eruption', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/intrusion', 'intrusion', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/magmaticCrystallisation', 'magmatic crystallisation', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/melting', 'melting', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/metamorphicProcess', 'metamorphic process', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/alteration', 'alteration', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/contactMetamorphism', 'contact metamorphism', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/dislocationMetamorphism', 'dislocation metamorphism', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/seaLevelChange', 'sea level change', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/seaLevelFall', 'sea level fall', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/seaLevelRise', 'sea level rise', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/sedimentaryProcess', 'sedimentary process', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/deposition', 'deposition', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/erosion', 'erosion', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/speciation', 'speciation', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/tectonicProcess', 'tectonic process', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/accretion', 'accretion', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/continentalBreakup', 'continental breakup', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/continentalCollision', 'continental collision', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/obduction', 'obduction', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/orogenicProcess', 'orogenic process', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/spreading', 'spreading', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/subduction', 'subduction', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/transformFaulting', 'transform faulting', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/weathering', 'weathering', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/biologicalWeathering', 'biological weathering', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/chemicalWeathering', 'chemical weathering', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/physicalWeathering', 'physical weathering', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/deepPloughing', 'deep ploughing', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/depositionByOrFromMovingIce', 'deposition by or from moving ice', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/depositionFromAir', 'deposition from air', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/depositionFromWater', 'deposition from water', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/digging', 'digging', 'EventProcessValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventProcessValue/geologicProcess', 'geologic process', 'EventProcessValue', null);


-- EventEnvironmentValue
-- FEATURE profileelement
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/EventEnvironmentValue

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/agriculturalAndForestryLandSetting''', 'agricultural and forestry land setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/carbonateShelfSetting', 'carbonate shelf setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/deltaSlopeSetting', 'delta slope setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/dwellingAreaSetting', 'dwelling area setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/earthInteriorSetting', 'earth interior setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/earthSurfaceSetting', 'earth surface setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/extraTerrestrialSetting', 'extra-terrestrial setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/fanDeltaSetting', 'fan delta setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/foreshore', 'foreshore', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/glaciofluvialSetting', 'glaciofluvial setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/glaciolacustrineSetting', 'glaciolacustrine setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/glaciomarineSetting', 'glaciomarine setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/graben', 'graben', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/halfGraben', 'half-graben', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/humanEnvironmentSetting', 'human environment setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/intracratonicSetting', 'intracratonic setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/landReclamationSetting', 'land reclamation setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/miningAreaSetting', 'mining area setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/saltPan', 'salt pan', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/tectonicallyDefinedSetting', 'tectonically defined setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/wasteAndMaterialDepositionAreaSetting', 'waste and material deposition area setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/wetToSubHumidSetting', 'wet to sub-humid setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/fastSpreadingCenterSetting', 'fast spreading center setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/mediumRateSpreadingCenterSetting', 'medium-rate spreading center setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/slowSpreadingCenterSetting', 'slow spreading center setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/dunefieldSetting', 'dunefield setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/dustAccumulationSetting', 'dust accumulation setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/sandPlainSetting', 'sand plain setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/gibberPlainSetting', 'gibber plain setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/marginalMarineSabkhaSetting', 'marginal marine sabkha setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/playaSetting', 'playa setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/barrierBeachSetting', 'barrier beach setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/barrierLagoonSetting', 'barrier lagoon setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lowerBathyalSetting', 'lower bathyal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/middleBathyalSetting', 'middle bathyal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/upperBathyalSetting', 'upper bathyal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/backreefSetting', 'backreef setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/forereefSetting', 'forereef setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/reefFlatSetting', 'reef flat setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/basinBogSetting', 'basin bog setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/blanketBog', 'blanket bog', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/collisionalSetting', 'collisional setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/forelandSetting', 'foreland setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/hinterlandTectonicSetting', 'hinterland tectonic setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lowerContinentalCrustalSetting', 'lower continental-crustal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/middleContinentalCrustSetting', 'middle continental crust setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/upperContinentalCrustalSetting', 'upper continental crustal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/continentalCrustalSetting', 'continental-crustal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/oceanicCrustalSetting', 'oceanic-crustal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/transitionalCrustalSetting', 'transitional-crustal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/deltaDistributaryChannelSetting', 'delta distributary channel setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/deltaDistributaryMouthSetting', 'delta distributary mouth setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/deltaFrontSetting', 'delta front setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/deltaPlainSetting', 'delta plain setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/estuarineDeltaSetting', 'estuarine delta setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/interdistributaryBaySetting', 'interdistributary bay setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lacustrineDeltaSetting', 'lacustrine delta setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/prodeltaSetting', 'prodelta setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lowerDeltaPlainSetting', 'lower delta plain setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/upperDeltaPlainSetting', 'upper delta plain setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/coastalDuneFieldSetting', 'coastal dune field setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/contactMetamorphicSetting', 'contact metamorphic setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/crustalSetting', 'crustal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/highPressureLowTemperatureEarthInteriorSetting', 'high pressure low temperature Earth interior setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/hypabyssalSetting', 'hypabyssal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lowPressureHighTemperatureSetting', 'low pressure high temperature setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/mantleSetting', 'mantle setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/regionalMetamorphicSetting', 'regional metamorphic setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/ultraHighPressureCrustalSetting', 'ultra high pressure crustal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/anoxicSetting', 'anoxic setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/aridOrSemiAridEnvironmentSetting', 'arid or Semi Arid environment setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/caveSetting', 'cave setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/deltaicSystemSetting', 'deltaic system setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/glacierRelatedSetting', 'glacier related setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/hillslopeSetting', 'hillslope setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/humidTemperateClimaticSetting', 'humid temperate climatic setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/humidTropicalClimaticSetting', 'humid tropical climatic setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/polarClimaticSetting', 'polar climatic setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/shorelineSetting', 'shoreline setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/subaerialSetting', 'subaerial setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/subaqueousSetting', 'subaqueous setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/terrestrialSetting', 'terrestrial setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/wetlandSetting', 'wetland setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/estuarineLagoonSetting', 'estuarine lagoon setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/continentalRiftSetting', 'continental rift setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/englacialSetting', 'englacial setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/glacialOutwashPlainSetting', 'glacial outwash plain setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/glacierLateralSetting''', 'glacier lateral setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/proglacialSetting', 'proglacial setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/subglacialSetting', 'subglacial setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/supraglacialSetting', 'supraglacial setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/inactiveSpreadingCenterSetting', 'inactive spreading center setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/seamountSetting', 'seamount setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/algalFlatSetting', 'algal flat setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/mudFlatSetting', 'mud flat setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lowerMantleSetting', 'lower mantle setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/upperMantleSetting', 'upper mantle setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/aboveCarbonateCompensationDepthSetting', 'above carbonate compensation depth setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/abyssalSetting', 'abyssal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/basinPlainSetting', 'basin plain setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/bathyalSetting', 'bathyal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/belowCarbonateCompensationDepthSetting', 'below carbonate compensation depth setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/biologicalReefSetting', 'biological reef setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/continentalBorderlandSetting', 'continental borderland setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/continentalShelfSetting', 'continental shelf setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/deepSeaTrenchSetting', 'deep sea trench setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/epicontinentalMarineSetting', 'epicontinental marine setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/hadalSetting', 'hadal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/marineCarbonatePlatformSetting', 'marine carbonate platform setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/neriticSetting', 'neritic setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/oceanHighlandSetting', 'ocean highland setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/slopeRiseSetting', 'slope-rise setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/submarineFanSetting', 'submarine fan setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/innerNeriticSetting', 'inner neritic setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/middleNeriticSetting', 'middle neritic setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/outerNeriticSetting', 'outer neritic setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/midOceanRidgeSetting', 'mid ocean ridge setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/oceanicPlateauSetting', 'oceanic plateau setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lowerOceanicCrustalSetting', 'lower oceanic-crustal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/upperOceanicCrustalSetting', 'upper oceanic crustal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/alluvialFanSetting', 'alluvial fan setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/alluvialPlainSetting', 'alluvial plain setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/pedimentSetting', 'pediment setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/activeContinentalMarginSetting', 'active continental margin setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/activeSpreadingCenterSetting', 'active spreading center setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/forearcSetting', 'forearc setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/subductionZoneSetting', 'subduction zone setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/transformPlateBoundarySetting', 'transform plate boundary setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/volcanicArcSetting', 'volcanic arc setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/glacierTerminusSetting', 'glacier terminus setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/braidedRiverChannelSetting', 'braided river channel setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/meanderingRiverChannelSetting', 'meandering river channel setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/abandonedRiverChannelSetting', 'abandoned river channel setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/cutoffMeanderSetting', 'cutoff meander setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/floodplainSetting', 'floodplain setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/riverChannelSetting', 'river channel setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/springSetting', 'spring setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/barrierIslandCoastlineSetting', 'barrier island coastline setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/beachSetting', 'beach setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/carbonateDominatedShorelineSetting', 'carbonate dominated shoreline setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/coastalPlainSetting', 'coastal plain setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/estuarySetting', 'estuary setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lagoonalSetting', 'lagoonal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lowEnergyShorelineSetting', 'low energy shoreline setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/rockyCoastSetting', 'rocky coast setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/strandplainSetting', 'strandplain setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/supratidalSetting', 'supratidal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/tidalSetting', 'tidal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/aeolianProcessSetting', 'aeolian process setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/piedmontSlopeSystemSetting', 'piedmont slope system setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/intertidalSetting', 'intertidal setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/marineSetting', 'marine setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/tidalChannelSetting', 'tidal channel setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/tidalMarshSetting', 'tidal marsh setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/backArcSetting', 'back arc setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/extendedTerraneSetting', 'extended terrane setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/hotSpotSetting', 'hot spot setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/intraplateTectonicSetting', 'intraplate tectonic setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/passiveContinentalMarginSetting', 'passive continental margin setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/plateMarginSetting', 'plate margin setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/plateSpreadingCenterSetting', 'plate spreading center setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/bogSetting', 'bog setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/lacustrineSetting', 'lacustrine setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/riverPlainSystemSetting', 'river plain system setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/tidalFlatSetting', 'tidal flat setting', 'EventEnvironmentValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/EventEnvironmentValue/swampOrMarshSetting', 'swamp or marsh setting', 'EventEnvironmentValue', null);


-- LayerGenesisProcessStateValue
-- FEATURE profileelement
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/LayerGenesisProcessStateValue

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LayerGenesisProcessStateValue/ongoing', 'on-going', 'LayerGenesisProcessStateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/LayerGenesisProcessStateValue/terminated', 'terminated', 'LayerGenesisProcessStateValue', null);


-- FAOHorizonMaster
-- FEATURE faohorizonnotationtype
-- CODELIST INSPIRE
-- https://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/B', 'B', 'FAOHorizonMasterValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/O', 'O', 'FAOHorizonMasterValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/C', 'C', 'FAOHorizonMasterValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/E', 'E', 'FAOHorizonMasterValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/I', 'I', 'FAOHorizonMasterValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/W', 'W', 'FAOHorizonMasterValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/H', 'H', 'FAOHorizonMasterValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/A', 'A', 'FAOHorizonMasterValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/R', 'R', 'FAOHorizonMasterValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonMasterValue/L', 'L', 'FAOHorizonMasterValue', null);


-- FAOHorizonSubordinate
-- FEATURE faohorizonnotationtype
-- CODELIST INSPIRE
-- https://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/a', 'a', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/b', 'b', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/c', 'c', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/c-L', 'c-L', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/f', 'f', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/d-L', 'd-L', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/e', 'e', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/g', 'g', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/d', 'd', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/i-HO', 'i-HO', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/r', 'r', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/u', 'u', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/x', 'x', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/k', 'k', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/l', 'l', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/z', 'z', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/@', '@', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/j', 'j', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/v', 'v', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/t', 't', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/m-L', 'm-L', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/n', 'n', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/h', 'h', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/w', 'w', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/m', 'm', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/q', 'q', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/o', 'o', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/p', 'p', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/s', 's', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/i', 'i', 'FAOHorizonSubordinateValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOHorizonSubordinateValue/y', 'y', 'FAOHorizonSubordinateValue', null);


-- FAOPrime
-- FEATURE faohorizonnotationtype
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/FAOPrimeValue

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOPrimeValue/0', '0', 'FAOPrimeValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOPrimeValue/1', '1', 'FAOPrimeValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOPrimeValue/2', '2', 'FAOPrimeValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/FAOPrimeValue/3', '3', 'FAOPrimeValue', null);


-- *** INTERNAL *** codelist for managing forms 
-- OtherHorizonNotationType
-- FEATURE otherhorizonnotationtype
-- CODELIST for internal management of Qgis forms

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('WRBdiagnostichorizon', 'WRB', 'OtherHorizonNotationTypeValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('USDAdiagnostichorizon', 'USDA', 'OtherHorizonNotationTypeValue', null);


-- WRBdiagnostichorizon
-- FEATURE otherhorizonnotationtype
-- CODELIST ORBL
-- https://obrl-soil.github.io/wrbsoil2022/

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-albich', 'Albic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-anthh', 'Anthraquic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-argich', 'Argic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-calch', 'Calcic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-cambich', 'Cambic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-chernh', 'Chernic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-cohesich', 'Cohesic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-cryich', 'Cryic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-durich', 'Duric', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-feralh', 'Ferralic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-ferich', 'Ferric', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-folich', 'Folic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-fragh', 'Fragic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-gypsih', 'Gypsic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-histih', 'Histic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-hydrh', 'Hydragric', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-iragh', 'Irragric', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-limonich', 'Limonic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-mollh', 'Mollic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-natrich', 'Natric', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-nitich', 'Nitic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-panpaich', 'Panpaic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-hortih', 'Hortic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-pcalch', 'Petrocalcic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-pdurich', 'Petroduric', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-pgypsich', 'Petrogypsic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-pplinthich', 'Petroplinthic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-pisoph', 'Pisoplinthic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-plaggh', 'Plaggic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-plinth', 'Plinthic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-preth', 'Pretic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-protvh', 'Protovertic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-salich', 'Salic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-sombrh', 'Sombric', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-spodich', 'Spodic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-terich', 'Terric', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-thionh', 'Thionic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-tsitelich', 'Tsitelic', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-umbrich', 'Umbric', 'WRBdiagnostichorizon', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-03.html#sec-verth', 'Vertic', 'WRBdiagnostichorizon', null);

-- *** EXAMPLE *** 
-- diagnostichorizon
-- FEATURE otherhorizonnotationtype
-- CODELIST CREA

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://crea.gov.it/infosuoli/vocabularies/USDA/diagnostichorizon/12386', 'Void', 'USDAdiagnostichorizon', null);



-- WRBQualifierPlaceValue
-- FEATURE wrbqualifiergrouptype
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/WRBQualifierPlaceValue

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierPlaceValue/suffix', 'suffix', 'WRBQualifierPlaceValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierPlaceValue/prefix', 'prefix', 'WRBQualifierPlaceValue', null);


-- WRBQualifierValue (2006)
-- FEATURE wrbqualifiergrouptype
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/WRBQualifierValue


INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Nudiargic', 'Nudiargic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Ortsteinic', 'Ortsteinic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Aric', 'Aric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Acric', 'Acric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Alcalic', 'Alcalic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Arzic', 'Arzic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Irragric', 'Irragric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Rheic', 'Rheic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Arenic', 'Arenic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Anthric', 'Anthric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Aluandic', 'Aluandic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Aridic', 'Aridic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Sombric', 'Sombric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Calcaric', 'Calcaric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Alumic', 'Alumic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Anthraquic', 'Anthraquic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Solodic', 'Solodic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Acroxic', 'Acroxic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Andic', 'Andic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Calcic', 'Calcic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Alic', 'Alic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Brunic', 'Brunic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Endoduric', 'Endoduric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Carbic', 'Carbic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Eutric', 'Eutric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Chloridic', 'Chloridic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Clayic', 'Clayic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Chromic', 'Chromic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Densic', 'Densic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Glossalbic', 'Glossalbic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Duric', 'Duric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Colluvic', 'Colluvic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Carbonatic', 'Carbonatic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Dystric', 'Dystric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Thaptandic', 'Thaptandic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Pisocalcic', 'Pisocalcic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Cambic', 'Cambic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Cryic', 'Cryic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Eutrosilic', 'Eutrosilic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Drainic', 'Drainic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Ferralic', 'Ferralic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Cutanic', 'Cutanic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Ferric', 'Ferric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Gelistagnic', 'Gelistagnic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Fibric', 'Fibric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Greyic', 'Greyic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Fluvic', 'Fluvic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Glossic', 'Glossic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Gibbsic', 'Gibbsic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Fractiplinthic', 'Fractiplinthic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Fractipetric', 'Fractipetric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Gelic', 'Gelic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Gleyic', 'Gleyic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Floatic', 'Floatic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Folic', 'Folic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Gypsic', 'Gypsic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Geric', 'Geric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Glacic', 'Glacic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Garbic', 'Garbic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Fulvic', 'Fulvic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Fragic', 'Fragic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Grumic', 'Grumic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Gypsiric', 'Gypsiric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hypereutric', 'Hypereutric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Endogleyic', 'Endogleyic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hemic', 'Hemic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Umbriglossic', 'Umbriglossic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Endoeutric', 'Endoeutric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Endofluvic', 'Endofluvic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Epidystric', 'Epidystric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Epieutric', 'Epieutric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Rustic', 'Rustic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Voronic', 'Voronic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Turbic', 'Turbic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Posic', 'Posic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Leptic', 'Leptic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Lixic', 'Lixic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Vetic', 'Vetic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Toxic', 'Toxic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Magnesic', 'Magnesic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Xanthic', 'Xanthic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Stagnic', 'Stagnic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Pisoplinthic', 'Pisoplinthic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hyposalic', 'Hyposalic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Puffic', 'Puffic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Mesotrophic', 'Mesotrophic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Mazic', 'Mazic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Plaggic', 'Plaggic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hydric', 'Hydric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Pachic', 'Pachic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Aceric', 'Aceric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Albic', 'Albic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hortic', 'Hortic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Ekranic', 'Ekranic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Ombric', 'Ombric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Escalic', 'Escalic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Sodic', 'Sodic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Haplic', 'Haplic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Ornithic', 'Ornithic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hyperalbic', 'Hyperalbic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Lignic', 'Lignic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Endosalic', 'Endosalic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Linic', 'Linic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Endostagnic', 'Endostagnic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Natric', 'Natric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Vitric', 'Vitric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Histic', 'Histic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hypergypsic', 'Hypergypsic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Endoleptic', 'Endoleptic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Petroplinthic', 'Petroplinthic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Spolic', 'Spolic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Luvic', 'Luvic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Lamellic', 'Lamellic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Melanic', 'Melanic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Ruptic', 'Ruptic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hydragric', 'Hydragric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Petric', 'Petric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Protic', 'Protic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Thionic', 'Thionic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Spodic', 'Spodic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Petroduric', 'Petroduric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Subaquatic', 'Subaquatic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Technic', 'Technic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Reductic', 'Reductic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Takyric', 'Takyric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Transportic', 'Transportic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Vermic', 'Vermic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Plinthic', 'Plinthic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hypocalcic', 'Hypocalcic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Rubic', 'Rubic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Nitic', 'Nitic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Thaptovitric', 'Thaptovitric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Tephric', 'Tephric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hyperskeletic', 'Hyperskeletic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Lithic', 'Lithic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Tidalic', 'Tidalic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Sulphatic', 'Sulphatic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Profondic', 'Profondic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Terric', 'Terric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Placic', 'Placic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Thixotropic', 'Thixotropic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Regic', 'Regic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Petrocalcic', 'Petrocalcic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Protothionic', 'Protothionic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Skeletic', 'Skeletic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Manganiferric', 'Manganiferric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hydrophobic', 'Hydrophobic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Oxyaquic', 'Oxyaquic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Rendzic', 'Rendzic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Humic', 'Humic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Laxic', 'Laxic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Limnic', 'Limnic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hyperalic', 'Hyperalic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Yermic', 'Yermic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Petrosalic', 'Petrosalic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Nudilithic', 'Nudilithic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Petrogleyic', 'Petrogleyic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Rhodic', 'Rhodic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Siltic', 'Siltic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Silandic', 'Silandic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hyperochric', 'Hyperochric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Urbic', 'Urbic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Reductaquic', 'Reductaquic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hyperdystric', 'Hyperdystric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Petrogypsic', 'Petrogypsic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hypogypsic', 'Hypogypsic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Vertic', 'Vertic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Pellic', 'Pellic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Sapric', 'Sapric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Novic', 'Novic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hypersalic', 'Hypersalic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hypoluvic', 'Hypoluvic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Mollic', 'Mollic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Salic', 'Salic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Umbric', 'Umbric', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hypercalcic', 'Hypercalcic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Hyposodic', 'Hyposodic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Abruptic', 'Abruptic', 'WRBQualifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBQualifierValue/Entic', 'Entic', 'WRBQualifierValue', null);




-- WRBQualifierValue (2022)
-- FEATURE wrbqualifiergrouptype
-- CODELIST ORBL-SOIL
-- https://obrl-soil.github.io/wrbsoil2022/

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ap', 'Abruptic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ae', 'Aceric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ac', 'Acric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ao', 'Acroxic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-at', 'Activic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ay', 'Aeolic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ab', 'Albic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ax', 'Alcalic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-al', 'Alic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-aa', 'Aluandic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-an', 'Andic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-aq', 'Anthraquic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ak', 'Anthric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ah', 'Archaic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ar', 'Arenic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ad', 'Arenicolic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ai', 'Aric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-az', 'Arzic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-bc', 'Biocrustic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-br', 'Brunic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-by', 'Bryic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ca', 'Calcaric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cc', 'Calcic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cm', 'Cambic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cp', 'Capillaric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cb', 'Carbic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cn', 'Carbonatic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cx', 'Carbonic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ch', 'Chernic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cl', 'Chloridic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cr', 'Chromic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cq', 'Claric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ce', 'Clayic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cs', 'Coarsic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-co', 'Cohesic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cu', 'Columnic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cd', 'Cordic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-cy', 'Cryic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ct', 'Cutanic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-dn', 'Densic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-df', 'Differentic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-do', 'Dolomitic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ds', 'Dorsic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-dr', 'Drainic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-du', 'Duric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-dy', 'Dystric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ek', 'Ekranic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ed', 'Endic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-et', 'Entic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ep', 'Epic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ec', 'Escalic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-eu', 'Eutric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-es', 'Eutrosilic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ev', 'Evapocrustic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-fl', 'Ferralic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-fr', 'Ferric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-fe', 'Ferritic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-fi', 'Fibric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ft', 'Floatic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-fv', 'Fluvic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-fc', 'Fractic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-fg', 'Fragic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ga', 'Garbic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ge', 'Gelic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gt', 'Gelistagnic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gr', 'Geric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gi', 'Gibbsic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gg', 'Gilgaic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gc', 'Glacic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gl', 'Gleyic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gs', 'Glossic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gz', 'Greyzemic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gm', 'Grumic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gy', 'Gypsic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-gp', 'Gypsiric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ha', 'Haplic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-hm', 'Hemic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-hi', 'Histic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ht', 'Hortic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-hu', 'Humic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-hg', 'Hydragric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-hy', 'Hydric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-hf', 'Hydrophobic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-jl', 'Hyperalic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ja', 'Hyperartefactic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#hypercalcic-jc', 'Hypercalcic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#hypereutric-je', 'Hypereutric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#hypergypsic-jy', 'Hypergypsic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#hypernatric-jn', 'Hypernatric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-jo', 'Hyperorganic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#hypersalic-jz', 'Hypersalic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#hyperspodic-jp', 'Hyperspodic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-im', 'Immissic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ic', 'Inclinic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ia', 'Infraandic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-is', 'Infraspodic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ir', 'Irragric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-il', 'Isolatic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ip', 'Isopteric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ka', 'Kalaic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ll', 'Lamellic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ld', 'Lapiadic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-la', 'Laxic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-le', 'Leptic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-lg', 'Lignic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-lm', 'Limnic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ln', 'Limonic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-lc', 'Linic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-li', 'Lithic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-lh', 'Litholinic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-lx', 'Lixic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-lo', 'Loamic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-lv', 'Luvic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-mg', 'Magnesic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ma', 'Mahic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-mw', 'Mawic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-mz', 'Mazic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-mi', 'Mineralic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-mc', 'Mochipic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-mo', 'Mollic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-mm', 'Mulmic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-mh', 'Murshic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-mu', 'Muusic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-nr', 'Naramic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-na', 'Natric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ne', 'Nechic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#neobrunic-nb', 'Neobrunic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#neocambic-nc', 'Neocambic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ni', 'Nitic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-nv', 'Novic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ng', 'Nudiargic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#nudilithic-nt', 'Nudilithic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#nudinatric-nn', 'Nudinatric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-oh', 'Ochric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-om', 'Ombric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-oc', 'Ornithic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#orthofluvic-of', 'Orthofluvic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-os', 'Ortsteinic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-oa', 'Oxyaquic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-oy', 'Oxygleyic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ph', 'Pachic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pb', 'Panpaic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pe', 'Pellic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-p', 'Pelocrustic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pt', 'Petric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pc', 'Petrocalcic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pd', 'Petroduric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pg', 'Petrogypsic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pp', 'Petroplinthic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ps', 'Petrosalic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-px', 'Pisoplinthic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pi', 'Placic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pa', 'Plaggic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pl', 'Plinthic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-po', 'Posic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pk', 'Pretic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pn', 'Profondic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pr', 'Protic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#protoandic-qa', 'Protoandic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-qg', 'Protoargic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#protocalcic-qc', 'Protocalcic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#protospodic-qp', 'Protospodic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#protovertic-qv', 'Protovertic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-pu', 'Puffic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-py', 'Pyric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-rp', 'Raptic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ra', 'Reductaquic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-rd', 'Reductic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ry', 'Reductigleyic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-rc', 'Relocatic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-rz', 'Rendzic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-rt', 'Retic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-rh', 'Rheic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ro', 'Rhodic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-rk', 'Rockic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ru', 'Rubic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-rs', 'Rustic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sz', 'Salic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sa', 'Sapric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sh', 'Saprolithic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-se', 'Sideralic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sn', 'Silandic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sl', 'Siltic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sk', 'Skeletic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-so', 'Sodic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sv', 'Solimovic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sb', 'Sombric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-si', 'Someric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sd', 'Spodic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sp', 'Spolic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-st', 'Stagnic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sq', 'Subaquatic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-sf', 'Sulfidic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-su', 'Sulphatic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ty', 'Takyric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-te', 'Technic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-tf', 'Tephric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-tr', 'Terric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ti', 'Thionic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-tp', 'Thixotropic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-th', 'Thyric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-td', 'Tidalic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-to', 'Tonguic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-tx', 'Toxic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-tn', 'Transportic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ts', 'Tsitelic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-tu', 'Turbic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-um', 'Umbric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ub', 'Urbic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-uq', 'Uterquic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-vm', 'Vermic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-vr', 'Vertic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-vi', 'Vitric', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-wa', 'Wapnic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-xa', 'Xanthic', 'WRBQualifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-05.html#sec-ye', 'Yermic', 'WRBQualifierValue2022', null);


-- WRBSpecifiers (2006)
-- FEATURE wrbqualifiergrouptype
-- CODELIST INSPIRE 
-- http://inspire.ec.europa.eu/codelist/WRBSpecifierValue (Under review)

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/bathi', 'Bathi', 'WRBSpecifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/cumuli', 'Cumuli', 'WRBSpecifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/endo', 'Endo', 'WRBSpecifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/epi', 'Epi', 'WRBSpecifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/hyper', 'Hyper', 'WRBSpecifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/hypo', 'Hypo', 'WRBSpecifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/ortho', 'Ortho', 'WRBSpecifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/para', 'Para', 'WRBSpecifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/proto', 'Proto', 'WRBSpecifierValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/WRBSpecifierValue/thapto', 'Thapto', 'WRBSpecifierValue', null);



-- WRBSpecifierValue (2022)
-- FEATURE wrbqualifiergrouptype
-- CODELIST ORBL-SOIL
-- https://obrl-soil.github.io/wrbsoil2022/

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Amphi', 'Amphi', 'WRBSpecifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Ano', 'Ano', 'WRBSpecifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Bathy', 'Bathy', 'WRBSpecifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Endo', 'Endo', 'WRBSpecifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Epi', 'Epi', 'WRBSpecifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Kato', 'Kato', 'WRBSpecifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Panto', 'Panto', 'WRBSpecifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Poly', 'Poly', 'WRBSpecifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Supra', 'Supra', 'WRBSpecifierValue2022', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://obrl-soil.github.io/wrbsoil2022/chapter-06.html#specifiers#Thapto', 'Thapto', 'WRBSpecifierValue2022', null);


-- *** INTERNAL *** codelist for managing forms 
-- Define the featuretype
-- FEATURE observableproperty
-- CODELIST for internal management of Qgis forms

-- INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('profileelement', 'profileelement', 'featuretype', null);
-- INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('soilprofile', 'soilprofile', 'featuretype', null);
-- INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('soilderivedobject', 'soilderivedobject', 'featuretype', null);
-- INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('soilsite', 'soilsite', 'featuretype', null);

-- *** INTERNAL *** codelist for managing forms 
-- Define the PhenomenonType
-- FEATURE observableproperty
-- CODELIST for internal management of Qgis forms

-- INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('chemical', 'chemical', 'PhenomenonType', null);
-- INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('biological', 'biological', 'PhenomenonType', null);
-- INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('physical', 'physical', 'PhenomenonType', null);

-- ProcessParameterNameValue
-- FEATURE processparameter
-- CODELIST AGROPRTAL - LOD 
-- https://agroportal.lirmm.fr/ - https://lod.nal.usda.gov/

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/UC_SENSE/sensory_perception_process', 'Sensory Assesment', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/UC_SENSE/perceived_aroma', 'Aroma method', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://lod.nal.usda.gov/nalt/55677', 'Smelling', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/UC_SENSE/perceived_flavor', 'Taste method', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AGFOOD/Q1W-PVK52ZPF-9', 'Gustation', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/UC_SENSE/perceived_visual_stimulus', 'Visual Observation', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/BDG/CountingUnit', 'Counting', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://lod.nal.usda.gov/nalt/28752', 'Estimation', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://lod.nal.usda.gov/nalt/52488', 'Visual Rating', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/CO_350/CO_350:0000001', 'Visual Scoring', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/UC_SENSE/perceived_texture', 'Texture method', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/UC_SENSE/perceived_tactile_stimulus', 'By hand', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/UC_SENSE/perceived_mouthfeel', 'By mouth', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://lod.nal.usda.gov/nalt/31779', 'Computation', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://lod.nal.usda.gov/nalt/302029', 'Calculation', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/AFO/p4794', 'Measurement', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/ONTOBIOTOPE/OBT_000146', 'Field determination', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/ONTOBIOTOPE/OBT_000103', 'Instrumental', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://agroportal.lirmm.fr/ontologies/ONTOBIOTOPE/OBT_001169', 'Laboratory determination', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://lod.nal.usda.gov/nalt/17521', 'Sensor', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://lod.nal.usda.gov/nalt/136977', 'Expert attribution', 'ProcessParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('https://lod.nal.usda.gov/nalt/52488', 'Classificazione, classe, categoria', 'ProcessParameterNameValue', null);


-- ResponsiblePartyRole
-- FEATURE relatedparty
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole

INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/resourceProvider', 'Resource Provider', 'ResponsiblePartyRole', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/custodian', 'Custodian', 'ResponsiblePartyRole', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/owner', 'Owner', 'ResponsiblePartyRole', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/user', 'User', 'ResponsiblePartyRole', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/distributor', 'Distributor', 'ResponsiblePartyRole', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/originator', 'Originator', 'ResponsiblePartyRole', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/pointOfContact', 'Point of Contact', 'ResponsiblePartyRole', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/principalInvestigator', 'Principal Investigator', 'ResponsiblePartyRole', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/processor', 'Processor', 'ResponsiblePartyRole', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/publisher', 'Publisher', 'ResponsiblePartyRole', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/metadata-codelist/ResponsiblePartyRole/author', 'Author', 'ResponsiblePartyRole', null);


----------------------------------------------------------------
-- PARAMETER --
----------------------------------------------------------------


-- SoilSiteParameterNameValue
-- PARAMETER soilsite
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue

-- CHEMICAL
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalAs', 'Arsenic and compounds (as As)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalBa', 'Barium and compounds (as Ba)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalCd', 'Cadmium and compounds (as Cd)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalCr', 'Chromium and compounds (as Cr)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalCo', 'Cobalt and compounds (as Co)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalCu', 'Copper and compounds (as Cu)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalHg', 'Mercury and compounds (as Hg)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalNi', 'Nickel and compounds (as Ni)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalPb', 'Lead and compounds (as Pb)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalTl', 'Thallium and compounds (as Tl)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalZn', 'Zinc and compounds (as Zn)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalSb', 'Antimony and compounds (as Sb)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalV', 'Vanadium and compounds (as V)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/metalMo', 'Molybdenum and compounds (as Mo)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/organometalSn', 'Organotin compounds (as total Sn)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/organometalTributylSn', 'Tributyltin and compounds (total mass)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/organometalTriphenylSn', 'Triphenyltin and compounds (total mass)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/inorganicAsbestos', 'Asbestos', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/inorganicCN', 'Cyanides (as total CN)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/inorganicF', 'Fluorides (as total F)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/aromaticBTEX', 'BTEX', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/aromaticBenzene', 'Benzene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/aromaticToluene', 'Toluene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/aromaticEthylbenzene', 'Ethylbenzene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/aromaticXylene', 'Xylene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/aromaticStyrene', 'Styrene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCBs', 'Polychlorinated biphenyls (PCBs)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB28', 'Polychlorinated biphenyl 28', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB52', 'Polychlorinated biphenyls 52', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB101', 'Polychlorinated biphenyls 101', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB138', 'Polychlorinated biphenyls 138', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB153', 'Polychlorinated biphenyls 153', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB180', 'Polychlorinated biphenyls 180', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB77', 'Polychlorinated biphenyls 77', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB81', 'Polychlorinated biphenyls 81', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB126', 'Polychlorinated biphenyls 126', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB169', 'Polychlorinated biphenyls 169', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB105', 'Polychlorinated biphenyls 105', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB114', 'Polychlorinated biphenyls 114', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB118', 'Polychlorinated biphenyls 118', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB123', 'Polychlorinated biphenyls 123', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB156', 'Polychlorinated biphenyls 156', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB157', 'Polychlorinated biphenyls 157', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB167', 'Polychlorinated biphenyls 167', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCB189', 'Polychlorinated biphenyls 189', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticHCB', 'Hexachlorobenzene (HCB)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPCDD-PCF', 'PCDD+PCDF (dioxines and furans; as Teq)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic2-3-7-8-Tetra-CDD', '2,3,7,8-Tetra-CDD (as concentration ng/kg)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-7-8-Penta-CDD', '1,2,3,7,8-Penta-CDD (as concentration ng/kg)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-4-7-8-Hexa-CDD', '1,2,3,4,7,8-Hexa-CDD (as concentration ng/kg)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-6-7-8-Hexa-CDD', '1,2,3,6,7,8-Hexa-CDD (as concentration ng/kg)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-7-8-9-Hexa-CDD', '1,2,3,7,8,9-Hexa-CDD (as concentration ng/kg)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-3-6-7-8-Hepta-CDD', '1,2,3,3,6,7,8-Hepta-CDD (as concentration ng/kg)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-4-6-7-8-9-Octa-CDD', '1,2,3,4,6,7,8,9-Octa-CDD (as concentration ng/kg)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic2-3-7-8-Tetra-CDF', '2,3,7,8-Tetra-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-7-8-Penta-CDF', '1,2,3,7,8-Penta-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic2-3-4-7-8-Penta-CDF', '2,3,4,7,8-Penta-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-4-7-8-Hexa-CDF', '1,2,3,4,7,8-Hexa-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-6-7-8-Hexa-CDF', '1,2,3,6,7,8-Hexa-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-7-8-9-Hexa-CDF', '1,2,3,7,8,9-Hexa-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic2-3-4-6-7-8-Hexa-CDF', '2,3,4,6,7,8-Hexa-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-4-6-7-8-Hepta-CDF', '1,2,3,4,6,7,8-Hepta-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-4-7-8-9-Hepta-CDF', '1,2,3,4,7,8,9-Hepta-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic1-2-3-4-6-7-8-9-Octa-CDF', '1,2,3,4,6,7,8,9-Octa-CDF (as concentration ng/kg)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticClbenzenes', 'Chlorobenzenes (total)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticTriClbenzenes', 'Trichlorobenzenes', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticPentaClbenzene', 'Pentachlorobenzene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticHCBD', 'Hexachlorobutadiene (HCBD)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticHBB', 'Hexabromobiphenyl (HBB)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromaticBDPE', 'Brominated diphenylether (sum) / Pentabromodiphenylether', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic6-7BDPE', 'Hexabromodiphenyl ether and heptabromodiphenyl ether', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAromatic4-5BDPE', 'Tetrabromodiphenyl ether and Pentabromodiphenyl ether', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticAOX', 'halogenated organic compounds (as AOX)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticC10-13', 'Chloro-alkanes C10-C13', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticTCE', '{Trichloroethylene}', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticPCE', '{Tetrachloroethylene (or Perchloroethylene)}', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticDCM', 'Dichloromethane (DCM)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticTriCM', '{Trichloromethane (chloroform)}', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticEDC', '1,2-dichlorethane (EDC)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticTCM', '{Tetrachloromethane (TCM)}', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticVinylCl', 'Vinylchloride', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/haloAliphaticPFOS-A', 'Perfluorooctane sulfonic (acid and salts) and Perfluorooctane sulfonyl fluoride', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/phenolsTotal', 'Phenols (as total C of phenols)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/phenolsPCP', 'Pentachlorophenol (PCP)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/phenolsClPTotal', 'Chlorophenols (total)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/phenolsNonylP', 'Nonylphenols / (4-nonylphenol)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/phenolsOctylP', '{Octylphenols and octylphenolethoxylates}', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAHsum', 'PAHs sum or report specific releases of', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-BaP', 'Benzo(a)pyrene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-BbF', 'Benzo(b)fluoranthene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-BkF', 'Benzo(k)fluoranthene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-IcP', 'Indeno(1,23-cd)pyrene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-BgP', '{Benzo(g,h,i)perylene}', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-ANT', 'Anthracene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-NAP', 'Naphtalene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-ACY', 'Acenaphthylene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-ACE', 'Acenaphthene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-FLE', 'Fluorene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-PHE', 'Phenanthrene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-FLA', 'Fluoranthene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-PYE', 'Pyrene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-BaA', 'Benzo(a)anthracene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-CHE', 'Chrysene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/PAH-DaA', 'Dibenzo(a,h)anthracene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideAldrin', 'Aldrin', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideDieldrin', 'Dieldrin', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideEndrin', 'Endrin', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideIsodrin', '{Isodrin}', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideOpDDT', 'op-DDT', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticidePpDDT', 'pp-DDT', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideAlHCH', 'alpha-HCH', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideBeHCH', 'beta-HCH', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideDeHCH', 'delta-HCH', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideGaHCH', 'gamma-HCH (Lindan)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideAtrazin', 'Atrazine', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideChlordane', 'Chlordane', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideChlordecone', 'Chlordecone', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideChlorfenvinphos', 'Chlorfenvinphos', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideChlorpyrifos', 'Chlorpyrifos', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideDiuron', 'Diuron', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideEndosulphan', 'Endosulphan', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideHeptachlor', 'Heptachlor', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideMirex', 'Mirex', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideSimazine', 'Simazine', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideToxaphene', 'Toxaphene', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideIsoproturon', 'Isoproturon', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideDEHP', 'Di-(2-ethyl hexyl) phtalate (DEHP)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideTrifluralin', 'Trifluralin', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideAlachlor', 'Alachlor', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/pesticideCyclodiene', 'Cyclodiene pesticides', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/otherMTBE', 'Methyl tertiary-butyl ether (MTBE)', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/otherMineralOil', 'Mineral oil', 'SoilSiteParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilSiteParameterNameValue/otherPhtalatesTotal', 'Phtalates (total)', 'SoilSiteParameterNameValue', null);


-- SoilProfileParameterNameValue
-- PARAMETER soilprofile
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/SoilProfileParameterNameValue

-- CHEMICAL
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilProfileParameterNameValue/carbonStock', 'carbon stock', 'SoilProfileParameterNameValue', null);
-- PHYSICAL
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilProfileParameterNameValue/potentialRootDepth', 'potential root depth', 'SoilProfileParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilProfileParameterNameValue/availableWaterCapacity', 'available water capacity', 'SoilProfileParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilProfileParameterNameValue/waterDrainage', 'water drainage', 'SoilProfileParameterNameValue', null);


-- SoilDerivedObjectParameterNameValue
-- PARAMETER soilderivedobject
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue

-- CHEMICAL
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/carbonStock', 'carbon stock', 'SoilDerivedObjectParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/organicCarbonContent', 'organic carbon content', 'SoilDerivedObjectParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/nitrogenContent', 'nitrogen content', 'SoilDerivedObjectParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/pHValue', 'pH value', 'SoilDerivedObjectParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/cadmiumContent', 'cadmium content', 'SoilDerivedObjectParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/chromiumContent', 'chromium content', 'SoilDerivedObjectParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/copperContent', 'copper content', 'SoilDerivedObjectParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/leadContent', 'lead content', 'SoilDerivedObjectParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/mercuryContent', 'mercury content', 'SoilDerivedObjectParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/nickelContent', 'nickel content', 'SoilDerivedObjectParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/zincContent', 'zinc content', 'SoilDerivedObjectParameterNameValue', null);
-- PHYSICAL
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/potentialRootDepth', 'potential root depth', 'SoilDerivedObjectParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/availableWaterCapacity', 'available water capacity', 'SoilDerivedObjectParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/SoilDerivedObjectParameterNameValue/waterDrainage', 'water drainage', 'SoilDerivedObjectParameterNameValue', null);


-- ProfileElementParameterNameValue
-- PARAMETER profileelement
-- CODELIST INSPIRE
-- http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue

-- CHEMICAL
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue/organicCarbonContent', 'organic carbon content', 'ProfileElementParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue/nitrogenContent', 'nitrogen content', 'ProfileElementParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue/pHValue', 'pH value', 'ProfileElementParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue/cadmiumContent', 'cadmium content', 'ProfileElementParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue/chromiumContent', 'chromium content', 'ProfileElementParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue/copperContent', 'copper content', 'ProfileElementParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue/leadContent', 'lead content', 'ProfileElementParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue/mercuryContent', 'mercury content', 'ProfileElementParameterNameValue', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://inspire.ec.europa.eu/codelist/ProfileElementParameterNameValue/nickelContent', 'nickel content', 'ProfileElementParameterNameValue', null);


-- EncodingType
-- PARAMETER feature
-- CODELIST STA2
-- https://hylkevds.github.io/23-019/23-019.html#location-encodingType-value-codes


--INSERT INTO "codelist" (id, label, definition, collection, featuretype, phenomenon, featuretype_phenomenon, parent) VALUES ('application/geo+json', 'GeoJSON', 'GeoJSON', 'encodingType', null, null, null, null, null);
--INSERT INTO "codelist" (id, label, definition, collection, featuretype, phenomenon, featuretype_phenomenon, parent) VALUES ('application/geopose+json', 'GeoPose', 'GeoPose', 'encodingType', null, null, null, null, null);
--INSERT INTO "codelist" (id, label, definition, collection, featuretype, phenomenon, featuretype_phenomenon, parent) VALUES ('text/plain', 'WKT', 'WKT', 'encodingType', null, null, null, null, null);
--INSERT INTO "codelist" (id, label, definition, collection, featuretype, phenomenon, featuretype_phenomenon, parent) VALUES ('application/geopackage+sqlite3', 'Geopackage', 'Geopackage', 'encodingType', null, null, null, null, null);

-- ResultType
-- PARAMETER Datatstream
-- STA2
-- https://hylkevds.github.io/23-019/23-019.html#location-encodingType-value-codes


INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('Quantity', 'Quantity', 'resultType', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('Category', 'Category', 'resultType', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('Boolean', 'Boolean', 'resultType', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('Count', 'Count', 'resultType', null);
INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('Text', 'Text', 'resultType', null);


--
--INSERT INTO featuretype (id, name, definition, description, properties) VALUES (1, 'Soil Site', 'http://inspire.ec.europa.eu/featureconcept/SoilSite:1', 'An area within a larger survey, study or monitored area, where a specific soil investigation is carried out.', null, null);
--INSERT INTO featuretype (id, name, definition, description, properties) VALUES (2, 'Soil Profile', 'http://inspire.ec.europa.eu/featureconcept/SoilProfile:1', 'A description of the soil that is characterized by a vertical succession of profile elements.', null, null);
--INSERT INTO featuretype (id, name, definition, description, properties) VALUES (3, 'Profile Element', 'http://inspire.ec.europa.eu/featureconcept/ProfileElement:1', 'An abstract spatial object type grouping soil layers and / or horizons for functional/operational aims.', null, null);
--INSERT INTO featuretype (id, name, definition, description, properties) VALUES (4, 'Soil Derived Object', 'http://inspire.ec.europa.eu/featureconcept/SoilDerivedObject:1', 'A spatial object type for representing spatial objects with soil-related property derived from one or more soil and possibly other non soil properties.', null, null);
--

-- 
-- TEST category codes
--INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://placeholder/cat1_01', 'C1_01', 'Category_01', 'Category');
--INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://placeholder/cat1_02', 'C1_02', 'Category_01', 'Category');
--INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://placeholder/cat1_03', 'C1_03', 'Category_01', 'Category');
--INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://placeholder/cat1_04', 'C1_04', 'Category_01', 'Category');
--INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://placeholder/cat1_05', 'C1_05', 'Category_01','Category');

--INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://placeholder/cat2_01', 'C2_01', 'Category_02', 'Category');
--INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://placeholder/cat2_02', 'C2_02', 'Category_02', 'Category');
--INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://placeholder/cat2_03', 'C2_03', 'Category_02', 'Category');
--INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://placeholder/cat2_04', 'C2_04', 'Category_02', 'Category');
--INSERT INTO "codelist" (id, label, collection, collectionset) VALUES ('http://placeholder/cat2_05', 'C2_05', 'Category_02','Category');