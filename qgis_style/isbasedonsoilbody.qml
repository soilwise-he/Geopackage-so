<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" readOnly="0" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation name="soilbody_isbasedonsoilbody" referencingLayer="isbasedonsoilbody_0fe2b047_fcf1_40df_b86f_efd9dbf92cb7" id="soilbody_isbasedonsoilbody" layerName="soilbody" strength="Composition" layerId="soilbody_7cd4f504_2bdb_45db_86b2_e5ae852f3a79" referencedLayer="soilbody_7cd4f504_2bdb_45db_86b2_e5ae852f3a79" providerKey="ogr" dataSource="./SW_15.gpkg|layername=soilbody">
      <fieldRef referencingField="guid_soilbody" referencedField="guid"/>
    </relation>
    <relation name="soilderivedobject_isbasedonsoilbody_2" referencingLayer="isbasedonsoilbody_0fe2b047_fcf1_40df_b86f_efd9dbf92cb7" id="soilderivedobject_isbasedonsoilbody_2" layerName="soilderivedobject" strength="Composition" layerId="soilderivedobject_360aac90_af34_468c_953d_c1813d5ee56a" referencedLayer="soilderivedobject_360aac90_af34_468c_953d_c1813d5ee56a" providerKey="ogr" dataSource="./SW_15.gpkg|layername=soilderivedobject">
      <fieldRef referencingField="guid_soilderivedobject" referencedField="guid"/>
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
            <Option name="Relation" value="soilderivedobject_isbasedonsoilbody_2" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_soilbody" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="false" type="bool"/>
            <Option name="AllowNULL" value="false" type="bool"/>
            <Option name="FetchLimitActive" value="true" type="bool"/>
            <Option name="FetchLimitNumber" value="100" type="int"/>
            <Option name="MapIdentification" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=soilbody" type="QString"/>
            <Option name="ReferencedLayerId" value="soilbody_7cd4f504_2bdb_45db_86b2_e5ae852f3a79" type="QString"/>
            <Option name="ReferencedLayerName" value="soilbody" type="QString"/>
            <Option name="ReferencedLayerProviderKey" value="ogr" type="QString"/>
            <Option name="Relation" value="soilbody_isbasedonsoilbody" type="QString"/>
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
    <alias name="Soil Body" field="guid_soilbody" index="2"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid_soilderivedobject" policy="DefaultValue"/>
    <policy field="guid_soilbody" policy="DefaultValue"/>
  </splitPolicies>
  <mergePolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid_soilderivedobject" policy="DefaultValue"/>
    <policy field="guid_soilbody" policy="DefaultValue"/>
  </mergePolicies>
  <defaults>
    <default field="id" applyOnUpdate="0" expression=""/>
    <default field="guid_soilderivedobject" applyOnUpdate="0" expression=""/>
    <default field="guid_soilbody" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" notnull_strength="1" field="id" constraints="3" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="guid_soilderivedobject" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="guid_soilbody" constraints="1" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="id"/>
    <constraint exp="" desc="" field="guid_soilderivedobject"/>
    <constraint exp="" desc="" field="guid_soilbody"/>
  </constraintExpressions>
  <expressionfields/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
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
    <attributeEditorField name="guid_soilbody" verticalStretch="0" showLabel="1" index="2" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
  </attributeEditorForm>
  <editable>
    <field name="guid_soilbody" editable="1"/>
    <field name="guid_soilderivedobject" editable="1"/>
    <field name="id" editable="1"/>
    <field name="idsoilbody" editable="1"/>
    <field name="idsoilderivedobject" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="guid_soilbody"/>
    <field labelOnTop="0" name="guid_soilderivedobject"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="idsoilbody"/>
    <field labelOnTop="0" name="idsoilderivedobject"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="guid_soilbody" reuseLastValue="0"/>
    <field name="guid_soilderivedobject" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="idsoilbody" reuseLastValue="0"/>
    <field name="idsoilderivedobject" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>'Based on: '&#xd;&#xd;
|| COALESCE(attribute(get_feature&#xd;&#xd;
	(&#xd;&#xd;
		'soilbody',  &#xd;&#xd;
		'guid',&#xd;&#xd;
		"guid_soilbody"&#xd;&#xd;
	) &#xd;&#xd;
	,'inspireid_localid' &#xd;&#xd;
	)&#xd;&#xd;
)</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
