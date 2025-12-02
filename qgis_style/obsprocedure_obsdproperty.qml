<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" readOnly="0" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Actions|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation name="observedproperty_obsprocedure_obsdproperty" providerKey="ogr" layerId="observedproperty_c1a157e8_71be_4f91_8cc9_36863463e356" referencingLayer="obsprocedure_obsdproperty_b0ff1ce9_71c8_4943_afca_23d8a3aa1d7c" referencedLayer="observedproperty_c1a157e8_71be_4f91_8cc9_36863463e356" layerName="observedproperty" id="observedproperty_obsprocedure_obsdproperty" strength="Association" dataSource="./SW_19.gpkg|layername=observedproperty">
      <fieldRef referencedField="guid" referencingField="guid_observedproperty"/>
    </relation>
    <relation name="observingprocedure_obsprocedure_obsdproperty_2" providerKey="ogr" layerId="observingprocedure_f02f2674_8c6a_45c2_b4b5_80ff23a72147" referencingLayer="obsprocedure_obsdproperty_b0ff1ce9_71c8_4943_afca_23d8a3aa1d7c" referencedLayer="observingprocedure_f02f2674_8c6a_45c2_b4b5_80ff23a72147" layerName="observingprocedure" id="observingprocedure_obsprocedure_obsdproperty_2" strength="Composition" dataSource="./SW_19.gpkg|layername=observingprocedure">
      <fieldRef referencedField="guid" referencingField="guid_observingprocedure"/>
    </relation>
  </referencedLayers>
  <fieldConfiguration>
    <field name="id" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_observingprocedure" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" type="bool" value="false"/>
            <Option name="AllowNULL" type="bool" value="false"/>
            <Option name="FetchLimitActive" type="bool" value="true"/>
            <Option name="FetchLimitNumber" type="int" value="100"/>
            <Option name="MapIdentification" type="bool" value="false"/>
            <Option name="ReadOnly" type="bool" value="false"/>
            <Option name="ReferencedLayerDataSource" type="QString" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_19.gpkg|layername=observingprocedure"/>
            <Option name="ReferencedLayerId" type="QString" value="observingprocedure_f02f2674_8c6a_45c2_b4b5_80ff23a72147"/>
            <Option name="ReferencedLayerName" type="QString" value="observingprocedure"/>
            <Option name="ReferencedLayerProviderKey" type="QString" value="ogr"/>
            <Option name="Relation" type="QString" value="observingprocedure_obsprocedure_obsdproperty_2"/>
            <Option name="ShowForm" type="bool" value="false"/>
            <Option name="ShowOpenFormButton" type="bool" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_observedproperty" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" type="bool" value="false"/>
            <Option name="AllowNULL" type="bool" value="false"/>
            <Option name="FetchLimitActive" type="bool" value="true"/>
            <Option name="FetchLimitNumber" type="int" value="100"/>
            <Option name="MapIdentification" type="bool" value="false"/>
            <Option name="ReadOnly" type="bool" value="false"/>
            <Option name="ReferencedLayerDataSource" type="QString" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_19.gpkg|layername=observedproperty"/>
            <Option name="ReferencedLayerId" type="QString" value="observedproperty_c1a157e8_71be_4f91_8cc9_36863463e356"/>
            <Option name="ReferencedLayerName" type="QString" value="observedproperty"/>
            <Option name="ReferencedLayerProviderKey" type="QString" value="ogr"/>
            <Option name="Relation" type="QString" value="observedproperty_obsprocedure_obsdproperty"/>
            <Option name="ShowForm" type="bool" value="false"/>
            <Option name="ShowOpenFormButton" type="bool" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="id" index="0"/>
    <alias name="Observing Procedure" field="guid_observingprocedure" index="1"/>
    <alias name="Observed Property" field="guid_observedproperty" index="2"/>
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
    <constraint notnull_strength="1" field="id" constraints="3" unique_strength="1" exp_strength="0"/>
    <constraint notnull_strength="1" field="guid_observingprocedure" constraints="1" unique_strength="0" exp_strength="0"/>
    <constraint notnull_strength="1" field="guid_observedproperty" constraints="1" unique_strength="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="id" desc=""/>
    <constraint exp="" field="guid_observingprocedure" desc=""/>
    <constraint exp="" field="guid_observedproperty" desc=""/>
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
    <labelStyle overrideLabelColor="0" labelColor="" overrideLabelFont="0">
      <labelFont italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" style="" bold="0" underline="0"/>
    </labelStyle>
    <attributeEditorContainer name="ID" collapsedExpression="" groupBox="1" type="GroupBox" visibilityExpression="" verticalStretch="0" collapsedExpressionEnabled="0" showLabel="1" visibilityExpressionEnabled="0" horizontalStretch="0" collapsed="1" columnCount="1">
      <labelStyle overrideLabelColor="0" labelColor="" overrideLabelFont="0">
        <labelFont italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" style="" bold="0" underline="0"/>
      </labelStyle>
      <attributeEditorField name="id" verticalStretch="0" showLabel="1" index="0" horizontalStretch="0">
        <labelStyle overrideLabelColor="0" labelColor="" overrideLabelFont="0">
          <labelFont italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" style="" bold="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField name="guid_observedproperty" verticalStretch="0" showLabel="1" index="2" horizontalStretch="0">
      <labelStyle overrideLabelColor="0" labelColor="" overrideLabelFont="0">
        <labelFont italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" style="" bold="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="guid_observingprocedure" verticalStretch="0" showLabel="1" index="1" horizontalStretch="0">
      <labelStyle overrideLabelColor="0" labelColor="" overrideLabelFont="0">
        <labelFont italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" style="" bold="0" underline="0"/>
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
