<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" readOnly="0" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation name="otherhorizonnotationtype_otherhorizon_profileelement" referencingLayer="otherhorizon_profileelement_83c7dac0_cc79_4828_88cf_ee34e979c8d7" id="otherhorizonnotationtype_otherhorizon_profileelement" layerName="otherhorizonnotationtype" strength="Composition" layerId="otherhorizonnotationtype_9d4fc2f6_fc67_4b98_8477_51f6560d7b31" referencedLayer="otherhorizonnotationtype_9d4fc2f6_fc67_4b98_8477_51f6560d7b31" providerKey="ogr" dataSource="./SW_15.gpkg|layername=otherhorizonnotationtype">
      <fieldRef referencingField="guid_otherhorizonnotationtype" referencedField="guid"/>
    </relation>
    <relation name="profileelement_otherhorizon_profileelement_2" referencingLayer="otherhorizon_profileelement_83c7dac0_cc79_4828_88cf_ee34e979c8d7" id="profileelement_otherhorizon_profileelement_2" layerName="profileelement" strength="Composition" layerId="profileelement_c30e6a23_64c8_4588_a32e_c91c0209d0a3" referencedLayer="profileelement_c30e6a23_64c8_4588_a32e_c91c0209d0a3" providerKey="ogr" dataSource="./SW_15.gpkg|layername=profileelement">
      <fieldRef referencingField="guid_profileelement" referencedField="guid"/>
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
    <field name="guid_profileelement" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="false" type="bool"/>
            <Option name="AllowNULL" value="false" type="bool"/>
            <Option name="FetchLimitActive" value="true" type="bool"/>
            <Option name="FetchLimitNumber" value="100" type="int"/>
            <Option name="MapIdentification" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=profileelement" type="QString"/>
            <Option name="ReferencedLayerId" value="profileelement_c30e6a23_64c8_4588_a32e_c91c0209d0a3" type="QString"/>
            <Option name="ReferencedLayerName" value="profileelement" type="QString"/>
            <Option name="ReferencedLayerProviderKey" value="ogr" type="QString"/>
            <Option name="Relation" value="profileelement_otherhorizon_profileelement_2" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_otherhorizonnotationtype" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="false" type="bool"/>
            <Option name="AllowNULL" value="false" type="bool"/>
            <Option name="FetchLimitActive" value="true" type="bool"/>
            <Option name="FetchLimitNumber" value="100" type="int"/>
            <Option name="MapIdentification" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=otherhorizonnotationtype" type="QString"/>
            <Option name="ReferencedLayerId" value="otherhorizonnotationtype_9d4fc2f6_fc67_4b98_8477_51f6560d7b31" type="QString"/>
            <Option name="ReferencedLayerName" value="otherhorizonnotationtype" type="QString"/>
            <Option name="ReferencedLayerProviderKey" value="ogr" type="QString"/>
            <Option name="Relation" value="otherhorizonnotationtype_otherhorizon_profileelement" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="id" index="0"/>
    <alias name="Profile Element" field="guid_profileelement" index="1"/>
    <alias name="Other Horizon Notation Type" field="guid_otherhorizonnotationtype" index="2"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid_profileelement" policy="DefaultValue"/>
    <policy field="guid_otherhorizonnotationtype" policy="DefaultValue"/>
  </splitPolicies>
  <mergePolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid_profileelement" policy="DefaultValue"/>
    <policy field="guid_otherhorizonnotationtype" policy="DefaultValue"/>
  </mergePolicies>
  <defaults>
    <default field="id" applyOnUpdate="0" expression=""/>
    <default field="guid_profileelement" applyOnUpdate="0" expression=""/>
    <default field="guid_otherhorizonnotationtype" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" notnull_strength="1" field="id" constraints="3" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="guid_profileelement" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="guid_otherhorizonnotationtype" constraints="1" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="id"/>
    <constraint exp="" desc="" field="guid_profileelement"/>
    <constraint exp="" desc="" field="guid_otherhorizonnotationtype"/>
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
    <attributeEditorField name="guid_profileelement" verticalStretch="0" showLabel="1" index="1" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="guid_otherhorizonnotationtype" verticalStretch="0" showLabel="1" index="2" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
  </attributeEditorForm>
  <editable>
    <field name="guid_otherhorizonnotationtype" editable="1"/>
    <field name="guid_profileelement" editable="1"/>
    <field name="id" editable="1"/>
    <field name="idotherhorizonnotationtype" editable="1"/>
    <field name="idprofileelement" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="guid_otherhorizonnotationtype"/>
    <field labelOnTop="0" name="guid_profileelement"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="idotherhorizonnotationtype"/>
    <field labelOnTop="0" name="idprofileelement"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="guid_otherhorizonnotationtype" reuseLastValue="0"/>
    <field name="guid_profileelement" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="idotherhorizonnotationtype" reuseLastValue="0"/>
    <field name="idprofileelement" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>COALESCE(attribute(get_feature&#xd;&#xd;
						(&#xd;&#xd;
							'otherhorizonnotationtype',&#xd;&#xd;
							'guid',&#xd;&#xd;
							"guid_otherhorizonnotationtype"&#xd;&#xd;
						),&#xd;&#xd;
					'horizonnotation'&#xd;&#xd;
					),&#xd;&#xd;
		'&lt;NULL>')&#xd;&#xd;
&#xd;&#xd;
&#xd;&#xd;
|| ' ' ||&#xd;&#xd;
regexp_substr(COALESCE(attribute(get_feature&#xd;&#xd;
						(&#xd;&#xd;
							'otherhorizonnotationtype',&#xd;&#xd;
							'guid',&#xd;&#xd;
							"guid_otherhorizonnotationtype"&#xd;&#xd;
						),&#xd;&#xd;
					'diagnostichorizon'&#xd;&#xd;
					),&#xd;&#xd;
		'&lt;NULL>'), '[^/]*$')&#xd;&#xd;
</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
