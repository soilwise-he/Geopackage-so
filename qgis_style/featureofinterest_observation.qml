<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.32.3-Lima" readOnly="0" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation id="observableproperty_featureofinterest_observation_2" layerId="observableproperty_ffadcabe_2ed4_426e_a30e_24ae9a61959e" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_02.gpkg|layername=observableproperty" layerName="observableproperty" name="observableproperty_featureofinterest_observation_2" strength="Association" providerKey="ogr" referencingLayer="featureofinterest_observation_52385a1b_50fd_4e02_8dba_db3772a66fb2" referencedLayer="observableproperty_ffadcabe_2ed4_426e_a30e_24ae9a61959e">
      <fieldRef referencingField="idobservedproperty" referencedField="guidkey"/>
    </relation>
    <relation id="observableproperty_process_featureofinterest_observation" layerId="observableproperty_process_b4b42c1d_9080_4ddb_be66_0342a735d3ee" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_02.gpkg|layername=observableproperty_process" layerName="observableproperty_process" name="observableproperty_process_featureofinterest_observation" strength="Association" providerKey="ogr" referencingLayer="featureofinterest_observation_52385a1b_50fd_4e02_8dba_db3772a66fb2" referencedLayer="observableproperty_process_b4b42c1d_9080_4ddb_be66_0342a735d3ee">
      <fieldRef referencingField="idprocess" referencedField="idprocess"/>
      <fieldRef referencingField="idobservedproperty" referencedField="idobservedproperty"/>
    </relation>
    <relation id="process_featureofinterest_observation_3" layerId="process_d5ef7722_d235_45da_b5c3_caf02b32bf77" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_02.gpkg|layername=process" layerName="process" name="process_featureofinterest_observation_3" strength="Association" providerKey="ogr" referencingLayer="featureofinterest_observation_52385a1b_50fd_4e02_8dba_db3772a66fb2" referencedLayer="process_d5ef7722_d235_45da_b5c3_caf02b32bf77">
      <fieldRef referencingField="idprocess" referencedField="guidkey"/>
    </relation>
    <relation id="profileelement_featureofinterest_observation_4" layerId="profileelement_cf074b05_bd55_4c06_8825_c1798c143649" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_02.gpkg|layername=profileelement" layerName="profileelement" name="profileelement_featureofinterest_observation_4" strength="Association" providerKey="ogr" referencingLayer="featureofinterest_observation_52385a1b_50fd_4e02_8dba_db3772a66fb2" referencedLayer="profileelement_cf074b05_bd55_4c06_8825_c1798c143649">
      <fieldRef referencingField="idprofileelement" referencedField="guidkey"/>
    </relation>
    <relation id="soilderivedobject_featureofinterest_observation_5" layerId="soilderivedobject_9f2ea3de_ae8e_4780_a7d1_ddb22a0d94b7" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_02.gpkg|layername=soilderivedobject" layerName="soilderivedobject" name="soilderivedobject_featureofinterest_observation_5" strength="Association" providerKey="ogr" referencingLayer="featureofinterest_observation_52385a1b_50fd_4e02_8dba_db3772a66fb2" referencedLayer="soilderivedobject_9f2ea3de_ae8e_4780_a7d1_ddb22a0d94b7">
      <fieldRef referencingField="idsoilderivedobject" referencedField="guidkey"/>
    </relation>
    <relation id="soilprofile_featureofinterest_observation_6" layerId="soilprofile_9f056252_bcf8_4774_a1db_5ab762d99b81" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_02.gpkg|layername=soilprofile" layerName="soilprofile" name="soilprofile_featureofinterest_observation_6" strength="Association" providerKey="ogr" referencingLayer="featureofinterest_observation_52385a1b_50fd_4e02_8dba_db3772a66fb2" referencedLayer="soilprofile_9f056252_bcf8_4774_a1db_5ab762d99b81">
      <fieldRef referencingField="idsoilprofile" referencedField="guidkey"/>
    </relation>
    <relation id="soilsite_featureofinterest_observation_7" layerId="soilsite_d68666cf_048a_47da_8cf4_55df2ec3eab7" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_02.gpkg|layername=soilsite" layerName="soilsite" name="soilsite_featureofinterest_observation_7" strength="Association" providerKey="ogr" referencingLayer="featureofinterest_observation_52385a1b_50fd_4e02_8dba_db3772a66fb2" referencedLayer="soilsite_d68666cf_048a_47da_8cf4_55df2ec3eab7">
      <fieldRef referencingField="idsoilsite" referencedField="guidkey"/>
    </relation>
  </referencedLayers>
  <fieldConfiguration>
    <field name="id" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="guidkey" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="idsoilsite" configurationFlags="None">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="true" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="98" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=soilsite" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="soilsite_e3549727_0e1f_40b2_88f1_c05b23100cf8" name="ReferencedLayerId" type="QString"/>
            <Option value="soilsite" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="soilsite_featureofinterest_observation_7" name="Relation" type="QString"/>
            <Option value="false" name="ShowForm" type="bool"/>
            <Option value="true" name="ShowOpenFormButton" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="idsoilprofile" configurationFlags="None">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="true" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=soilprofile" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="soilprofile_c4d0eda5_8c57_4d5a_b878_b519662f854d" name="ReferencedLayerId" type="QString"/>
            <Option value="soilprofile" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="soilprofile_featureofinterest_observation_6" name="Relation" type="QString"/>
            <Option value="false" name="ShowForm" type="bool"/>
            <Option value="true" name="ShowOpenFormButton" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="idsoilderivedobject" configurationFlags="None">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="true" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=soilderivedobject" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="soilderivedobject_c8fb35cb_e0f7_4ef9_ba70_c0d4ec7526bd" name="ReferencedLayerId" type="QString"/>
            <Option value="soilderivedobject" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="soilderivedobject_featureofinterest_observation_5" name="Relation" type="QString"/>
            <Option value="false" name="ShowForm" type="bool"/>
            <Option value="true" name="ShowOpenFormButton" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="idprofileelement" configurationFlags="None">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="true" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=profileelement" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="profileelement_a4254ecb_bb34_426d_98c2_c9be19556738" name="ReferencedLayerId" type="QString"/>
            <Option value="profileelement" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="profileelement_featureofinterest_observation_4" name="Relation" type="QString"/>
            <Option value="false" name="ShowForm" type="bool"/>
            <Option value="true" name="ShowOpenFormButton" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="idprocess" configurationFlags="None">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="true" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_02.gpkg|layername=process" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="process_d5ef7722_d235_45da_b5c3_caf02b32bf77" name="ReferencedLayerId" type="QString"/>
            <Option value="process" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="process_featureofinterest_observation_3" name="Relation" type="QString"/>
            <Option value="false" name="ShowForm" type="bool"/>
            <Option value="true" name="ShowOpenFormButton" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="idobservedproperty" configurationFlags="None">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="true" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_02.gpkg|layername=observableproperty" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="observableproperty_ffadcabe_2ed4_426e_a30e_24ae9a61959e" name="ReferencedLayerId" type="QString"/>
            <Option value="observableproperty" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="observableproperty_featureofinterest_observation_2" name="Relation" type="QString"/>
            <Option value="false" name="ShowForm" type="bool"/>
            <Option value="true" name="ShowOpenFormButton" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id" name="" index="0"/>
    <alias field="guidkey" name="" index="1"/>
    <alias field="idsoilsite" name="Soil Site" index="2"/>
    <alias field="idsoilprofile" name="Soil Profile" index="3"/>
    <alias field="idsoilderivedobject" name="Soil Derived Object" index="4"/>
    <alias field="idprofileelement" name="Profile Element" index="5"/>
    <alias field="idprocess" name="Process" index="6"/>
    <alias field="idobservedproperty" name="Property" index="7"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="Duplicate"/>
    <policy field="guidkey" policy="DefaultValue"/>
    <policy field="idsoilsite" policy="DefaultValue"/>
    <policy field="idsoilprofile" policy="DefaultValue"/>
    <policy field="idsoilderivedobject" policy="DefaultValue"/>
    <policy field="idprofileelement" policy="DefaultValue"/>
    <policy field="idprocess" policy="DefaultValue"/>
    <policy field="idobservedproperty" policy="DefaultValue"/>
  </splitPolicies>
  <defaults>
    <default field="id" applyOnUpdate="0" expression=""/>
    <default field="guidkey" applyOnUpdate="0" expression=""/>
    <default field="idsoilsite" applyOnUpdate="0" expression=""/>
    <default field="idsoilprofile" applyOnUpdate="0" expression=""/>
    <default field="idsoilderivedobject" applyOnUpdate="0" expression=""/>
    <default field="idprofileelement" applyOnUpdate="0" expression=""/>
    <default field="idprocess" applyOnUpdate="0" expression=""/>
    <default field="idobservedproperty" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint field="id" exp_strength="0" unique_strength="1" notnull_strength="1" constraints="3"/>
    <constraint field="guidkey" exp_strength="0" unique_strength="1" notnull_strength="0" constraints="2"/>
    <constraint field="idsoilsite" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="idsoilprofile" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="idsoilderivedobject" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="idprofileelement" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="idprocess" exp_strength="0" unique_strength="0" notnull_strength="1" constraints="1"/>
    <constraint field="idobservedproperty" exp_strength="0" unique_strength="0" notnull_strength="1" constraints="1"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" exp="" desc=""/>
    <constraint field="guidkey" exp="" desc=""/>
    <constraint field="idsoilsite" exp="" desc=""/>
    <constraint field="idsoilprofile" exp="" desc=""/>
    <constraint field="idsoilderivedobject" exp="" desc=""/>
    <constraint field="idprofileelement" exp="" desc=""/>
    <constraint field="idprocess" exp="" desc=""/>
    <constraint field="idobservedproperty" exp="" desc=""/>
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
    <labelStyle labelColor="0,0,0,255" overrideLabelFont="0" overrideLabelColor="0">
      <labelFont strikethrough="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0" bold="0"/>
    </labelStyle>
    <attributeEditorField verticalStretch="0" horizontalStretch="0" showLabel="1" name="id" index="0">
      <labelStyle labelColor="0,0,0,255" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont strikethrough="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="0" horizontalStretch="0" columnCount="1" showLabel="1" groupBox="1" name="Feature Of Interest" type="GroupBox" collapsedExpression="" collapsed="1" visibilityExpression="">
      <labelStyle labelColor="0,0,0,255" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont strikethrough="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0" bold="0"/>
      </labelStyle>
      <attributeEditorField verticalStretch="0" horizontalStretch="0" showLabel="1" name="idsoilsite" index="2">
        <labelStyle labelColor="0,0,0,255" overrideLabelFont="0" overrideLabelColor="0">
          <labelFont strikethrough="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField verticalStretch="0" horizontalStretch="0" showLabel="1" name="idsoilprofile" index="3">
        <labelStyle labelColor="0,0,0,255" overrideLabelFont="0" overrideLabelColor="0">
          <labelFont strikethrough="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField verticalStretch="0" horizontalStretch="0" showLabel="1" name="idprofileelement" index="5">
        <labelStyle labelColor="0,0,0,255" overrideLabelFont="0" overrideLabelColor="0">
          <labelFont strikethrough="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField verticalStretch="0" horizontalStretch="0" showLabel="1" name="idsoilderivedobject" index="4">
        <labelStyle labelColor="0,0,0,255" overrideLabelFont="0" overrideLabelColor="0">
          <labelFont strikethrough="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField verticalStretch="0" horizontalStretch="0" showLabel="1" name="idobservedproperty" index="7">
      <labelStyle labelColor="0,0,0,255" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont strikethrough="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField verticalStretch="0" horizontalStretch="0" showLabel="1" name="idprocess" index="6">
      <labelStyle labelColor="0,0,0,255" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont strikethrough="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorRelation nmRelationId="" verticalStretch="0" horizontalStretch="0" showLabel="1" relation="featureofinterest_observation_observation" name="featureofinterest_observation_observation" forceSuppressFormPopup="0" label="Observation" relationWidgetTypeId="relation_editor">
      <labelStyle labelColor="0,0,0,255" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont strikethrough="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0" bold="0"/>
      </labelStyle>
      <editor_configuration type="Map">
        <Option value="false" name="allow_add_child_feature_with_no_geometry" type="bool"/>
        <Option value="AllButtons" name="buttons" type="QString"/>
        <Option value="" name="filter_expression" type="QString"/>
        <Option value="false" name="show_first_feature" type="bool"/>
      </editor_configuration>
    </attributeEditorRelation>
  </attributeEditorForm>
  <editable>
    <field editable="1" name="guidkey"/>
    <field editable="1" name="id"/>
    <field editable="1" name="idobservedproperty"/>
    <field editable="1" name="idprocess"/>
    <field editable="1" name="idprofileelement"/>
    <field editable="1" name="idsensor"/>
    <field editable="1" name="idsoilderivedobject"/>
    <field editable="1" name="idsoilprofile"/>
    <field editable="1" name="idsoilsite"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="guidkey"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="idobservedproperty"/>
    <field labelOnTop="0" name="idprocess"/>
    <field labelOnTop="0" name="idprofileelement"/>
    <field labelOnTop="0" name="idsensor"/>
    <field labelOnTop="0" name="idsoilderivedobject"/>
    <field labelOnTop="0" name="idsoilprofile"/>
    <field labelOnTop="0" name="idsoilsite"/>
  </labelOnTop>
  <reuseLastValue>
    <field reuseLastValue="0" name="guidkey"/>
    <field reuseLastValue="0" name="id"/>
    <field reuseLastValue="0" name="idobservedproperty"/>
    <field reuseLastValue="0" name="idprocess"/>
    <field reuseLastValue="0" name="idprofileelement"/>
    <field reuseLastValue="0" name="idsensor"/>
    <field reuseLastValue="0" name="idsoilderivedobject"/>
    <field reuseLastValue="0" name="idsoilprofile"/>
    <field reuseLastValue="0" name="idsoilsite"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets>
    <widget name="featureofinterest_observation_observation">
      <config type="Map">
        <Option value="false" name="force-suppress-popup" type="bool"/>
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>&#xd;
&#xd;
IF( "idprofileelement" is not null, &#xd;
&#xd;
COALESCE(attribute(get_feature&#xd;
	(&#xd;
		'profileelement',&#xd;
		'guidkey',&#xd;
		"idprofileelement"&#xd;
	) &#xd;
	,'inspireid_localid'&#xd;
	))	&#xd;
&#xd;
||' - ','')&#xd;
&#xd;
&#xd;
&#xd;
||&#xd;
&#xd;
COALESCE(attribute(get_feature&#xd;
	(&#xd;
		'observableproperty',&#xd;
		'guidkey',&#xd;
		"idobservedproperty"&#xd;
	) &#xd;
	,'name'&#xd;
	))		&#xd;
	&#xd;
|| ' - ' ||&#xd;
&#xd;
COALESCE(attribute(get_feature&#xd;
	(&#xd;
		'process',&#xd;
		'guidkey',&#xd;
		"idprocess"&#xd;
	) &#xd;
	,'name'&#xd;
	))</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
