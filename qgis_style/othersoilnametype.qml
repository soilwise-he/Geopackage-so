<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" readOnly="0" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation name="soilprofile_othersoilnametype" referencingLayer="othersoilnametype_b67946df_f895_4167_89fa_9532bf308ea4" id="soilprofile_othersoilnametype" layerName="soilprofile" strength="Composition" layerId="soilprofile_216eea7c_d015_4117_8c9f_df0b7692b5a7" referencedLayer="soilprofile_216eea7c_d015_4117_8c9f_df0b7692b5a7" providerKey="ogr" dataSource="./SW_15.gpkg|layername=soilprofile">
      <fieldRef referencingField="othersoilname" referencedField="guid"/>
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
    <field name="guid" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="othersoilname_type" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="false" type="bool"/>
            <Option name="CompleterMatchFlags" value="2" type="int"/>
            <Option name="Description" value="&quot;label&quot;" type="QString"/>
            <Option name="DisplayGroupName" value="false" type="bool"/>
            <Option name="FilterExpression" value="&quot;collection&quot; IN('OtherSoilNameTypeValue') " type="QString"/>
            <Option name="Group" value="" type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="codelist_a19771d8_036c_4ed5_9822_7f24f4d13c01" type="QString"/>
            <Option name="LayerName" value="codelist" type="QString"/>
            <Option name="LayerProviderName" value="ogr" type="QString"/>
            <Option name="LayerSource" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=codelist" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByDescending" value="false" type="bool"/>
            <Option name="OrderByField" value="false" type="bool"/>
            <Option name="OrderByFieldName" value="" type="QString"/>
            <Option name="OrderByKey" value="true" type="bool"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="label" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="othersoilname_class" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="isoriginalclassification" configurationFlags="NoFlag">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option name="AllowNullState" value="false" type="bool"/>
            <Option name="CheckedState" value="" type="QString"/>
            <Option name="TextDisplayMethod" value="0" type="int"/>
            <Option name="UncheckedState" value="" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="othersoilname" configurationFlags="NoFlag">
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
            <Option name="Relation" value="soilprofile_othersoilnametype" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="id" index="0"/>
    <alias name="" field="guid" index="1"/>
    <alias name="Type" field="othersoilname_type" index="2"/>
    <alias name="Class" field="othersoilname_class" index="3"/>
    <alias name="It is an Original classification" field="isoriginalclassification" index="4"/>
    <alias name="Soil Profile" field="othersoilname" index="5"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid" policy="DefaultValue"/>
    <policy field="othersoilname_type" policy="DefaultValue"/>
    <policy field="othersoilname_class" policy="DefaultValue"/>
    <policy field="isoriginalclassification" policy="DefaultValue"/>
    <policy field="othersoilname" policy="DefaultValue"/>
  </splitPolicies>
  <mergePolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid" policy="DefaultValue"/>
    <policy field="othersoilname_type" policy="DefaultValue"/>
    <policy field="othersoilname_class" policy="DefaultValue"/>
    <policy field="isoriginalclassification" policy="DefaultValue"/>
    <policy field="othersoilname" policy="DefaultValue"/>
  </mergePolicies>
  <defaults>
    <default field="id" applyOnUpdate="0" expression=""/>
    <default field="guid" applyOnUpdate="0" expression=""/>
    <default field="othersoilname_type" applyOnUpdate="0" expression=""/>
    <default field="othersoilname_class" applyOnUpdate="0" expression=""/>
    <default field="isoriginalclassification" applyOnUpdate="0" expression=""/>
    <default field="othersoilname" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" notnull_strength="1" field="id" constraints="3" exp_strength="0"/>
    <constraint unique_strength="1" notnull_strength="0" field="guid" constraints="2" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="othersoilname_type" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="othersoilname_class" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="isoriginalclassification" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="othersoilname" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="id"/>
    <constraint exp="" desc="" field="guid"/>
    <constraint exp="" desc="" field="othersoilname_type"/>
    <constraint exp="" desc="" field="othersoilname_class"/>
    <constraint exp="" desc="" field="isoriginalclassification"/>
    <constraint exp="" desc="" field="othersoilname"/>
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
    <attributeEditorContainer groupBox="1" name="ID" verticalStretch="0" visibilityExpressionEnabled="0" showLabel="1" type="GroupBox" collapsed="1" visibilityExpression="" collapsedExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
      <attributeEditorField name="id" verticalStretch="0" showLabel="1" index="0" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="guid" verticalStretch="0" showLabel="1" index="1" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField name="othersoilname_type" verticalStretch="0" showLabel="1" index="2" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="othersoilname_class" verticalStretch="0" showLabel="1" index="3" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="isoriginalclassification" verticalStretch="0" showLabel="1" index="4" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="othersoilname" verticalStretch="0" showLabel="1" index="5" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
  </attributeEditorForm>
  <editable>
    <field name="guid" editable="0"/>
    <field name="id" editable="0"/>
    <field name="isoriginalclassification" editable="1"/>
    <field name="othersoilname" editable="1"/>
    <field name="othersoilname_class" editable="1"/>
    <field name="othersoilname_type" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="guid"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="isoriginalclassification"/>
    <field labelOnTop="0" name="othersoilname"/>
    <field labelOnTop="0" name="othersoilname_class"/>
    <field labelOnTop="0" name="othersoilname_type"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="guid" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="isoriginalclassification" reuseLastValue="0"/>
    <field name="othersoilname" reuseLastValue="0"/>
    <field name="othersoilname_class" reuseLastValue="0"/>
    <field name="othersoilname_type" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>regexp_substr(COALESCE( "othersoilname_type", '&lt;NULL>' ), '/([^/]+)$')&#xd;&#xd;
|| ' - ' ||&#xd;&#xd;
 "othersoilname_class" &#xd;&#xd;
</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
