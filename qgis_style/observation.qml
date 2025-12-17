<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis readOnly="0" version="3.44.0-Solothurn" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Actions|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation dataSource="./SW_21.gpkg|layername=datastream" layerId="datastream_a469526b_b3bd_4dc9_8312_6204bfc15ab8" id="datastream_observation" layerName="datastream" strength="Association" name="datastream_observation" referencedLayer="datastream_a469526b_b3bd_4dc9_8312_6204bfc15ab8" providerKey="ogr" referencingLayer="observation_e95caa82_81e9_4b77_b221_658268b1f642">
      <fieldRef referencingField="guid_datastream" referencedField="guid"/>
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
    <field name="guid" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="phenomenontime_start" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" type="bool" value="true"/>
            <Option name="calendar_popup" type="bool" value="true"/>
            <Option name="display_format" type="QString" value="d MMM yyyy HH:mm:ss"/>
            <Option name="field_format" type="QString" value="yyyy-MM-dd HH:mm:ss"/>
            <Option name="field_format_overwrite" type="bool" value="false"/>
            <Option name="field_iso_format" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="phenomenontime_end" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" type="bool" value="true"/>
            <Option name="calendar_popup" type="bool" value="true"/>
            <Option name="display_format" type="QString" value="d MMM yyyy HH:mm:ss"/>
            <Option name="field_format" type="QString" value="yyyy-MM-dd HH:mm:ss"/>
            <Option name="field_format_overwrite" type="bool" value="false"/>
            <Option name="field_iso_format" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="result_text" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" type="bool" value="false"/>
            <Option name="AllowNull" type="bool" value="false"/>
            <Option name="CompleterMatchFlags" type="int" value="2"/>
            <Option name="Description" type="invalid"/>
            <Option name="DisplayGroupName" type="bool" value="false"/>
            <Option name="FilterExpression" type="QString" value="&quot;collection&quot;  IN (attribute(get_feature&#xa;(&#xa;&#x9;'datastream',&#xa;&#x9;'guid',&#xa;&#x9;current_value('guid_datastream')&#xa;) &#xa;,'codespace'))"/>
            <Option name="Group" type="invalid"/>
            <Option name="Key" type="QString" value="id"/>
            <Option name="Layer" type="QString" value="codelist_f0a44890_4094_42a9_91ee_5774ede060e3"/>
            <Option name="LayerName" type="QString" value="codelist"/>
            <Option name="LayerProviderName" type="QString" value="ogr"/>
            <Option name="LayerSource" type="QString" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_21.gpkg|layername=codelist"/>
            <Option name="NofColumns" type="int" value="1"/>
            <Option name="OrderByDescending" type="bool" value="false"/>
            <Option name="OrderByField" type="bool" value="false"/>
            <Option name="OrderByFieldName" type="QString" value="id"/>
            <Option name="OrderByKey" type="bool" value="true"/>
            <Option name="OrderByValue" type="bool" value="false"/>
            <Option name="UseCompleter" type="bool" value="false"/>
            <Option name="Value" type="QString" value="label"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="result_real" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="result_boolean" configurationFlags="NoFlag">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option name="AllowNullState" type="bool" value="true"/>
            <Option name="CheckedState" type="invalid"/>
            <Option name="TextDisplayMethod" type="int" value="0"/>
            <Option name="UncheckedState" type="invalid"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="resulttime" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" type="bool" value="true"/>
            <Option name="calendar_popup" type="bool" value="true"/>
            <Option name="display_format" type="QString" value="d MMM yyyy HH:mm:ss"/>
            <Option name="field_format" type="QString" value="yyyy-MM-dd HH:mm:ss"/>
            <Option name="field_format_overwrite" type="bool" value="false"/>
            <Option name="field_iso_format" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="validtime_start" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" type="bool" value="true"/>
            <Option name="calendar_popup" type="bool" value="true"/>
            <Option name="display_format" type="QString" value="d MMM yyyy HH:mm:ss"/>
            <Option name="field_format" type="QString" value="yyyy-MM-dd HH:mm:ss"/>
            <Option name="field_format_overwrite" type="bool" value="false"/>
            <Option name="field_iso_format" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="validtime_end" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" type="bool" value="true"/>
            <Option name="calendar_popup" type="bool" value="true"/>
            <Option name="display_format" type="QString" value="d MMM yyyy HH:mm:ss"/>
            <Option name="field_format" type="QString" value="yyyy-MM-dd HH:mm:ss"/>
            <Option name="field_format_overwrite" type="bool" value="false"/>
            <Option name="field_iso_format" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="properties" configurationFlags="NoFlag">
      <editWidget type="KeyValue">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="guid_datastream" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" type="bool" value="false"/>
            <Option name="AllowNULL" type="bool" value="false"/>
            <Option name="FetchLimitActive" type="bool" value="true"/>
            <Option name="FetchLimitNumber" type="int" value="100"/>
            <Option name="MapIdentification" type="bool" value="false"/>
            <Option name="ReadOnly" type="bool" value="false"/>
            <Option name="ReferencedLayerDataSource" type="QString" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=datastream"/>
            <Option name="ReferencedLayerId" type="QString" value="datastream_d1fcb085_7d78_487a_abd5_e78d6e00f2bb"/>
            <Option name="ReferencedLayerName" type="QString" value="datastream"/>
            <Option name="ReferencedLayerProviderKey" type="QString" value="ogr"/>
            <Option name="Relation" type="QString" value="datastream_observation"/>
            <Option name="ShowForm" type="bool" value="false"/>
            <Option name="ShowOpenFormButton" type="bool" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="auxiliary_storage_user_custom_note" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="true"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="type_data" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="note" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="true"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" index="0" field="id"/>
    <alias name="" index="1" field="guid"/>
    <alias name="Start of Phenomenon" index="2" field="phenomenontime_start"/>
    <alias name="End of Phenomenon" index="3" field="phenomenontime_end"/>
    <alias name="Value" index="4" field="result_text"/>
    <alias name="Value" index="5" field="result_real"/>
    <alias name="Value" index="6" field="result_boolean"/>
    <alias name="Time of result" index="7" field="resulttime"/>
    <alias name="Start Time of Validity Period" index="8" field="validtime_start"/>
    <alias name="End Time of Validity Period (mandatory)" index="9" field="validtime_end"/>
    <alias name="" index="10" field="properties"/>
    <alias name="Datastream" index="11" field="guid_datastream"/>
    <alias name="Value  (Edit-only)" index="12" field="auxiliary_storage_user_custom_note"/>
    <alias name="" index="13" field="type_data"/>
    <alias name="Value  (Read-only)" index="14" field="note"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid" policy="DefaultValue"/>
    <policy field="phenomenontime_start" policy="DefaultValue"/>
    <policy field="phenomenontime_end" policy="DefaultValue"/>
    <policy field="result_text" policy="DefaultValue"/>
    <policy field="result_real" policy="DefaultValue"/>
    <policy field="result_boolean" policy="DefaultValue"/>
    <policy field="resulttime" policy="DefaultValue"/>
    <policy field="validtime_start" policy="DefaultValue"/>
    <policy field="validtime_end" policy="DefaultValue"/>
    <policy field="properties" policy="DefaultValue"/>
    <policy field="guid_datastream" policy="DefaultValue"/>
    <policy field="auxiliary_storage_user_custom_note" policy="DefaultValue"/>
    <policy field="type_data" policy="DefaultValue"/>
    <policy field="note" policy="DefaultValue"/>
  </splitPolicies>
  <mergePolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid" policy="DefaultValue"/>
    <policy field="phenomenontime_start" policy="DefaultValue"/>
    <policy field="phenomenontime_end" policy="DefaultValue"/>
    <policy field="result_text" policy="DefaultValue"/>
    <policy field="result_real" policy="DefaultValue"/>
    <policy field="result_boolean" policy="DefaultValue"/>
    <policy field="resulttime" policy="DefaultValue"/>
    <policy field="validtime_start" policy="DefaultValue"/>
    <policy field="validtime_end" policy="DefaultValue"/>
    <policy field="properties" policy="DefaultValue"/>
    <policy field="guid_datastream" policy="DefaultValue"/>
    <policy field="auxiliary_storage_user_custom_note" policy="DefaultValue"/>
    <policy field="type_data" policy="DefaultValue"/>
    <policy field="note" policy="DefaultValue"/>
  </mergePolicies>
  <defaults>
    <default expression="" applyOnUpdate="0" field="id"/>
    <default expression="" applyOnUpdate="0" field="guid"/>
    <default expression="" applyOnUpdate="0" field="phenomenontime_start"/>
    <default expression="" applyOnUpdate="0" field="phenomenontime_end"/>
    <default expression="CASE&#xd;&#xa;  WHEN &quot;auxiliary_storage_user_custom_note&quot; IS NOT NULL&#xd;&#xa;    THEN &quot;auxiliary_storage_user_custom_note&quot;&#xd;&#xa;  ELSE &quot;result_text&quot;&#xd;&#xa;END" applyOnUpdate="1" field="result_text"/>
    <default expression="" applyOnUpdate="0" field="result_real"/>
    <default expression="" applyOnUpdate="0" field="result_boolean"/>
    <default expression="" applyOnUpdate="0" field="resulttime"/>
    <default expression="" applyOnUpdate="0" field="validtime_start"/>
    <default expression="" applyOnUpdate="0" field="validtime_end"/>
    <default expression="" applyOnUpdate="0" field="properties"/>
    <default expression="" applyOnUpdate="0" field="guid_datastream"/>
    <default expression="" applyOnUpdate="0" field="auxiliary_storage_user_custom_note"/>
    <default expression="" applyOnUpdate="0" field="type_data"/>
    <default expression="" applyOnUpdate="0" field="note"/>
  </defaults>
  <constraints>
    <constraint notnull_strength="1" field="id" constraints="3" unique_strength="1" exp_strength="0"/>
    <constraint notnull_strength="0" field="guid" constraints="2" unique_strength="1" exp_strength="0"/>
    <constraint notnull_strength="1" field="phenomenontime_start" constraints="1" unique_strength="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="phenomenontime_end" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="result_text" constraints="4" unique_strength="0" exp_strength="2"/>
    <constraint notnull_strength="0" field="result_real" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="result_boolean" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="resulttime" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="validtime_start" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="validtime_end" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="properties" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint notnull_strength="1" field="guid_datastream" constraints="1" unique_strength="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="auxiliary_storage_user_custom_note" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="type_data" constraints="0" unique_strength="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="note" constraints="0" unique_strength="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="id" exp=""/>
    <constraint desc="" field="guid" exp=""/>
    <constraint desc="" field="phenomenontime_start" exp=""/>
    <constraint desc="" field="phenomenontime_end" exp=""/>
    <constraint desc="" field="result_text" exp="CASE&#xd;&#xa;  WHEN &quot;auxiliary_storage_user_custom_note&quot; IS NOT NULL&#xd;&#xa;    THEN &quot;auxiliary_storage_user_custom_note&quot;&#xd;&#xa;  ELSE &quot;result_text&quot;&#xd;&#xa;END&#xd;&#xa;&#xd;&#xa;"/>
    <constraint desc="" field="result_real" exp=""/>
    <constraint desc="" field="result_boolean" exp=""/>
    <constraint desc="" field="resulttime" exp=""/>
    <constraint desc="" field="validtime_start" exp=""/>
    <constraint desc="" field="validtime_end" exp=""/>
    <constraint desc="" field="properties" exp=""/>
    <constraint desc="" field="guid_datastream" exp=""/>
    <constraint desc="" field="auxiliary_storage_user_custom_note" exp=""/>
    <constraint desc="" field="type_data" exp=""/>
    <constraint desc="" field="note" exp=""/>
  </constraintExpressions>
  <expressionfields>
    <field comment="" expression="attribute(get_feature&#xd;&#xa;&#x9;(&#xd;&#xa;&#x9;&#x9;'datastream',&#xd;&#xa;&#x9;&#x9;'guid',&#xd;&#xa;&#x9;&#x9;&quot;guid_datastream&quot;&#xd;&#xa;&#x9;) &#xd;&#xa;&#x9;,'type'&#xd;&#xa;)" name="type_data" precision="0" type="10" length="0" typeName="string" subType="0"/>
    <field comment="" expression="attribute(get_feature&#xd;&#xa;&#x9;(&#xd;&#xa;&#x9;&#x9;'datastream',&#xd;&#xa;&#x9;&#x9;'guid',&#xd;&#xa;&#x9;&#x9;&quot;guid_datastream&quot;&#xd;&#xa;&#x9;) &#xd;&#xa;&#x9;,'type'&#xd;&#xa;)" name="type_data" precision="0" type="10" length="0" typeName="string" subType="0"/>
    <field comment="" expression=" &quot;result_text&quot; " name="note" precision="0" type="10" length="0" typeName="string" subType="0"/>
    <field comment="" expression=" &quot;result_text&quot; " name="note" precision="0" type="10" length="0" typeName="string" subType="0"/>
  </expressionfields>
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
      <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
    </labelStyle>
    <attributeEditorContainer collapsedExpressionEnabled="0" name="ID" horizontalStretch="0" collapsedExpression="" visibilityExpression="" columnCount="1" verticalStretch="0" type="GroupBox" collapsed="1" showLabel="1" groupBox="1" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
      </labelStyle>
      <attributeEditorField name="id" horizontalStretch="0" verticalStretch="0" index="0" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="guid" horizontalStretch="0" verticalStretch="0" index="1" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer collapsedExpressionEnabled="0" name="Phenomenon Time" horizontalStretch="0" collapsedExpression="" visibilityExpression="" columnCount="1" verticalStretch="0" type="GroupBox" collapsed="0" showLabel="1" groupBox="1" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
      </labelStyle>
      <attributeEditorField name="phenomenontime_start" horizontalStretch="0" verticalStretch="0" index="2" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="phenomenontime_end" horizontalStretch="0" verticalStretch="0" index="3" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer collapsedExpressionEnabled="0" name="Result (Type Quantity)" horizontalStretch="0" collapsedExpression="" visibilityExpression=" &quot;type_data&quot; ='Quantity'" columnCount="1" verticalStretch="0" type="GroupBox" collapsed="0" showLabel="1" groupBox="1" visibilityExpressionEnabled="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
      </labelStyle>
      <attributeEditorField name="result_real" horizontalStretch="0" verticalStretch="0" index="5" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer collapsedExpressionEnabled="0" name="Result (Type Category)" horizontalStretch="0" collapsedExpression="" visibilityExpression=" &quot;type_data&quot; ='Category'" columnCount="1" verticalStretch="0" type="GroupBox" collapsed="0" showLabel="1" groupBox="1" visibilityExpressionEnabled="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
      </labelStyle>
      <attributeEditorField name="result_text" horizontalStretch="0" verticalStretch="0" index="4" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer collapsedExpressionEnabled="0" name="Result (Type Boolean)" horizontalStretch="0" collapsedExpression="" visibilityExpression=" &quot;type_data&quot; ='Boolean'" columnCount="1" verticalStretch="0" type="GroupBox" collapsed="0" showLabel="1" groupBox="1" visibilityExpressionEnabled="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
      </labelStyle>
      <attributeEditorField name="result_boolean" horizontalStretch="0" verticalStretch="0" index="6" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer collapsedExpressionEnabled="0" name="Result (Type Count)" horizontalStretch="0" collapsedExpression="" visibilityExpression=" &quot;type_data&quot; ='Count'" columnCount="1" verticalStretch="0" type="GroupBox" collapsed="0" showLabel="1" groupBox="1" visibilityExpressionEnabled="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
      </labelStyle>
      <attributeEditorField name="result_real" horizontalStretch="0" verticalStretch="0" index="5" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer collapsedExpressionEnabled="0" name="Result (Type Text)" horizontalStretch="0" collapsedExpression="" visibilityExpression=" &quot;type_data&quot; ='Text'" columnCount="1" verticalStretch="0" type="GroupBox" collapsed="0" showLabel="1" groupBox="1" visibilityExpressionEnabled="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
      </labelStyle>
      <attributeEditorField name="note" horizontalStretch="0" verticalStretch="0" index="14" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="auxiliary_storage_user_custom_note" horizontalStretch="0" verticalStretch="0" index="12" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField name="resulttime" horizontalStretch="0" verticalStretch="0" index="7" showLabel="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer collapsedExpressionEnabled="0" name="Valid Time" horizontalStretch="0" collapsedExpression="" visibilityExpression="" columnCount="1" verticalStretch="0" type="GroupBox" collapsed="0" showLabel="1" groupBox="1" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
      </labelStyle>
      <attributeEditorField name="validtime_start" horizontalStretch="0" verticalStretch="0" index="8" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorContainer collapsedExpressionEnabled="0" name="end" horizontalStretch="0" collapsedExpression="" visibilityExpression=" &quot;validtime_start&quot; is not NULL" columnCount="1" verticalStretch="0" type="Row" collapsed="0" showLabel="0" groupBox="0" visibilityExpressionEnabled="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
        </labelStyle>
        <attributeEditorField name="validtime_end" horizontalStretch="0" verticalStretch="0" index="9" showLabel="1">
          <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
            <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer collapsedExpressionEnabled="0" name="Properties" horizontalStretch="0" collapsedExpression="" visibilityExpression="" columnCount="1" verticalStretch="0" type="GroupBox" collapsed="1" showLabel="1" groupBox="1" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
      </labelStyle>
      <attributeEditorField name="properties" horizontalStretch="0" verticalStretch="0" index="10" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField name="guid_datastream" horizontalStretch="0" verticalStretch="0" index="11" showLabel="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer collapsedExpressionEnabled="0" name="Hidden" horizontalStretch="0" collapsedExpression="" visibilityExpression="1=0" columnCount="1" verticalStretch="0" type="GroupBox" collapsed="0" showLabel="1" groupBox="1" visibilityExpressionEnabled="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
      </labelStyle>
      <attributeEditorField name="type_data" horizontalStretch="0" verticalStretch="0" index="13" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" underline="0" strikethrough="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" italic="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field name="Domain" editable="0"/>
    <field name="Type_dat" editable="1"/>
    <field name="auxiliary_storage_user_custom_note" editable="0"/>
    <field name="guid" editable="0"/>
    <field name="guid_datastream" editable="1"/>
    <field name="id" editable="0"/>
    <field name="my_text" editable="0"/>
    <field name="note" editable="0"/>
    <field name="phenomenontime_end" editable="1"/>
    <field name="phenomenontime_start" editable="1"/>
    <field name="properties" editable="1"/>
    <field name="result_boolean" editable="1"/>
    <field name="result_real" editable="1"/>
    <field name="result_test_long" editable="0"/>
    <field name="result_text" editable="1"/>
    <field name="resulttime" editable="1"/>
    <field name="text_note" editable="1"/>
    <field name="type_data" editable="0"/>
    <field name="typed" editable="1"/>
    <field name="validtime_end" editable="1"/>
    <field name="validtime_start" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="Domain" labelOnTop="0"/>
    <field name="Type_dat" labelOnTop="0"/>
    <field name="auxiliary_storage_user_custom_note" labelOnTop="1"/>
    <field name="guid" labelOnTop="0"/>
    <field name="guid_datastream" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="my_text" labelOnTop="0"/>
    <field name="note" labelOnTop="1"/>
    <field name="phenomenontime_end" labelOnTop="0"/>
    <field name="phenomenontime_start" labelOnTop="0"/>
    <field name="properties" labelOnTop="0"/>
    <field name="result_boolean" labelOnTop="0"/>
    <field name="result_real" labelOnTop="0"/>
    <field name="result_test_long" labelOnTop="0"/>
    <field name="result_text" labelOnTop="0"/>
    <field name="resulttime" labelOnTop="0"/>
    <field name="text_note" labelOnTop="0"/>
    <field name="type_data" labelOnTop="0"/>
    <field name="typed" labelOnTop="0"/>
    <field name="validtime_end" labelOnTop="0"/>
    <field name="validtime_start" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field reuseLastValue="0" name="Domain"/>
    <field reuseLastValue="0" name="Type_dat"/>
    <field reuseLastValue="0" name="auxiliary_storage_user_custom_note"/>
    <field reuseLastValue="0" name="guid"/>
    <field reuseLastValue="0" name="guid_datastream"/>
    <field reuseLastValue="0" name="id"/>
    <field reuseLastValue="0" name="my_text"/>
    <field reuseLastValue="0" name="note"/>
    <field reuseLastValue="0" name="phenomenontime_end"/>
    <field reuseLastValue="0" name="phenomenontime_start"/>
    <field reuseLastValue="0" name="properties"/>
    <field reuseLastValue="0" name="result_boolean"/>
    <field reuseLastValue="0" name="result_real"/>
    <field reuseLastValue="0" name="result_test_long"/>
    <field reuseLastValue="0" name="result_text"/>
    <field reuseLastValue="0" name="resulttime"/>
    <field reuseLastValue="0" name="text_note"/>
    <field reuseLastValue="0" name="type_data"/>
    <field reuseLastValue="0" name="typed"/>
    <field reuseLastValue="0" name="validtime_end"/>
    <field reuseLastValue="0" name="validtime_start"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>CASE &#xd;
WHEN  "type_data" ='Quantity' &#xd;
THEN  &#xd;
"result_real"&#xd;
 &#xd;
WHEN  "type_data" ='Category' &#xd;
THEN  &#xd;
regexp_substr("result_text" , '[^/]+$')&#xd;
&#xd;
WHEN  "type_data" ='Count' &#xd;
THEN  &#xd;
"result_real"&#xd;
 &#xd;
WHEN  "type_data" ='Boolean' &#xd;
THEN  &#xd;
"result_boolean" &#xd;
&#xd;
WHEN  "type_data" ='Text' &#xd;
THEN  &#xd;
'note'&#xd;
END&#xd;
|| ' - ('|| "phenomenontime_start" ||')'</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
