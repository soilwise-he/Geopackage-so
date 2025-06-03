<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis readOnly="0" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations" version="3.42.1-Münster">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation id="observableproperty_datastream_3" layerId="observableproperty_80bc3cf3_dd56_4c7f_811d_6801d10b422e" layerName="observableproperty" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=observableproperty" providerKey="ogr" referencedLayer="observableproperty_80bc3cf3_dd56_4c7f_811d_6801d10b422e" strength="Association" referencingLayer="featureofinterest_observation_684aa636_d230_4d23_82c4_0d908fddb4db" name="observableproperty_datastream_3">
      <fieldRef referencingField="idobservedproperty" referencedField="guidkey"/>
    </relation>
    <relation id="observableproperty_featureofinterest_observation_2" layerId="observableproperty_80bc3cf3_dd56_4c7f_811d_6801d10b422e" layerName="observableproperty" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=observableproperty" providerKey="ogr" referencedLayer="observableproperty_80bc3cf3_dd56_4c7f_811d_6801d10b422e" strength="Association" referencingLayer="featureofinterest_observation_684aa636_d230_4d23_82c4_0d908fddb4db" name="observableproperty_featureofinterest_observation_2">
      <fieldRef referencingField="idobservedproperty" referencedField="guidkey"/>
    </relation>
    <relation id="observableproperty_process_datastream" layerId="observableproperty_process_d5eb81d2_4d90_4e85_997f_626e794affe8" layerName="observableproperty_process" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=observableproperty_process" providerKey="ogr" referencedLayer="observableproperty_process_d5eb81d2_4d90_4e85_997f_626e794affe8" strength="Association" referencingLayer="featureofinterest_observation_684aa636_d230_4d23_82c4_0d908fddb4db" name="observableproperty_process_datastream">
      <fieldRef referencingField="idprocess" referencedField="idprocess"/>
      <fieldRef referencingField="idobservedproperty" referencedField="idobservedproperty"/>
    </relation>
    <relation id="observableproperty_process_featureofinterest_observation" layerId="observableproperty_process_d5eb81d2_4d90_4e85_997f_626e794affe8" layerName="observableproperty_process" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=observableproperty_process" providerKey="ogr" referencedLayer="observableproperty_process_d5eb81d2_4d90_4e85_997f_626e794affe8" strength="Association" referencingLayer="featureofinterest_observation_684aa636_d230_4d23_82c4_0d908fddb4db" name="observableproperty_process_featureofinterest_observation">
      <fieldRef referencingField="idprocess" referencedField="idprocess"/>
      <fieldRef referencingField="idobservedproperty" referencedField="idobservedproperty"/>
    </relation>
    <relation id="process_datastream_4" layerId="process_73bce401_72ca_44b4_8a45_db9b7dc5bed3" layerName="process" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=process" providerKey="ogr" referencedLayer="process_73bce401_72ca_44b4_8a45_db9b7dc5bed3" strength="Association" referencingLayer="featureofinterest_observation_684aa636_d230_4d23_82c4_0d908fddb4db" name="process_datastream_4">
      <fieldRef referencingField="idprocess" referencedField="guidkey"/>
    </relation>
    <relation id="process_featureofinterest_observation_3" layerId="process_73bce401_72ca_44b4_8a45_db9b7dc5bed3" layerName="process" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=process" providerKey="ogr" referencedLayer="process_73bce401_72ca_44b4_8a45_db9b7dc5bed3" strength="Association" referencingLayer="featureofinterest_observation_684aa636_d230_4d23_82c4_0d908fddb4db" name="process_featureofinterest_observation_3">
      <fieldRef referencingField="idprocess" referencedField="guidkey"/>
    </relation>
    <relation id="profileelement_datastream_6" layerId="profileelement_0de35708_7a95_4607_a498_6af0f61b7be8" layerName="profileelement" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=profileelement" providerKey="ogr" referencedLayer="profileelement_0de35708_7a95_4607_a498_6af0f61b7be8" strength="Association" referencingLayer="featureofinterest_observation_684aa636_d230_4d23_82c4_0d908fddb4db" name="profileelement_datastream_6">
      <fieldRef referencingField="idprofileelement" referencedField="guidkey"/>
    </relation>
    <relation id="profileelement_featureofinterest_observation_4" layerId="profileelement_0de35708_7a95_4607_a498_6af0f61b7be8" layerName="profileelement" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=profileelement" providerKey="ogr" referencedLayer="profileelement_0de35708_7a95_4607_a498_6af0f61b7be8" strength="Association" referencingLayer="featureofinterest_observation_684aa636_d230_4d23_82c4_0d908fddb4db" name="profileelement_featureofinterest_observation_4">
      <fieldRef referencingField="idprofileelement" referencedField="guidkey"/>
    </relation>
    <relation id="soilderivedobject_datastream_7" layerId="soilderivedobject_fba41851_3118_42cd_ac68_260af4570a73" layerName="soilderivedobject" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=soilderivedobject" providerKey="ogr" referencedLayer="soilderivedobject_fba41851_3118_42cd_ac68_260af4570a73" strength="Association" referencingLayer="featureofinterest_observation_684aa636_d230_4d23_82c4_0d908fddb4db" name="soilderivedobject_datastream_7">
      <fieldRef referencingField="idsoilderivedobject" referencedField="guidkey"/>
    </relation>
    <relation id="soilderivedobject_featureofinterest_observation_5" layerId="soilderivedobject_fba41851_3118_42cd_ac68_260af4570a73" layerName="soilderivedobject" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=soilderivedobject" providerKey="ogr" referencedLayer="soilderivedobject_fba41851_3118_42cd_ac68_260af4570a73" strength="Association" referencingLayer="featureofinterest_observation_684aa636_d230_4d23_82c4_0d908fddb4db" name="soilderivedobject_featureofinterest_observation_5">
      <fieldRef referencingField="idsoilderivedobject" referencedField="guidkey"/>
    </relation>
    <relation id="soilprofile_datastream_8" layerId="soilprofile_dd637abb_0700_4787_a09b_1674cab884bf" layerName="soilprofile" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=soilprofile" providerKey="ogr" referencedLayer="soilprofile_dd637abb_0700_4787_a09b_1674cab884bf" strength="Association" referencingLayer="featureofinterest_observation_684aa636_d230_4d23_82c4_0d908fddb4db" name="soilprofile_datastream_8">
      <fieldRef referencingField="idsoilprofile" referencedField="guidkey"/>
    </relation>
    <relation id="soilprofile_featureofinterest_observation_6" layerId="soilprofile_dd637abb_0700_4787_a09b_1674cab884bf" layerName="soilprofile" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=soilprofile" providerKey="ogr" referencedLayer="soilprofile_dd637abb_0700_4787_a09b_1674cab884bf" strength="Association" referencingLayer="featureofinterest_observation_684aa636_d230_4d23_82c4_0d908fddb4db" name="soilprofile_featureofinterest_observation_6">
      <fieldRef referencingField="idsoilprofile" referencedField="guidkey"/>
    </relation>
    <relation id="soilsite_datastream_9" layerId="soilsite_0713ca23_7a9c_4af3_88a8_9b9499f56ad2" layerName="soilsite" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=soilsite" providerKey="ogr" referencedLayer="soilsite_0713ca23_7a9c_4af3_88a8_9b9499f56ad2" strength="Association" referencingLayer="featureofinterest_observation_684aa636_d230_4d23_82c4_0d908fddb4db" name="soilsite_datastream_9">
      <fieldRef referencingField="idsoilsite" referencedField="guidkey"/>
    </relation>
    <relation id="soilsite_featureofinterest_observation_7" layerId="soilsite_0713ca23_7a9c_4af3_88a8_9b9499f56ad2" layerName="soilsite" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=soilsite" providerKey="ogr" referencedLayer="soilsite_0713ca23_7a9c_4af3_88a8_9b9499f56ad2" strength="Association" referencingLayer="featureofinterest_observation_684aa636_d230_4d23_82c4_0d908fddb4db" name="soilsite_featureofinterest_observation_7">
      <fieldRef referencingField="idsoilsite" referencedField="guidkey"/>
    </relation>
  </referencedLayers>
  <fieldConfiguration>
    <field configurationFlags="NoFlag" name="id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="guidkey">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="idsoilsite">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowAddFeatures"/>
            <Option value="true" type="bool" name="AllowNULL"/>
            <Option value="true" type="bool" name="FetchLimitActive"/>
            <Option value="100" type="int" name="FetchLimitNumber"/>
            <Option value="false" type="bool" name="MapIdentification"/>
            <Option value="false" type="bool" name="ReadOnly"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage_Sicily_Import/GPKG/Sicily_05 - O&amp;M/INSPIRE_SO_12.gpkg|layername=soilsite" type="QString" name="ReferencedLayerDataSource"/>
            <Option value="soilsite_84472509_40ed_4107_a1e5_08e495974a1d" type="QString" name="ReferencedLayerId"/>
            <Option value="soilsite" type="QString" name="ReferencedLayerName"/>
            <Option value="ogr" type="QString" name="ReferencedLayerProviderKey"/>
            <Option value="soilsite_datastream_9" type="QString" name="Relation"/>
            <Option value="false" type="bool" name="ShowForm"/>
            <Option value="true" type="bool" name="ShowOpenFormButton"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="idsoilprofile">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowAddFeatures"/>
            <Option value="true" type="bool" name="AllowNULL"/>
            <Option value="true" type="bool" name="FetchLimitActive"/>
            <Option value="100" type="int" name="FetchLimitNumber"/>
            <Option value="false" type="bool" name="MapIdentification"/>
            <Option value="false" type="bool" name="ReadOnly"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage_Sicily_Import/GPKG/Sicily_05 - O&amp;M/INSPIRE_SO_12.gpkg|layername=soilprofile" type="QString" name="ReferencedLayerDataSource"/>
            <Option value="soilprofile_65d5b960_c9f8_4437_a02e_255afe5ec840" type="QString" name="ReferencedLayerId"/>
            <Option value="soilprofile" type="QString" name="ReferencedLayerName"/>
            <Option value="ogr" type="QString" name="ReferencedLayerProviderKey"/>
            <Option value="soilprofile_datastream_8" type="QString" name="Relation"/>
            <Option value="false" type="bool" name="ShowForm"/>
            <Option value="true" type="bool" name="ShowOpenFormButton"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="idsoilderivedobject">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowAddFeatures"/>
            <Option value="true" type="bool" name="AllowNULL"/>
            <Option value="true" type="bool" name="FetchLimitActive"/>
            <Option value="100" type="int" name="FetchLimitNumber"/>
            <Option value="false" type="bool" name="MapIdentification"/>
            <Option value="false" type="bool" name="ReadOnly"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage Soil/GPKG_Soil_Selection 04/INSPIRE_Selection_4.gpkg|layername=soilderivedobject" type="QString" name="ReferencedLayerDataSource"/>
            <Option value="soilderivedobject_a71785e5_025c_4b3e_815a_d38e26008c1c" type="QString" name="ReferencedLayerId"/>
            <Option value="soilderivedobject" type="QString" name="ReferencedLayerName"/>
            <Option value="ogr" type="QString" name="ReferencedLayerProviderKey"/>
            <Option value="soilderivedobject_datastream_7" type="QString" name="Relation"/>
            <Option value="false" type="bool" name="ShowForm"/>
            <Option value="true" type="bool" name="ShowOpenFormButton"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="idprofileelement">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowAddFeatures"/>
            <Option value="true" type="bool" name="AllowNULL"/>
            <Option value="true" type="bool" name="FetchLimitActive"/>
            <Option value="100" type="int" name="FetchLimitNumber"/>
            <Option value="false" type="bool" name="MapIdentification"/>
            <Option value="false" type="bool" name="ReadOnly"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage Soil/GPKG_Soil_Selection 04/INSPIRE_Selection_4.gpkg|layername=profileelement" type="QString" name="ReferencedLayerDataSource"/>
            <Option value="profileelement_e0037153_3a70_46eb_9cb8_8b365ffbe8f7" type="QString" name="ReferencedLayerId"/>
            <Option value="profileelement" type="QString" name="ReferencedLayerName"/>
            <Option value="ogr" type="QString" name="ReferencedLayerProviderKey"/>
            <Option value="profileelement_datastream_6" type="QString" name="Relation"/>
            <Option value="false" type="bool" name="ShowForm"/>
            <Option value="true" type="bool" name="ShowOpenFormButton"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="idprocess">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowAddFeatures"/>
            <Option value="true" type="bool" name="AllowNULL"/>
            <Option value="true" type="bool" name="FetchLimitActive"/>
            <Option value="100" type="int" name="FetchLimitNumber"/>
            <Option value="false" type="bool" name="MapIdentification"/>
            <Option value="false" type="bool" name="ReadOnly"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=process" type="QString" name="ReferencedLayerDataSource"/>
            <Option value="process_73bce401_72ca_44b4_8a45_db9b7dc5bed3" type="QString" name="ReferencedLayerId"/>
            <Option value="process" type="QString" name="ReferencedLayerName"/>
            <Option value="ogr" type="QString" name="ReferencedLayerProviderKey"/>
            <Option value="process_featureofinterest_observation_3" type="QString" name="Relation"/>
            <Option value="false" type="bool" name="ShowForm"/>
            <Option value="true" type="bool" name="ShowOpenFormButton"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="idobservedproperty">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowAddFeatures"/>
            <Option value="true" type="bool" name="AllowNULL"/>
            <Option value="true" type="bool" name="FetchLimitActive"/>
            <Option value="100" type="int" name="FetchLimitNumber"/>
            <Option value="false" type="bool" name="MapIdentification"/>
            <Option value="false" type="bool" name="ReadOnly"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=observableproperty" type="QString" name="ReferencedLayerDataSource"/>
            <Option value="observableproperty_80bc3cf3_dd56_4c7f_811d_6801d10b422e" type="QString" name="ReferencedLayerId"/>
            <Option value="observableproperty" type="QString" name="ReferencedLayerName"/>
            <Option value="ogr" type="QString" name="ReferencedLayerProviderKey"/>
            <Option value="observableproperty_featureofinterest_observation_2" type="QString" name="Relation"/>
            <Option value="false" type="bool" name="ShowForm"/>
            <Option value="true" type="bool" name="ShowOpenFormButton"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" field="id" name=""/>
    <alias index="1" field="guidkey" name=""/>
    <alias index="2" field="idsoilsite" name="Soil Site"/>
    <alias index="3" field="idsoilprofile" name="Soil Profile"/>
    <alias index="4" field="idsoilderivedobject" name="Soil Derived Object"/>
    <alias index="5" field="idprofileelement" name="Profile Element"/>
    <alias index="6" field="idprocess" name="Process"/>
    <alias index="7" field="idobservedproperty" name="Property"/>
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
  <duplicatePolicies>
    <policy field="id" policy="Duplicate"/>
    <policy field="guidkey" policy="Duplicate"/>
    <policy field="idsoilsite" policy="Duplicate"/>
    <policy field="idsoilprofile" policy="Duplicate"/>
    <policy field="idsoilderivedobject" policy="Duplicate"/>
    <policy field="idprofileelement" policy="Duplicate"/>
    <policy field="idprocess" policy="Duplicate"/>
    <policy field="idobservedproperty" policy="Duplicate"/>
  </duplicatePolicies>
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
    <constraint exp_strength="0" field="id" notnull_strength="1" constraints="3" unique_strength="1"/>
    <constraint exp_strength="0" field="guidkey" notnull_strength="0" constraints="2" unique_strength="1"/>
    <constraint exp_strength="0" field="idsoilsite" notnull_strength="0" constraints="0" unique_strength="0"/>
    <constraint exp_strength="0" field="idsoilprofile" notnull_strength="0" constraints="0" unique_strength="0"/>
    <constraint exp_strength="0" field="idsoilderivedobject" notnull_strength="0" constraints="0" unique_strength="0"/>
    <constraint exp_strength="0" field="idprofileelement" notnull_strength="0" constraints="0" unique_strength="0"/>
    <constraint exp_strength="0" field="idprocess" notnull_strength="1" constraints="1" unique_strength="0"/>
    <constraint exp_strength="0" field="idobservedproperty" notnull_strength="1" constraints="1" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" desc="" exp=""/>
    <constraint field="guidkey" desc="" exp=""/>
    <constraint field="idsoilsite" desc="" exp=""/>
    <constraint field="idsoilprofile" desc="" exp=""/>
    <constraint field="idsoilderivedobject" desc="" exp=""/>
    <constraint field="idprofileelement" desc="" exp=""/>
    <constraint field="idprocess" desc="" exp=""/>
    <constraint field="idobservedproperty" desc="" exp=""/>
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
      <labelFont italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" underline="0" strikethrough="0" bold="0"/>
    </labelStyle>
    <attributeEditorField index="0" verticalStretch="0" showLabel="1" name="id" horizontalStretch="0">
      <labelStyle overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelFont="0">
        <labelFont italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" underline="0" strikethrough="0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer columnCount="1" collapsed="0" visibilityExpression="" groupBox="1" verticalStretch="0" visibilityExpressionEnabled="0" showLabel="1" collapsedExpression="" type="GroupBox" name="Feature Of Interest" horizontalStretch="0" collapsedExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelFont="0">
        <labelFont italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" underline="0" strikethrough="0" bold="0"/>
      </labelStyle>
      <attributeEditorField index="2" verticalStretch="0" showLabel="1" name="idsoilsite" horizontalStretch="0">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelFont="0">
          <labelFont italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" underline="0" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="3" verticalStretch="0" showLabel="1" name="idsoilprofile" horizontalStretch="0">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelFont="0">
          <labelFont italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" underline="0" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="5" verticalStretch="0" showLabel="1" name="idprofileelement" horizontalStretch="0">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelFont="0">
          <labelFont italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" underline="0" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="4" verticalStretch="0" showLabel="1" name="idsoilderivedobject" horizontalStretch="0">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelFont="0">
          <labelFont italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" underline="0" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField index="6" verticalStretch="0" showLabel="1" name="idprocess" horizontalStretch="0">
      <labelStyle overrideLabelColor="0" labelColor="" overrideLabelFont="0">
        <labelFont italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" underline="0" strikethrough="0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField index="7" verticalStretch="0" showLabel="1" name="idobservedproperty" horizontalStretch="0">
      <labelStyle overrideLabelColor="0" labelColor="" overrideLabelFont="0">
        <labelFont italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" underline="0" strikethrough="0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorRelation label="Observation" relationWidgetTypeId="relation_editor" relation="featureofinterest_observation_observation" nmRelationId="" forceSuppressFormPopup="0" verticalStretch="0" showLabel="1" name="featureofinterest_observation_observation" horizontalStretch="0">
      <labelStyle overrideLabelColor="0" labelColor="" overrideLabelFont="0">
        <labelFont italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" underline="0" strikethrough="0" bold="0"/>
      </labelStyle>
      <editor_configuration type="Map">
        <Option value="false" type="bool" name="allow_add_child_feature_with_no_geometry"/>
        <Option value="AllButtons" type="QString" name="buttons"/>
        <Option value="" type="QString" name="filter_expression"/>
        <Option value="false" type="bool" name="show_first_feature"/>
      </editor_configuration>
    </attributeEditorRelation>
  </attributeEditorForm>
  <editable>
    <field editable="1" name="guidkey"/>
    <field editable="1" name="id"/>
    <field editable="1" name="iddatastreamcollection"/>
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
    <field labelOnTop="0" name="iddatastreamcollection"/>
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
    <field reuseLastValue="0" name="iddatastreamcollection"/>
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
    <widget name="datastream_observation">
      <config type="Map">
        <Option value="false" type="bool" name="force-suppress-popup"/>
        <Option type="invalid" name="nm-rel"/>
      </config>
    </widget>
    <widget name="featureofinterest_observation_observation">
      <config type="Map">
        <Option value="false" type="bool" name="force-suppress-popup"/>
        <Option type="invalid" name="nm-rel"/>
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
