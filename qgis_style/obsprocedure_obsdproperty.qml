<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" readOnly="0" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Actions|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation referencedLayer="observedproperty_4583a462_9bb1_4d18_abb5_5a7132130724" layerId="observedproperty_4583a462_9bb1_4d18_abb5_5a7132130724" name="observedproperty_obsprocedure_obsdproperty" strength="Association" layerName="observedproperty" providerKey="ogr" referencingLayer="obsprocedure_obsdproperty_99bb000d_8599_49c6_afd7_e5ac2846504a" id="observedproperty_obsprocedure_obsdproperty" dataSource="./SoilWise.gpkg|layername=observedproperty">
      <fieldRef referencingField="guid_observedproperty" referencedField="guid"/>
    </relation>
    <relation referencedLayer="observingprocedure_a78a1ea5_7232_4ef2_834f_608a51aca853" layerId="observingprocedure_a78a1ea5_7232_4ef2_834f_608a51aca853" name="observingprocedure_obsprocedure_obsdproperty_2" strength="Association" layerName="observingprocedure" providerKey="ogr" referencingLayer="obsprocedure_obsdproperty_99bb000d_8599_49c6_afd7_e5ac2846504a" id="observingprocedure_obsprocedure_obsdproperty_2" dataSource="./SoilWise.gpkg|layername=observingprocedure">
      <fieldRef referencingField="guid_observingprocedure" referencedField="guid"/>
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
            <Option name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/UPLOAD_NEXT/SoilWise_empty/SoilWise.gpkg|layername=observingprocedure" type="QString"/>
            <Option name="ReferencedLayerId" value="observingprocedure_a78a1ea5_7232_4ef2_834f_608a51aca853" type="QString"/>
            <Option name="ReferencedLayerName" value="observingprocedure" type="QString"/>
            <Option name="ReferencedLayerProviderKey" value="ogr" type="QString"/>
            <Option name="Relation" value="observingprocedure_obsprocedure_obsdproperty_2" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_observedproperty" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="false" type="bool"/>
            <Option name="AllowNULL" value="false" type="bool"/>
            <Option name="FetchLimitActive" value="true" type="bool"/>
            <Option name="FetchLimitNumber" value="100" type="int"/>
            <Option name="MapIdentification" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/UPLOAD_NEXT/SoilWise_empty/SoilWise.gpkg|layername=observedproperty" type="QString"/>
            <Option name="ReferencedLayerId" value="observedproperty_4583a462_9bb1_4d18_abb5_5a7132130724" type="QString"/>
            <Option name="ReferencedLayerName" value="observedproperty" type="QString"/>
            <Option name="ReferencedLayerProviderKey" value="ogr" type="QString"/>
            <Option name="Relation" value="observedproperty_obsprocedure_obsdproperty" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id" name="" index="0"/>
    <alias field="guid_observingprocedure" name="Observing Procedure" index="1"/>
    <alias field="guid_observedproperty" name="Observed Property" index="2"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid_observingprocedure" policy="DefaultValue"/>
    <policy field="guid_observedproperty" policy="DefaultValue"/>
  </splitPolicies>
  <mergePolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid_observingprocedure" policy="DefaultValue"/>
    <policy field="guid_observedproperty" policy="DefaultValue"/>
  </mergePolicies>
  <defaults>
    <default field="id" expression="" applyOnUpdate="0"/>
    <default field="guid_observingprocedure" expression="" applyOnUpdate="0"/>
    <default field="guid_observedproperty" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint constraints="3" unique_strength="1" field="id" notnull_strength="1" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" field="guid_observingprocedure" notnull_strength="1" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" field="guid_observedproperty" notnull_strength="1" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" exp="" desc=""/>
    <constraint field="guid_observingprocedure" exp="" desc=""/>
    <constraint field="guid_observedproperty" exp="" desc=""/>
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
    <attributeEditorField name="guid_observedproperty" showLabel="1" horizontalStretch="0" verticalStretch="0" index="2">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0" bold="0" style="" italic="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="guid_observingprocedure" showLabel="1" horizontalStretch="0" verticalStretch="0" index="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0" bold="0" style="" italic="0"/>
      </labelStyle>
    </attributeEditorField>
  </attributeEditorForm>
  <editable>
    <field name="guid_observedproperty" editable="1"/>
    <field name="guid_observingprocedure" editable="1"/>
    <field name="id" editable="1"/>
    <field name="idobservedproperty" editable="1"/>
    <field name="idobservingprocedure" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="guid_observedproperty" labelOnTop="0"/>
    <field name="guid_observingprocedure" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="idobservedproperty" labelOnTop="0"/>
    <field name="idobservingprocedure" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="guid_observedproperty" reuseLastValue="0"/>
    <field name="guid_observingprocedure" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="idobservedproperty" reuseLastValue="0"/>
    <field name="idobservingprocedure" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>COALESCE(attribute(get_feature&#xd;
	(&#xd;
		'observedproperty',&#xd;
		'guid',&#xd;
		"guid_observedproperty"&#xd;
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
