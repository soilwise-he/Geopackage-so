<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" readOnly="0" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation name="soilprofile_isderivedfrom" referencingLayer="isderivedfrom_d1587692_50b2_493d_9c1d_dbf142550840" id="soilprofile_isderivedfrom" layerName="soilprofile" strength="Composition" layerId="soilprofile_216eea7c_d015_4117_8c9f_df0b7692b5a7" referencedLayer="soilprofile_216eea7c_d015_4117_8c9f_df0b7692b5a7" providerKey="ogr" dataSource="./SW_15.gpkg|layername=soilprofile">
      <fieldRef referencingField="guid_related" referencedField="guid"/>
    </relation>
    <relation name="soilprofile_isderivedfrom_2" referencingLayer="isderivedfrom_d1587692_50b2_493d_9c1d_dbf142550840" id="soilprofile_isderivedfrom_2" layerName="soilprofile" strength="Composition" layerId="soilprofile_216eea7c_d015_4117_8c9f_df0b7692b5a7" referencedLayer="soilprofile_216eea7c_d015_4117_8c9f_df0b7692b5a7" providerKey="ogr" dataSource="./SW_15.gpkg|layername=soilprofile">
      <fieldRef referencingField="guid_base" referencedField="guid"/>
    </relation>
  </referencedLayers>
  <fieldConfiguration>
    <field name="id" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_base" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="false" type="bool"/>
            <Option name="AllowNULL" value="false" type="bool"/>
            <Option name="FetchLimitActive" value="true" type="bool"/>
            <Option name="FetchLimitNumber" value="100" type="int"/>
            <Option name="MapIdentification" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=soilprofile" type="QString"/>
            <Option name="ReferencedLayerId" value="soilprofile_216eea7c_d015_4117_8c9f_df0b7692b5a7" type="QString"/>
            <Option name="ReferencedLayerName" value="soilprofile" type="QString"/>
            <Option name="ReferencedLayerProviderKey" value="ogr" type="QString"/>
            <Option name="Relation" value="soilprofile_isderivedfrom_2" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_related" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="false" type="bool"/>
            <Option name="AllowNULL" value="false" type="bool"/>
            <Option name="FetchLimitActive" value="true" type="bool"/>
            <Option name="FetchLimitNumber" value="100" type="int"/>
            <Option name="MapIdentification" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=soilprofile" type="QString"/>
            <Option name="ReferencedLayerId" value="soilprofile_216eea7c_d015_4117_8c9f_df0b7692b5a7" type="QString"/>
            <Option name="ReferencedLayerName" value="soilprofile" type="QString"/>
            <Option name="ReferencedLayerProviderKey" value="ogr" type="QString"/>
            <Option name="Relation" value="soilprofile_isderivedfrom" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="id" index="0"/>
    <alias name="Base" field="guid_base" index="1"/>
    <alias name="Related" field="guid_related" index="2"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid_base" policy="DefaultValue"/>
    <policy field="guid_related" policy="DefaultValue"/>
  </splitPolicies>
  <mergePolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid_base" policy="DefaultValue"/>
    <policy field="guid_related" policy="DefaultValue"/>
  </mergePolicies>
  <defaults>
    <default field="id" applyOnUpdate="0" expression=""/>
    <default field="guid_base" applyOnUpdate="0" expression=""/>
    <default field="guid_related" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" notnull_strength="1" field="id" constraints="3" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="guid_base" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="guid_related" constraints="1" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="id"/>
    <constraint exp="" desc="" field="guid_base"/>
    <constraint exp="" desc="" field="guid_related"/>
  </constraintExpressions>
  <expressionfields/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
I moduli di QGIS possono avere una funzione Python che può essere chiamata quando un modulo viene aperto.

Usa questa funzione per aggiungere logica extra ai tuoi moduli.

Inserisci il nome della funzione nel campo "Funzione Python di avvio".

Segue un esempio:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
geom = feature.geometry()
control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>tablayout</editorlayout>
  <attributeEditorForm>
    <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
      <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
    </labelStyle>
    <attributeEditorField name="guid_base" verticalStretch="0" showLabel="1" index="1" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="guid_related" verticalStretch="0" showLabel="1" index="2" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
  </attributeEditorForm>
  <editable>
    <field name="base_id" editable="1"/>
    <field name="guid_base" editable="1"/>
    <field name="guid_related" editable="1"/>
    <field name="id" editable="1"/>
    <field name="related_id" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="base_id"/>
    <field labelOnTop="0" name="guid_base"/>
    <field labelOnTop="0" name="guid_related"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="related_id"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="base_id" reuseLastValue="1"/>
    <field name="guid_base" reuseLastValue="0"/>
    <field name="guid_related" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="related_id" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>'DER: '||&#xd;&#xd;
COALESCE(attribute(get_feature&#xd;&#xd;
(&#xd;&#xd;
	'soilprofile',  &#xd;&#xd;
	'guid',&#xd;&#xd;
	"guid_base" &#xd;&#xd;
) &#xd;&#xd;
,'localidentifier' &#xd;&#xd;
))&#xd;&#xd;
|| ' - OBS: '||&#xd;&#xd;
COALESCE(attribute(get_feature&#xd;&#xd;
(&#xd;&#xd;
	'soilprofile',  &#xd;&#xd;
	'guid',&#xd;&#xd;
	"guid_related" &#xd;&#xd;
) &#xd;&#xd;
,'localidentifier' &#xd;&#xd;
))&#xd;&#xd;
</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
