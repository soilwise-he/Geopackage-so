<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" readOnly="0" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Actions|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation referencedLayer="soilderivedobject_e3ae564c_8634_441c_b897_39e1e6a54f63" layerId="soilderivedobject_e3ae564c_8634_441c_b897_39e1e6a54f63" name="soilderivedobject_isbasedonsoilderivedobject" strength="Composition" layerName="soilderivedobject" providerKey="ogr" referencingLayer="isbasedonsoilderivedobject_4b444353_c5e1_4fee_9520_06b4b6612c65" id="soilderivedobject_isbasedonsoilderivedobject" dataSource="./SoilWise.gpkg|layername=soilderivedobject">
      <fieldRef referencingField="guid_related" referencedField="guid"/>
    </relation>
    <relation referencedLayer="soilderivedobject_e3ae564c_8634_441c_b897_39e1e6a54f63" layerId="soilderivedobject_e3ae564c_8634_441c_b897_39e1e6a54f63" name="soilderivedobject_isbasedonsoilderivedobject_2" strength="Composition" layerName="soilderivedobject" providerKey="ogr" referencingLayer="isbasedonsoilderivedobject_4b444353_c5e1_4fee_9520_06b4b6612c65" id="soilderivedobject_isbasedonsoilderivedobject_2" dataSource="./SoilWise.gpkg|layername=soilderivedobject">
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
            <Option name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/UPLOAD_NEXT/SoilWise_empty/SoilWise.gpkg|layername=soilderivedobject" type="QString"/>
            <Option name="ReferencedLayerId" value="soilderivedobject_e3ae564c_8634_441c_b897_39e1e6a54f63" type="QString"/>
            <Option name="ReferencedLayerName" value="soilderivedobject" type="QString"/>
            <Option name="ReferencedLayerProviderKey" value="ogr" type="QString"/>
            <Option name="Relation" value="soilderivedobject_isbasedonsoilderivedobject_2" type="QString"/>
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
            <Option name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/UPLOAD_NEXT/SoilWise_empty/SoilWise.gpkg|layername=soilderivedobject" type="QString"/>
            <Option name="ReferencedLayerId" value="soilderivedobject_e3ae564c_8634_441c_b897_39e1e6a54f63" type="QString"/>
            <Option name="ReferencedLayerName" value="soilderivedobject" type="QString"/>
            <Option name="ReferencedLayerProviderKey" value="ogr" type="QString"/>
            <Option name="Relation" value="soilderivedobject_isbasedonsoilderivedobject" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id" name="" index="0"/>
    <alias field="guid_base" name="Base Id" index="1"/>
    <alias field="guid_related" name="Related Id" index="2"/>
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
    <default field="id" expression="" applyOnUpdate="0"/>
    <default field="guid_base" expression="" applyOnUpdate="0"/>
    <default field="guid_related" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint constraints="3" unique_strength="1" field="id" notnull_strength="1" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" field="guid_base" notnull_strength="1" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" field="guid_related" notnull_strength="1" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" exp="" desc=""/>
    <constraint field="guid_base" exp="" desc=""/>
    <constraint field="guid_related" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
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
    <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
      <labelFont description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0" bold="0" style="" italic="0"/>
    </labelStyle>
    <attributeEditorField name="guid_base" showLabel="1" horizontalStretch="0" verticalStretch="0" index="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0" bold="0" style="" italic="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="guid_related" showLabel="1" horizontalStretch="0" verticalStretch="0" index="2">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0" bold="0" style="" italic="0"/>
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
    <field name="base_id" labelOnTop="0"/>
    <field name="guid_base" labelOnTop="0"/>
    <field name="guid_related" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="related_id" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="base_id" reuseLastValue="0"/>
    <field name="guid_base" reuseLastValue="0"/>
    <field name="guid_related" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="related_id" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>'Derived From: '&#xd;&#xd;
|| COALESCE(attribute(get_feature&#xd;&#xd;
	(&#xd;&#xd;
		'soilderivedobject',  &#xd;&#xd;
		'guidkey',&#xd;&#xd;
		"base_id"&#xd;&#xd;
	) &#xd;&#xd;
	,'inspireid_localid' &#xd;&#xd;
	)&#xd;&#xd;
)</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
