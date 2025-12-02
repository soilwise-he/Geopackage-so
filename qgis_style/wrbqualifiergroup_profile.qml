<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" readOnly="0" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation name="soilprofile_wrbqualifiergroup_profile_2" referencingLayer="wrbqualifiergroup_profile_68f05370_a2dd_45c4_babf_41702851b4ee" id="soilprofile_wrbqualifiergroup_profile_2" layerName="soilprofile" strength="Composition" layerId="soilprofile_216eea7c_d015_4117_8c9f_df0b7692b5a7" referencedLayer="soilprofile_216eea7c_d015_4117_8c9f_df0b7692b5a7" providerKey="ogr" dataSource="./SW_15.gpkg|layername=soilprofile">
      <fieldRef referencingField="guid_soilprofile" referencedField="guid"/>
    </relation>
    <relation name="wrbqualifiergrouptype_wrbqualifiergroup_profile" referencingLayer="wrbqualifiergroup_profile_68f05370_a2dd_45c4_babf_41702851b4ee" id="wrbqualifiergrouptype_wrbqualifiergroup_profile" layerName="wrbqualifiergrouptype" strength="Composition" layerId="wrbqualifiergrouptype_8e202de8_583e_41fa_a47c_9d5e4c08ab7a" referencedLayer="wrbqualifiergrouptype_8e202de8_583e_41fa_a47c_9d5e4c08ab7a" providerKey="ogr" dataSource="./SW_15.gpkg|layername=wrbqualifiergrouptype">
      <fieldRef referencingField="guid_wrbqualifiergrouptype" referencedField="guid"/>
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
            <Option name="Relation" value="soilprofile_wrbqualifiergroup_profile_2" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_wrbqualifiergrouptype" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="false" type="bool"/>
            <Option name="AllowNULL" value="false" type="bool"/>
            <Option name="FetchLimitActive" value="true" type="bool"/>
            <Option name="FetchLimitNumber" value="100" type="int"/>
            <Option name="MapIdentification" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=wrbqualifiergrouptype" type="QString"/>
            <Option name="ReferencedLayerId" value="wrbqualifiergrouptype_8e202de8_583e_41fa_a47c_9d5e4c08ab7a" type="QString"/>
            <Option name="ReferencedLayerName" value="wrbqualifiergrouptype" type="QString"/>
            <Option name="ReferencedLayerProviderKey" value="ogr" type="QString"/>
            <Option name="Relation" value="wrbqualifiergrouptype_wrbqualifiergroup_profile" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="qualifierposition" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="id" index="0"/>
    <alias name="Id Soil Profile" field="guid_soilprofile" index="1"/>
    <alias name="Id Wrb Qualifier Group Type" field="guid_wrbqualifiergrouptype" index="2"/>
    <alias name="Position" field="qualifierposition" index="3"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid_soilprofile" policy="DefaultValue"/>
    <policy field="guid_wrbqualifiergrouptype" policy="DefaultValue"/>
    <policy field="qualifierposition" policy="DefaultValue"/>
  </splitPolicies>
  <mergePolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid_soilprofile" policy="DefaultValue"/>
    <policy field="guid_wrbqualifiergrouptype" policy="DefaultValue"/>
  </mergePolicies>
  <defaults>
    <default field="id" applyOnUpdate="0" expression=""/>
    <default field="guid_soilprofile" applyOnUpdate="0" expression=""/>
    <default field="guid_wrbqualifiergrouptype" applyOnUpdate="0" expression=""/>
    <default field="qualifierposition" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" notnull_strength="1" field="id" constraints="3" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="guid_soilprofile" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="guid_wrbqualifiergrouptype" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="qualifierposition" constraints="1" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="id"/>
    <constraint exp="" desc="" field="guid_soilprofile"/>
    <constraint exp="" desc="" field="guid_wrbqualifiergrouptype"/>
    <constraint exp="" desc="" field="qualifierposition"/>
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
    <attributeEditorField name="guid_soilprofile" verticalStretch="0" showLabel="1" index="1" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="qualifierposition" verticalStretch="0" showLabel="1" index="3" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="guid_wrbqualifiergrouptype" verticalStretch="0" showLabel="1" index="2" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
  </attributeEditorForm>
  <editable>
    <field name="guid_soilprofile" editable="1"/>
    <field name="guid_wrbqualifiergrouptype" editable="1"/>
    <field name="id" editable="1"/>
    <field name="idsoilprofile" editable="1"/>
    <field name="idwrbqualifiergrouptype" editable="1"/>
    <field name="qualifierposition" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="guid_soilprofile"/>
    <field labelOnTop="0" name="guid_wrbqualifiergrouptype"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="idsoilprofile"/>
    <field labelOnTop="0" name="idwrbqualifiergrouptype"/>
    <field labelOnTop="0" name="qualifierposition"/>
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
