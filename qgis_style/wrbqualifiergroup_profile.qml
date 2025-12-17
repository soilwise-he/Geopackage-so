<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis readOnly="0" version="3.44.0-Solothurn" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Actions|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation layerName="soilprofile" dataSource="./SoilWise.gpkg|layername=soilprofile" referencingLayer="wrbqualifiergroup_profile_d6991f39_59d3_4eb8_b488_8b39680e1f37" name="soilprofile_wrbqualifiergroup_profile_2" strength="Association" referencedLayer="soilprofile_25d7fa1d_bef3_4386_abaa_4aaf5b416cf8" providerKey="ogr" id="soilprofile_wrbqualifiergroup_profile_2" layerId="soilprofile_25d7fa1d_bef3_4386_abaa_4aaf5b416cf8">
      <fieldRef referencingField="guid_soilprofile" referencedField="guid"/>
    </relation>
    <relation layerName="wrbqualifiergrouptype" dataSource="./SoilWise.gpkg|layername=wrbqualifiergrouptype" referencingLayer="wrbqualifiergroup_profile_d6991f39_59d3_4eb8_b488_8b39680e1f37" name="wrbqualifiergrouptype_wrbqualifiergroup_profile" strength="Association" referencedLayer="wrbqualifiergrouptype_ca23e912_5928_4c98_8810_9608ee425a61" providerKey="ogr" id="wrbqualifiergrouptype_wrbqualifiergroup_profile" layerId="wrbqualifiergrouptype_ca23e912_5928_4c98_8810_9608ee425a61">
      <fieldRef referencingField="guid_wrbqualifiergrouptype" referencedField="guid"/>
    </relation>
  </referencedLayers>
  <fieldConfiguration>
    <field name="id" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_soilprofile" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowAddFeatures" value="false"/>
            <Option type="bool" name="AllowNULL" value="false"/>
            <Option type="bool" name="FetchLimitActive" value="true"/>
            <Option type="int" name="FetchLimitNumber" value="100"/>
            <Option type="bool" name="MapIdentification" value="false"/>
            <Option type="bool" name="ReadOnly" value="false"/>
            <Option type="QString" name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/UPLOAD_NEXT/SoilWise_empty/SoilWise.gpkg|layername=soilprofile"/>
            <Option type="QString" name="ReferencedLayerId" value="soilprofile_25d7fa1d_bef3_4386_abaa_4aaf5b416cf8"/>
            <Option type="QString" name="ReferencedLayerName" value="soilprofile"/>
            <Option type="QString" name="ReferencedLayerProviderKey" value="ogr"/>
            <Option type="QString" name="Relation" value="soilprofile_wrbqualifiergroup_profile_2"/>
            <Option type="bool" name="ShowForm" value="false"/>
            <Option type="bool" name="ShowOpenFormButton" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_wrbqualifiergrouptype" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowAddFeatures" value="false"/>
            <Option type="bool" name="AllowNULL" value="false"/>
            <Option type="bool" name="FetchLimitActive" value="true"/>
            <Option type="int" name="FetchLimitNumber" value="100"/>
            <Option type="bool" name="MapIdentification" value="false"/>
            <Option type="bool" name="ReadOnly" value="false"/>
            <Option type="QString" name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/UPLOAD_NEXT/SoilWise_empty/SoilWise.gpkg|layername=wrbqualifiergrouptype"/>
            <Option type="QString" name="ReferencedLayerId" value="wrbqualifiergrouptype_ca23e912_5928_4c98_8810_9608ee425a61"/>
            <Option type="QString" name="ReferencedLayerName" value="wrbqualifiergrouptype"/>
            <Option type="QString" name="ReferencedLayerProviderKey" value="ogr"/>
            <Option type="QString" name="Relation" value="wrbqualifiergrouptype_wrbqualifiergroup_profile"/>
            <Option type="bool" name="ShowForm" value="false"/>
            <Option type="bool" name="ShowOpenFormButton" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="qualifierposition" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="" field="id"/>
    <alias index="1" name="Soil Profile" field="guid_soilprofile"/>
    <alias index="2" name="Wrb Qualifier Group Type" field="guid_wrbqualifiergrouptype"/>
    <alias index="3" name="Position" field="qualifierposition"/>
  </aliases>
  <splitPolicies>
    <policy policy="DefaultValue" field="id"/>
    <policy policy="DefaultValue" field="guid_soilprofile"/>
    <policy policy="DefaultValue" field="guid_wrbqualifiergrouptype"/>
    <policy policy="DefaultValue" field="qualifierposition"/>
  </splitPolicies>
  <mergePolicies>
    <policy policy="DefaultValue" field="id"/>
    <policy policy="DefaultValue" field="guid_soilprofile"/>
    <policy policy="DefaultValue" field="guid_wrbqualifiergrouptype"/>
    <policy policy="DefaultValue" field="qualifierposition"/>
  </mergePolicies>
  <defaults>
    <default expression="" field="id" applyOnUpdate="0"/>
    <default expression="" field="guid_soilprofile" applyOnUpdate="0"/>
    <default expression="" field="guid_wrbqualifiergrouptype" applyOnUpdate="0"/>
    <default expression="" field="qualifierposition" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint exp_strength="0" constraints="3" notnull_strength="1" unique_strength="1" field="id"/>
    <constraint exp_strength="0" constraints="1" notnull_strength="1" unique_strength="0" field="guid_soilprofile"/>
    <constraint exp_strength="0" constraints="1" notnull_strength="1" unique_strength="0" field="guid_wrbqualifiergrouptype"/>
    <constraint exp_strength="0" constraints="1" notnull_strength="1" unique_strength="0" field="qualifierposition"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="id"/>
    <constraint exp="" desc="" field="guid_soilprofile"/>
    <constraint exp="" desc="" field="guid_wrbqualifiergrouptype"/>
    <constraint exp="" desc="" field="qualifierposition"/>
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
    <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="">
      <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0" style=""/>
    </labelStyle>
    <attributeEditorField showLabel="1" index="3" horizontalStretch="0" name="qualifierposition" verticalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0" style=""/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField showLabel="1" index="2" horizontalStretch="0" name="guid_wrbqualifiergrouptype" verticalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0" style=""/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField showLabel="1" index="1" horizontalStretch="0" name="guid_soilprofile" verticalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0" style=""/>
      </labelStyle>
    </attributeEditorField>
  </attributeEditorForm>
  <editable>
    <field editable="1" name="guid_soilprofile"/>
    <field editable="1" name="guid_wrbqualifiergrouptype"/>
    <field editable="1" name="id"/>
    <field editable="1" name="idsoilprofile"/>
    <field editable="1" name="idwrbqualifiergrouptype"/>
    <field editable="1" name="qualifierposition"/>
  </editable>
  <labelOnTop>
    <field name="guid_soilprofile" labelOnTop="0"/>
    <field name="guid_wrbqualifiergrouptype" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="idsoilprofile" labelOnTop="0"/>
    <field name="idwrbqualifiergrouptype" labelOnTop="0"/>
    <field name="qualifierposition" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="guid_soilprofile" reuseLastValue="0"/>
    <field name="guid_wrbqualifiergrouptype" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="idsoilprofile" reuseLastValue="0"/>
    <field name="idwrbqualifiergrouptype" reuseLastValue="0"/>
    <field name="qualifierposition" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"qualifierposition" &#xd;&#xd;
&#xd;&#xd;
|| ' ' ||&#xd;&#xd;
regexp_substr(COALESCE(attribute(get_feature&#xd;&#xd;
						(&#xd;&#xd;
							'wrbqualifiergrouptype',&#xd;&#xd;
							'guid',&#xd;&#xd;
							"guid_wrbqualifiergrouptype"&#xd;&#xd;
						),&#xd;&#xd;
					'qualifierplace'&#xd;&#xd;
					),&#xd;&#xd;
		'&lt;NULL>'), '[^/]*$')&#xd;&#xd;
&#xd;&#xd;
		&#xd;&#xd;
|| ' '||&#xd;&#xd;
regexp_substr(COALESCE(attribute(get_feature&#xd;&#xd;
						(&#xd;&#xd;
							'wrbqualifiergrouptype',&#xd;&#xd;
							'guid',&#xd;&#xd;
							"guid_wrbqualifiergrouptype"&#xd;&#xd;
						),&#xd;&#xd;
					'wrbqualifier'&#xd;&#xd;
					),&#xd;&#xd;
		'&lt;NULL>'), '[^/]*$')&#xd;&#xd;
</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
