<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation referencingLayer="feature_4d793111_6cb3_4a48_8334_72e5704abb67" layerId="featuretype_fe4402f2_7c9e_403b_a83b_36923aa4c4e0" layerName="featuretype" referencedLayer="featuretype_fe4402f2_7c9e_403b_a83b_36923aa4c4e0" dataSource="./SW_03.gpkg|layername=featuretype" strength="Association" id="featuretype_feature" name="featuretype_feature" providerKey="ogr">
      <fieldRef referencedField="id" referencingField="idfeaturetype"/>
    </relation>
    <relation referencingLayer="feature_4d793111_6cb3_4a48_8334_72e5704abb67" layerId="profileelement_966992ce_99a4_4752_a373_602cd612becb" layerName="profileelement" referencedLayer="profileelement_966992ce_99a4_4752_a373_602cd612becb" dataSource="./SW_03.gpkg|layername=profileelement" strength="Association" id="profileelement_feature_3" name="profileelement_feature_3" providerKey="ogr">
      <fieldRef referencedField="guidkey" referencingField="feature_profileelement"/>
    </relation>
    <relation referencingLayer="feature_4d793111_6cb3_4a48_8334_72e5704abb67" layerId="soilderivedobject_a102c924_0058_449a_96ac_dc00e5885a52" layerName="soilderivedobject" referencedLayer="soilderivedobject_a102c924_0058_449a_96ac_dc00e5885a52" dataSource="./SW_03.gpkg|layername=soilderivedobject" strength="Association" id="soilderivedobject_feature_2" name="soilderivedobject_feature_2" providerKey="ogr">
      <fieldRef referencedField="guidkey" referencingField="feature_soilderivedobject"/>
    </relation>
    <relation referencingLayer="feature_4d793111_6cb3_4a48_8334_72e5704abb67" layerId="soilprofile_61e7c44e_e5f8_4dc7_9f53_09c201d61bc0" layerName="soilprofile" referencedLayer="soilprofile_61e7c44e_e5f8_4dc7_9f53_09c201d61bc0" dataSource="./SW_03.gpkg|layername=soilprofile" strength="Association" id="soilprofile_feature_4" name="soilprofile_feature_4" providerKey="ogr">
      <fieldRef referencedField="guidkey" referencingField="feature_soilprofile"/>
    </relation>
    <relation referencingLayer="feature_4d793111_6cb3_4a48_8334_72e5704abb67" layerId="soilsite_25916817_53cc_46a4_b799_95996c5e8acf" layerName="soilsite" referencedLayer="soilsite_25916817_53cc_46a4_b799_95996c5e8acf" dataSource="./SW_03.gpkg|layername=soilsite" strength="Association" id="soilsite_feature_5" name="soilsite_feature_5" providerKey="ogr">
      <fieldRef referencedField="guidkey" referencingField="feature_soilsite"/>
    </relation>
  </referencedLayers>
  <fieldConfiguration>
    <field configurationFlags="NoFlag" name="id">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="name">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="definition">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="description">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="encodingtype">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="AllowMulti"/>
            <Option type="bool" value="false" name="AllowNull"/>
            <Option type="int" value="2" name="CompleterMatchFlags"/>
            <Option type="QString" value="" name="Description"/>
            <Option type="bool" value="false" name="DisplayGroupName"/>
            <Option type="QString" value="&quot;collection&quot; IN('encodingType') " name="FilterExpression"/>
            <Option type="QString" value="" name="Group"/>
            <Option type="QString" value="id" name="Key"/>
            <Option type="QString" value="codelist_ec838d7a_7264_4bec_b902_d82d9ae54fd7" name="Layer"/>
            <Option type="QString" value="codelist" name="LayerName"/>
            <Option type="QString" value="ogr" name="LayerProviderName"/>
            <Option type="QString" value="C:/Users/andrea.lachi/Documents/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_03.gpkg|layername=codelist" name="LayerSource"/>
            <Option type="int" value="1" name="NofColumns"/>
            <Option type="bool" value="false" name="OrderByDescending"/>
            <Option type="bool" value="false" name="OrderByField"/>
            <Option type="QString" value="id" name="OrderByFieldName"/>
            <Option type="bool" value="true" name="OrderByKey"/>
            <Option type="bool" value="false" name="OrderByValue"/>
            <Option type="bool" value="false" name="UseCompleter"/>
            <Option type="QString" value="label" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="feature_soilsite">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="AllowAddFeatures"/>
            <Option type="bool" value="true" name="AllowNULL"/>
            <Option type="bool" value="true" name="FetchLimitActive"/>
            <Option type="int" value="100" name="FetchLimitNumber"/>
            <Option type="bool" value="false" name="MapIdentification"/>
            <Option type="bool" value="false" name="ReadOnly"/>
            <Option type="QString" value="C:/Users/andrea.lachi/Documents/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_01.gpkg|layername=soilsite" name="ReferencedLayerDataSource"/>
            <Option type="QString" value="soilsite_68819781_ff3f_422b_a6c7_cb664a1e03fd" name="ReferencedLayerId"/>
            <Option type="QString" value="soilsite" name="ReferencedLayerName"/>
            <Option type="QString" value="ogr" name="ReferencedLayerProviderKey"/>
            <Option type="QString" value="soilsite_feature_5" name="Relation"/>
            <Option type="bool" value="false" name="ShowForm"/>
            <Option type="bool" value="true" name="ShowOpenFormButton"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="feature_soilprofile">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="AllowAddFeatures"/>
            <Option type="bool" value="true" name="AllowNULL"/>
            <Option type="bool" value="true" name="FetchLimitActive"/>
            <Option type="int" value="100" name="FetchLimitNumber"/>
            <Option type="bool" value="false" name="MapIdentification"/>
            <Option type="bool" value="false" name="ReadOnly"/>
            <Option type="QString" value="C:/Users/andrea.lachi/Documents/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_01.gpkg|layername=soilprofile" name="ReferencedLayerDataSource"/>
            <Option type="QString" value="soilprofile_e5fa9f19_1387_4a53_bb7e_d862c6ccddfb" name="ReferencedLayerId"/>
            <Option type="QString" value="soilprofile" name="ReferencedLayerName"/>
            <Option type="QString" value="ogr" name="ReferencedLayerProviderKey"/>
            <Option type="QString" value="soilprofile_feature_4" name="Relation"/>
            <Option type="bool" value="false" name="ShowForm"/>
            <Option type="bool" value="true" name="ShowOpenFormButton"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="feature_profileelement">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="AllowAddFeatures"/>
            <Option type="bool" value="true" name="AllowNULL"/>
            <Option type="bool" value="true" name="FetchLimitActive"/>
            <Option type="int" value="100" name="FetchLimitNumber"/>
            <Option type="bool" value="false" name="MapIdentification"/>
            <Option type="bool" value="false" name="ReadOnly"/>
            <Option type="QString" value="C:/Users/andrea.lachi/Documents/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_01.gpkg|layername=profileelement" name="ReferencedLayerDataSource"/>
            <Option type="QString" value="profileelement_d83949e7_fc0c_4454_93ae_710c97fb9700" name="ReferencedLayerId"/>
            <Option type="QString" value="profileelement" name="ReferencedLayerName"/>
            <Option type="QString" value="ogr" name="ReferencedLayerProviderKey"/>
            <Option type="QString" value="profileelement_feature_3" name="Relation"/>
            <Option type="bool" value="false" name="ShowForm"/>
            <Option type="bool" value="true" name="ShowOpenFormButton"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="feature_soilderivedobject">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="AllowAddFeatures"/>
            <Option type="bool" value="true" name="AllowNULL"/>
            <Option type="bool" value="true" name="FetchLimitActive"/>
            <Option type="int" value="100" name="FetchLimitNumber"/>
            <Option type="bool" value="false" name="MapIdentification"/>
            <Option type="bool" value="false" name="ReadOnly"/>
            <Option type="QString" value="C:/Users/andrea.lachi/Documents/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_01.gpkg|layername=soilderivedobject" name="ReferencedLayerDataSource"/>
            <Option type="QString" value="soilderivedobject_63031390_fe25_4127_ba04_ea97c511f97f" name="ReferencedLayerId"/>
            <Option type="QString" value="soilderivedobject" name="ReferencedLayerName"/>
            <Option type="QString" value="ogr" name="ReferencedLayerProviderKey"/>
            <Option type="QString" value="soilderivedobject_feature_2" name="Relation"/>
            <Option type="bool" value="false" name="ShowForm"/>
            <Option type="bool" value="true" name="ShowOpenFormButton"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="properties">
      <editWidget type="KeyValue">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="idfeaturetype">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="AllowAddFeatures"/>
            <Option type="bool" value="true" name="AllowNULL"/>
            <Option type="bool" value="true" name="FetchLimitActive"/>
            <Option type="int" value="100" name="FetchLimitNumber"/>
            <Option type="bool" value="false" name="MapIdentification"/>
            <Option type="bool" value="false" name="ReadOnly"/>
            <Option type="QString" value="C:/Users/andrea.lachi/Documents/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_02.gpkg|layername=featuretype" name="ReferencedLayerDataSource"/>
            <Option type="QString" value="featuretype_b78e0725_7a2a_495f_9ed3_5a4b1dfab39e" name="ReferencedLayerId"/>
            <Option type="QString" value="featuretype" name="ReferencedLayerName"/>
            <Option type="QString" value="ogr" name="ReferencedLayerProviderKey"/>
            <Option type="QString" value="featuretype_feature" name="Relation"/>
            <Option type="bool" value="false" name="ShowForm"/>
            <Option type="bool" value="true" name="ShowOpenFormButton"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="Id" field="id"/>
    <alias index="1" name="Name" field="name"/>
    <alias index="2" name="Definition (URI)" field="definition"/>
    <alias index="3" name="Description" field="description"/>
    <alias index="4" name="" field="encodingtype"/>
    <alias index="5" name="Soil Site" field="feature_soilsite"/>
    <alias index="6" name="Seoil Profile" field="feature_soilprofile"/>
    <alias index="7" name="Profile Element" field="feature_profileelement"/>
    <alias index="8" name="Soil Derived Object" field="feature_soilderivedobject"/>
    <alias index="9" name="" field="properties"/>
    <alias index="10" name="Feature Type" field="idfeaturetype"/>
  </aliases>
  <splitPolicies>
    <policy policy="DefaultValue" field="id"/>
    <policy policy="DefaultValue" field="name"/>
    <policy policy="DefaultValue" field="definition"/>
    <policy policy="DefaultValue" field="description"/>
    <policy policy="DefaultValue" field="encodingtype"/>
    <policy policy="DefaultValue" field="feature_soilsite"/>
    <policy policy="DefaultValue" field="feature_soilprofile"/>
    <policy policy="DefaultValue" field="feature_profileelement"/>
    <policy policy="DefaultValue" field="feature_soilderivedobject"/>
    <policy policy="DefaultValue" field="properties"/>
    <policy policy="DefaultValue" field="idfeaturetype"/>
  </splitPolicies>
  <mergePolicies>
    <policy policy="DefaultValue" field="definition"/>
    <policy policy="DefaultValue" field="encodingtype"/>
    <policy policy="DefaultValue" field="feature_soilsite"/>
    <policy policy="DefaultValue" field="feature_soilprofile"/>
    <policy policy="DefaultValue" field="feature_profileelement"/>
    <policy policy="DefaultValue" field="feature_soilderivedobject"/>
    <policy policy="DefaultValue" field="properties"/>
    <policy policy="DefaultValue" field="idfeaturetype"/>
  </mergePolicies>
  <defaults>
    <default expression="" applyOnUpdate="0" field="id"/>
    <default expression="" applyOnUpdate="0" field="name"/>
    <default expression="" applyOnUpdate="0" field="definition"/>
    <default expression="" applyOnUpdate="0" field="description"/>
    <default expression="" applyOnUpdate="0" field="encodingtype"/>
    <default expression="" applyOnUpdate="0" field="feature_soilsite"/>
    <default expression="" applyOnUpdate="0" field="feature_soilprofile"/>
    <default expression="" applyOnUpdate="0" field="feature_profileelement"/>
    <default expression="" applyOnUpdate="0" field="feature_soilderivedobject"/>
    <default expression="" applyOnUpdate="0" field="properties"/>
    <default expression="" applyOnUpdate="0" field="idfeaturetype"/>
  </defaults>
  <constraints>
    <constraint constraints="3" notnull_strength="1" unique_strength="1" field="id" exp_strength="0"/>
    <constraint constraints="1" notnull_strength="1" unique_strength="0" field="name" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" unique_strength="0" field="definition" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" unique_strength="0" field="description" exp_strength="0"/>
    <constraint constraints="1" notnull_strength="1" unique_strength="0" field="encodingtype" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" unique_strength="0" field="feature_soilsite" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" unique_strength="0" field="feature_soilprofile" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" unique_strength="0" field="feature_profileelement" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" unique_strength="0" field="feature_soilderivedobject" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" unique_strength="0" field="properties" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" unique_strength="0" field="idfeaturetype" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="id"/>
    <constraint exp="" desc="" field="name"/>
    <constraint exp="" desc="" field="definition"/>
    <constraint exp="" desc="" field="description"/>
    <constraint exp="" desc="" field="encodingtype"/>
    <constraint exp="" desc="" field="feature_soilsite"/>
    <constraint exp="" desc="" field="feature_soilprofile"/>
    <constraint exp="" desc="" field="feature_profileelement"/>
    <constraint exp="" desc="" field="feature_soilderivedobject"/>
    <constraint exp="" desc="" field="properties"/>
    <constraint exp="" desc="" field="idfeaturetype"/>
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
    <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="">
      <labelFont underline="0" bold="0" style="" strikethrough="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
    </labelStyle>
    <attributeEditorField showLabel="1" horizontalStretch="0" index="0" name="id" verticalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont underline="0" bold="0" style="" strikethrough="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField showLabel="1" horizontalStretch="0" index="1" name="name" verticalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont underline="0" bold="0" style="" strikethrough="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField showLabel="1" horizontalStretch="0" index="2" name="definition" verticalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont underline="0" bold="0" style="" strikethrough="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField showLabel="1" horizontalStretch="0" index="3" name="description" verticalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont underline="0" bold="0" style="" strikethrough="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField showLabel="1" horizontalStretch="0" index="4" name="encodingtype" verticalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="">
        <labelFont underline="0" bold="0" style="" strikethrough="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer showLabel="1" groupBox="1" columnCount="1" type="GroupBox" horizontalStretch="0" collapsedExpressionEnabled="0" collapsed="1" collapsedExpression="" name="Feature" visibilityExpression="" visibilityExpressionEnabled="0" verticalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont underline="0" bold="0" style="" strikethrough="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
      <attributeEditorField showLabel="1" horizontalStretch="0" index="5" name="feature_soilsite" verticalStretch="0">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont underline="0" bold="0" style="" strikethrough="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField showLabel="1" horizontalStretch="0" index="6" name="feature_soilprofile" verticalStretch="0">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont underline="0" bold="0" style="" strikethrough="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField showLabel="1" horizontalStretch="0" index="7" name="feature_profileelement" verticalStretch="0">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont underline="0" bold="0" style="" strikethrough="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField showLabel="1" horizontalStretch="0" index="8" name="feature_soilderivedobject" verticalStretch="0">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont underline="0" bold="0" style="" strikethrough="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField showLabel="1" horizontalStretch="0" index="10" name="idfeaturetype" verticalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="">
        <labelFont underline="0" bold="0" style="" strikethrough="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer showLabel="1" groupBox="1" columnCount="1" type="GroupBox" horizontalStretch="0" collapsedExpressionEnabled="0" collapsed="1" collapsedExpression="" name="Properties" visibilityExpression="" visibilityExpressionEnabled="0" verticalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont underline="0" bold="0" style="" strikethrough="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
      <attributeEditorField showLabel="0" horizontalStretch="0" index="9" name="properties" verticalStretch="0">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont underline="0" bold="0" style="" strikethrough="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" groupBox="1" columnCount="1" type="GroupBox" horizontalStretch="0" collapsedExpressionEnabled="0" collapsed="1" collapsedExpression="" name="Datastream" visibilityExpression="" visibilityExpressionEnabled="0" verticalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="">
        <labelFont underline="0" bold="0" style="" strikethrough="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
      <attributeEditorRelation showLabel="1" nmRelationId="" label="Datastream" horizontalStretch="0" relation="feature_datastream" forceSuppressFormPopup="0" name="feature_datastream" verticalStretch="0" relationWidgetTypeId="relation_editor">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont underline="0" bold="0" style="" strikethrough="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
        <editor_configuration type="Map">
          <Option type="bool" value="false" name="allow_add_child_feature_with_no_geometry"/>
          <Option type="QString" value="AllButtons" name="buttons"/>
          <Option type="invalid" name="filter_expression"/>
          <Option type="bool" value="true" name="show_first_feature"/>
        </editor_configuration>
      </attributeEditorRelation>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field name="definition" editable="1"/>
    <field name="description" editable="1"/>
    <field name="encodingType" editable="1"/>
    <field name="encodingtype" editable="1"/>
    <field name="feature_profileelement" editable="1"/>
    <field name="feature_soilderivedobject" editable="1"/>
    <field name="feature_soilprofile" editable="1"/>
    <field name="feature_soilsite" editable="1"/>
    <field name="id" editable="1"/>
    <field name="idfeaturetype" editable="1"/>
    <field name="name" editable="1"/>
    <field name="properties" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="definition"/>
    <field labelOnTop="0" name="description"/>
    <field labelOnTop="0" name="encodingType"/>
    <field labelOnTop="0" name="encodingtype"/>
    <field labelOnTop="0" name="feature_profileelement"/>
    <field labelOnTop="0" name="feature_soilderivedobject"/>
    <field labelOnTop="0" name="feature_soilprofile"/>
    <field labelOnTop="0" name="feature_soilsite"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="idfeaturetype"/>
    <field labelOnTop="0" name="name"/>
    <field labelOnTop="0" name="properties"/>
  </labelOnTop>
  <reuseLastValue>
    <field reuseLastValue="0" name="definition"/>
    <field reuseLastValue="0" name="description"/>
    <field reuseLastValue="0" name="encodingType"/>
    <field reuseLastValue="0" name="encodingtype"/>
    <field reuseLastValue="0" name="feature_profileelement"/>
    <field reuseLastValue="0" name="feature_soilderivedobject"/>
    <field reuseLastValue="0" name="feature_soilprofile"/>
    <field reuseLastValue="0" name="feature_soilsite"/>
    <field reuseLastValue="0" name="id"/>
    <field reuseLastValue="0" name="idfeaturetype"/>
    <field reuseLastValue="0" name="name"/>
    <field reuseLastValue="0" name="properties"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets>
    <widget name="feature_datastream">
      <config type="Map">
        <Option type="bool" value="false" name="force-suppress-popup"/>
        <Option type="QString" value="" name="nm-rel"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"name"</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
