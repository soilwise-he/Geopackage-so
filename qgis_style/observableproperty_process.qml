<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.42.1-Münster" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation referencingLayer="observableproperty_process_60287fab_d401_4a81_b78e_ea712c0b4422" layerId="observableproperty_6e6960f3_fff0_4ff2_815e_408ce6535f5e" layerName="observableproperty" providerKey="ogr" referencedLayer="observableproperty_6e6960f3_fff0_4ff2_815e_408ce6535f5e" strength="Association" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=observableproperty" name="observableproperty_observableproperty_process" id="observableproperty_observableproperty_process">
      <fieldRef referencedField="guidkey" referencingField="idobservedproperty"/>
    </relation>
    <relation referencingLayer="observableproperty_process_60287fab_d401_4a81_b78e_ea712c0b4422" layerId="process_a267cbad_1d18_4c38_93aa_7310404430d5" layerName="process" providerKey="ogr" referencedLayer="process_a267cbad_1d18_4c38_93aa_7310404430d5" strength="Association" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=process" name="process_observableproperty_process_2" id="process_observableproperty_process_2">
      <fieldRef referencedField="guidkey" referencingField="idprocess"/>
    </relation>
  </referencedLayers>
  <fieldConfiguration>
    <field name="idprocess" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowAddFeatures"/>
            <Option value="false" type="bool" name="AllowNULL"/>
            <Option value="true" type="bool" name="FetchLimitActive"/>
            <Option value="100" type="int" name="FetchLimitNumber"/>
            <Option value="false" type="bool" name="MapIdentification"/>
            <Option value="false" type="bool" name="ReadOnly"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage_Sicily_Import/GPKG/Sicily_05 - O&amp;M/INSPIRE_SO_12.gpkg|layername=process" type="QString" name="ReferencedLayerDataSource"/>
            <Option value="process_8af8852e_58f2_4e0f_b76d_477e53a3eda7" type="QString" name="ReferencedLayerId"/>
            <Option value="process" type="QString" name="ReferencedLayerName"/>
            <Option value="ogr" type="QString" name="ReferencedLayerProviderKey"/>
            <Option value="process_observableproperty_process_2" type="QString" name="Relation"/>
            <Option value="false" type="bool" name="ShowForm"/>
            <Option value="true" type="bool" name="ShowOpenFormButton"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="idobservedproperty" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowAddFeatures"/>
            <Option value="false" type="bool" name="AllowNULL"/>
            <Option value="true" type="bool" name="FetchLimitActive"/>
            <Option value="100" type="int" name="FetchLimitNumber"/>
            <Option value="false" type="bool" name="MapIdentification"/>
            <Option value="false" type="bool" name="ReadOnly"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=observableproperty" type="QString" name="ReferencedLayerDataSource"/>
            <Option value="observableproperty_6e6960f3_fff0_4ff2_815e_408ce6535f5e" type="QString" name="ReferencedLayerId"/>
            <Option value="observableproperty" type="QString" name="ReferencedLayerName"/>
            <Option value="ogr" type="QString" name="ReferencedLayerProviderKey"/>
            <Option value="observableproperty_observableproperty_process" type="QString" name="Relation"/>
            <Option value="false" type="bool" name="ShowForm"/>
            <Option value="true" type="bool" name="ShowOpenFormButton"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="idprocess" index="0" name="Process"/>
    <alias field="idobservedproperty" index="1" name="Observable Property"/>
  </aliases>
  <splitPolicies>
    <policy policy="DefaultValue" field="idprocess"/>
    <policy policy="DefaultValue" field="idobservedproperty"/>
  </splitPolicies>
  <duplicatePolicies>
    <policy policy="Duplicate" field="idprocess"/>
    <policy policy="Duplicate" field="idobservedproperty"/>
  </duplicatePolicies>
  <defaults>
    <default applyOnUpdate="0" expression="" field="idprocess"/>
    <default applyOnUpdate="0" expression="" field="idobservedproperty"/>
  </defaults>
  <constraints>
    <constraint unique_strength="0" exp_strength="0" constraints="1" field="idprocess" notnull_strength="1"/>
    <constraint unique_strength="0" exp_strength="0" constraints="1" field="idobservedproperty" notnull_strength="1"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="idprocess"/>
    <constraint exp="" desc="" field="idobservedproperty"/>
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
    <labelStyle overrideLabelColor="0" labelColor="" overrideLabelFont="0">
      <labelFont description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" italic="0" strikethrough="0" bold="0" style=""/>
    </labelStyle>
    <attributeEditorField index="1" horizontalStretch="0" showLabel="1" name="idobservedproperty" verticalStretch="0">
      <labelStyle overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelFont="0">
        <labelFont description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" italic="0" strikethrough="0" bold="0" style=""/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField index="0" horizontalStretch="0" showLabel="1" name="idprocess" verticalStretch="0">
      <labelStyle overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelFont="0">
        <labelFont description="MS Shell Dlg 2,9.6,-1,5,50,0,0,0,0,0" underline="0" italic="0" strikethrough="0" bold="0" style=""/>
      </labelStyle>
    </attributeEditorField>
  </attributeEditorForm>
  <editable>
    <field editable="1" name="idobservedproperty"/>
    <field editable="1" name="idprocess"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="idobservedproperty"/>
    <field labelOnTop="0" name="idprocess"/>
  </labelOnTop>
  <reuseLastValue>
    <field reuseLastValue="0" name="idobservedproperty"/>
    <field reuseLastValue="0" name="idprocess"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>'ObsProp: '|| &#xd;
&#xd;
COALESCE(attribute(get_feature&#xd;
&#xd;
						(&#xd;
&#xd;
							'observableproperty',&#xd;
&#xd;
							'guidkey',&#xd;
&#xd;
							"idobservedproperty"&#xd;
&#xd;
						),&#xd;
&#xd;
					'name'&#xd;
&#xd;
					),&#xd;
&#xd;
		'&lt;NULL>')&#xd;
&#xd;
||  ' - Proc:'||' '|| &#xd;&#xd;
COALESCE(attribute(get_feature&#xd;&#xd;
						(&#xd;&#xd;
							'process',&#xd;&#xd;
							'guidkey',&#xd;&#xd;
							"idprocess"&#xd;&#xd;
						),&#xd;&#xd;
					'name'&#xd;&#xd;
					),&#xd;&#xd;
		'&lt;NULL>')&#xd;&#xd;
</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
