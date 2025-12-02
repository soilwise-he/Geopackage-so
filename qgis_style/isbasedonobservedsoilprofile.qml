<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" readOnly="0" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation name="soilderivedobject_isbasedonobservedsoilprofile_2" referencingLayer="isbasedonobservedsoilprofile_3547b23c_ba19_4ae4_8d86_c20d2c551fca" id="soilderivedobject_isbasedonobservedsoilprofile_2" layerName="soilderivedobject" strength="Composition" layerId="soilderivedobject_360aac90_af34_468c_953d_c1813d5ee56a" referencedLayer="soilderivedobject_360aac90_af34_468c_953d_c1813d5ee56a" providerKey="ogr" dataSource="./SW_15.gpkg|layername=soilderivedobject">
      <fieldRef referencingField="guid_soilderivedobject" referencedField="guid"/>
    </relation>
    <relation name="soilprofile_isbasedonobservedsoilprofile" referencingLayer="isbasedonobservedsoilprofile_3547b23c_ba19_4ae4_8d86_c20d2c551fca" id="soilprofile_isbasedonobservedsoilprofile" layerName="soilprofile" strength="Composition" layerId="soilprofile_216eea7c_d015_4117_8c9f_df0b7692b5a7" referencedLayer="soilprofile_216eea7c_d015_4117_8c9f_df0b7692b5a7" providerKey="ogr" dataSource="./SW_15.gpkg|layername=soilprofile">
      <fieldRef referencingField="guid_soilprofile" referencedField="guid"/>
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
    <field name="guid_soilderivedobject" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="false" type="bool"/>
            <Option name="AllowNULL" value="false" type="bool"/>
            <Option name="FetchLimitActive" value="true" type="bool"/>
            <Option name="FetchLimitNumber" value="100" type="int"/>
            <Option name="MapIdentification" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=soilderivedobject" type="QString"/>
            <Option name="ReferencedLayerId" value="soilderivedobject_360aac90_af34_468c_953d_c1813d5ee56a" type="QString"/>
            <Option name="ReferencedLayerName" value="soilderivedobject" type="QString"/>
            <Option name="ReferencedLayerProviderKey" value="ogr" type="QString"/>
            <Option name="Relation" value="soilderivedobject_isbasedonobservedsoilprofile_2" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_soilprofile" configurationFlags="NoFlag">
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
            <Option name="Relation" value="soilprofile_isbasedonobservedsoilprofile" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="id" index="0"/>
    <alias name="Soil Derived Object" field="guid_soilderivedobject" index="1"/>
    <alias name="Soil Profile" field="guid_soilprofile" index="2"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid_soilderivedobject" policy="DefaultValue"/>
    <policy field="guid_soilprofile" policy="DefaultValue"/>
  </splitPolicies>
  <mergePolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid_soilderivedobject" policy="DefaultValue"/>
    <policy field="guid_soilprofile" policy="DefaultValue"/>
  </mergePolicies>
  <defaults>
    <default field="id" applyOnUpdate="0" expression=""/>
    <default field="guid_soilderivedobject" applyOnUpdate="0" expression=""/>
    <default field="guid_soilprofile" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" notnull_strength="1" field="id" constraints="3" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="guid_soilderivedobject" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="guid_soilprofile" constraints="1" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="id"/>
    <constraint exp="" desc="" field="guid_soilderivedobject"/>
    <constraint exp="" desc="" field="guid_soilprofile"/>
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
    <attributeEditorField name="guid_soilderivedobject" verticalStretch="0" showLabel="1" index="1" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="guid_soilprofile" verticalStretch="0" showLabel="1" index="2" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
  </attributeEditorForm>
  <editable>
    <field name="guid_soilderivedobject" editable="1"/>
    <field name="guid_soilprofile" editable="1"/>
    <field name="id" editable="1"/>
    <field name="idsoilderivedobject" editable="1"/>
    <field name="idsoilprofile" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="guid_soilderivedobject"/>
    <field labelOnTop="0" name="guid_soilprofile"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="idsoilderivedobject"/>
    <field labelOnTop="0" name="idsoilprofile"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="guid_soilderivedobject" reuseLastValue="0"/>
    <field name="guid_soilprofile" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="idsoilderivedobject" reuseLastValue="0"/>
    <field name="idsoilprofile" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>'Based on '|| COALESCE(attribute(get_feature&#xd;&#xd;
	(&#xd;&#xd;
		'soilprofile',  &#xd;&#xd;
		'guid',&#xd;&#xd;
		"guid_soilprofile"&#xd;&#xd;
	) &#xd;&#xd;
	,'inspireid_localid' &#xd;&#xd;
	)&#xd;&#xd;
)&#xd;&#xd;
</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
