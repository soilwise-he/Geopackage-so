<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Actions|Relations" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation name="observingprocedure_obsprocedure_sensor_2" layerId="observingprocedure_534765fe_7618_4a31_876a_a64ed0eb1d8a" layerName="observingprocedure" referencingLayer="obsprocedure_sensor_8bd41364_cc54_46fb_a02d_fa2883229909" id="observingprocedure_obsprocedure_sensor_2" referencedLayer="observingprocedure_534765fe_7618_4a31_876a_a64ed0eb1d8a" providerKey="ogr" strength="Association" dataSource="./INSPIRE_SO.gpkg|layername=observingprocedure">
      <fieldRef referencedField="guid" referencingField="guid_observingprocedure"/>
    </relation>
    <relation name="sensor_obsprocedure_sensor" layerId="sensor_79fd02b1_ca95_4646_9f26_b845340a9271" layerName="sensor" referencingLayer="obsprocedure_sensor_8bd41364_cc54_46fb_a02d_fa2883229909" id="sensor_obsprocedure_sensor" referencedLayer="sensor_79fd02b1_ca95_4646_9f26_b845340a9271" providerKey="ogr" strength="Association" dataSource="./INSPIRE_SO.gpkg|layername=sensor">
      <fieldRef referencedField="guid" referencingField="guid_sensor"/>
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
    <field name="guid_observingprocedure" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="false" type="bool"/>
            <Option name="AllowNULL" value="false" type="bool"/>
            <Option name="FetchLimitActive" value="true" type="bool"/>
            <Option name="FetchLimitNumber" value="100" type="int"/>
            <Option name="MapIdentification" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=observingprocedure" type="QString"/>
            <Option name="ReferencedLayerId" value="observingprocedure_1aae3844_6744_4f5a_9c0e_6b5f07ffea94" type="QString"/>
            <Option name="ReferencedLayerName" value="observingprocedure" type="QString"/>
            <Option name="ReferencedLayerProviderKey" value="ogr" type="QString"/>
            <Option name="Relation" value="observingprocedure_obsprocedure_sensor_2" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_sensor" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="false" type="bool"/>
            <Option name="AllowNULL" value="false" type="bool"/>
            <Option name="FetchLimitActive" value="true" type="bool"/>
            <Option name="FetchLimitNumber" value="100" type="int"/>
            <Option name="MapIdentification" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=sensor" type="QString"/>
            <Option name="ReferencedLayerId" value="sensor_882086b2_0ca1_4e1e_92bd_1ed513943846" type="QString"/>
            <Option name="ReferencedLayerName" value="sensor" type="QString"/>
            <Option name="ReferencedLayerProviderKey" value="ogr" type="QString"/>
            <Option name="Relation" value="sensor_obsprocedure_sensor" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="id" index="0"/>
    <alias name="Observing Procedure" field="guid_observingprocedure" index="1"/>
    <alias name="Sensor" field="guid_sensor" index="2"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid_observingprocedure" policy="DefaultValue"/>
    <policy field="guid_sensor" policy="DefaultValue"/>
  </splitPolicies>
  <mergePolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid_observingprocedure" policy="DefaultValue"/>
    <policy field="guid_sensor" policy="DefaultValue"/>
  </mergePolicies>
  <defaults>
    <default applyOnUpdate="0" field="id" expression=""/>
    <default applyOnUpdate="0" field="guid_observingprocedure" expression=""/>
    <default applyOnUpdate="0" field="guid_sensor" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" notnull_strength="1" field="id" constraints="3" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="guid_observingprocedure" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="guid_sensor" constraints="1" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" exp="" desc=""/>
    <constraint field="guid_observingprocedure" exp="" desc=""/>
    <constraint field="guid_sensor" exp="" desc=""/>
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
    <labelStyle labelColor="" overrideLabelFont="0" overrideLabelColor="0">
      <labelFont strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" bold="0" italic="0"/>
    </labelStyle>
    <attributeEditorField name="guid_sensor" horizontalStretch="0" verticalStretch="0" showLabel="1" index="2">
      <labelStyle labelColor="" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" bold="0" italic="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="guid_observingprocedure" horizontalStretch="0" verticalStretch="0" showLabel="1" index="1">
      <labelStyle labelColor="" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" bold="0" italic="0"/>
      </labelStyle>
    </attributeEditorField>
  </attributeEditorForm>
  <editable>
    <field name="guid_observingprocedure" editable="1"/>
    <field name="guid_sensor" editable="1"/>
    <field name="id" editable="1"/>
    <field name="idobservingprocedure" editable="1"/>
    <field name="idsensor" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="guid_observingprocedure" labelOnTop="0"/>
    <field name="guid_sensor" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="idobservingprocedure" labelOnTop="0"/>
    <field name="idsensor" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="guid_observingprocedure" reuseLastValue="0"/>
    <field name="guid_sensor" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="idobservingprocedure" reuseLastValue="0"/>
    <field name="idsensor" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>COALESCE(attribute(get_feature&#xd;
	(&#xd;
		'sensor',&#xd;
		'guid',&#xd;
		"guid_sensor"&#xd;
	) &#xd;
	,'name'&#xd;
	)&#xd;
)&#xd;
||' / '||&#xd;
COALESCE(attribute(get_feature&#xd;
	(&#xd;
		'observingprocedure',&#xd;
		'guid',&#xd;
		"guid_observingprocedure"&#xd;
	) &#xd;
	,'name'&#xd;
	)&#xd;
)</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
