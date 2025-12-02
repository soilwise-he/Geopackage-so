<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis readOnly="0" version="3.44.0-Solothurn" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Actions|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation id="datastream_observation" name="datastream_observation" providerKey="ogr" layerName="datastream" strength="Composition" dataSource="./SW_15.gpkg|layername=datastream" layerId="datastream_d1fcb085_7d78_487a_abd5_e78d6e00f2bb" referencingLayer="observation_4d160c22_cbd4_448b_a710_434409308753" referencedLayer="datastream_d1fcb085_7d78_487a_abd5_e78d6e00f2bb">
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
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
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
            <Option name="AllowNullState" type="bool" value="false"/>
            <Option name="CheckedState" type="QString" value=""/>
            <Option name="TextDisplayMethod" type="int" value="0"/>
            <Option name="UncheckedState" type="QString" value=""/>
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
  </fieldConfiguration>
  <aliases>
    <alias name="" field="id" index="0"/>
    <alias name="" field="guid" index="1"/>
    <alias name="Start of Phenomenon" field="phenomenontime_start" index="2"/>
    <alias name="End of Phenomenon" field="phenomenontime_end" index="3"/>
    <alias name="Value" field="result_text" index="4"/>
    <alias name="Value" field="result_real" index="5"/>
    <alias name="Value" field="result_boolean" index="6"/>
    <alias name="Time of result" field="resulttime" index="7"/>
    <alias name="Start Time of Validity Period" field="validtime_start" index="8"/>
    <alias name="End Time of Validity Period (mandatory)" field="validtime_end" index="9"/>
    <alias name="" field="properties" index="10"/>
    <alias name="Datastream" field="guid_datastream" index="11"/>
    <alias name="" field="type_data" index="12"/>
  </aliases>
  <splitPolicies>
    <policy policy="DefaultValue" field="id"/>
    <policy policy="DefaultValue" field="guid"/>
    <policy policy="DefaultValue" field="phenomenontime_start"/>
    <policy policy="DefaultValue" field="phenomenontime_end"/>
    <policy policy="DefaultValue" field="result_text"/>
    <policy policy="DefaultValue" field="result_real"/>
    <policy policy="DefaultValue" field="result_boolean"/>
    <policy policy="DefaultValue" field="resulttime"/>
    <policy policy="DefaultValue" field="validtime_start"/>
    <policy policy="DefaultValue" field="validtime_end"/>
    <policy policy="DefaultValue" field="properties"/>
    <policy policy="DefaultValue" field="guid_datastream"/>
    <policy policy="DefaultValue" field="type_data"/>
  </splitPolicies>
  <mergePolicies>
    <policy policy="DefaultValue" field="id"/>
    <policy policy="DefaultValue" field="guid"/>
    <policy policy="DefaultValue" field="phenomenontime_start"/>
    <policy policy="DefaultValue" field="phenomenontime_end"/>
    <policy policy="DefaultValue" field="result_text"/>
    <policy policy="DefaultValue" field="result_real"/>
    <policy policy="DefaultValue" field="result_boolean"/>
    <policy policy="DefaultValue" field="resulttime"/>
    <policy policy="DefaultValue" field="validtime_start"/>
    <policy policy="DefaultValue" field="validtime_end"/>
    <policy policy="DefaultValue" field="properties"/>
    <policy policy="DefaultValue" field="guid_datastream"/>
    <policy policy="DefaultValue" field="type_data"/>
  </mergePolicies>
  <defaults>
    <default applyOnUpdate="0" expression="" field="id"/>
    <default applyOnUpdate="0" expression="" field="guid"/>
    <default applyOnUpdate="0" expression="" field="phenomenontime_start"/>
    <default applyOnUpdate="0" expression="" field="phenomenontime_end"/>
    <default applyOnUpdate="0" expression="" field="result_text"/>
    <default applyOnUpdate="0" expression="" field="result_real"/>
    <default applyOnUpdate="0" expression="" field="result_boolean"/>
    <default applyOnUpdate="0" expression="" field="resulttime"/>
    <default applyOnUpdate="0" expression="" field="validtime_start"/>
    <default applyOnUpdate="0" expression="" field="validtime_end"/>
    <default applyOnUpdate="0" expression="" field="properties"/>
    <default applyOnUpdate="0" expression="" field="guid_datastream"/>
    <default applyOnUpdate="0" expression="" field="type_data"/>
  </defaults>
  <constraints>
    <constraint constraints="3" exp_strength="0" field="id" unique_strength="1" notnull_strength="1"/>
    <constraint constraints="2" exp_strength="0" field="guid" unique_strength="1" notnull_strength="0"/>
    <constraint constraints="1" exp_strength="0" field="phenomenontime_start" unique_strength="0" notnull_strength="1"/>
    <constraint constraints="0" exp_strength="0" field="phenomenontime_end" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="result_text" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="result_real" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="result_boolean" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="resulttime" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="validtime_start" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="validtime_end" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="properties" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="1" exp_strength="0" field="guid_datastream" unique_strength="0" notnull_strength="1"/>
    <constraint constraints="0" exp_strength="0" field="type_data" unique_strength="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="id"/>
    <constraint desc="" exp="" field="guid"/>
    <constraint desc="" exp="" field="phenomenontime_start"/>
    <constraint desc="" exp="" field="phenomenontime_end"/>
    <constraint desc="" exp="" field="result_text"/>
    <constraint desc="" exp="" field="result_real"/>
    <constraint desc="" exp="" field="result_boolean"/>
    <constraint desc="" exp="" field="resulttime"/>
    <constraint desc="" exp="" field="validtime_start"/>
    <constraint desc="" exp="" field="validtime_end"/>
    <constraint desc="" exp="" field="properties"/>
    <constraint desc="" exp="" field="guid_datastream"/>
    <constraint desc="" exp="" field="type_data"/>
  </constraintExpressions>
  <expressionfields>
    <field comment="" typeName="string" name="type_data" length="0" type="10" expression="attribute(get_feature&#xd;&#xa;&#x9;(&#xd;&#xa;&#x9;&#x9;'datastream',&#xd;&#xa;&#x9;&#x9;'guid',&#xd;&#xa;&#x9;&#x9;&quot;guid_datastream&quot;&#xd;&#xa;&#x9;) &#xd;&#xa;&#x9;,'type'&#xd;&#xa;)" subType="0" precision="0"/>
    <field comment="" typeName="string" name="type_data" length="0" type="10" expression="attribute(get_feature&#xd;&#xa;&#x9;(&#xd;&#xa;&#x9;&#x9;'datastream',&#xd;&#xa;&#x9;&#x9;'guid',&#xd;&#xa;&#x9;&#x9;&quot;guid_datastream&quot;&#xd;&#xa;&#x9;) &#xd;&#xa;&#x9;,'type'&#xd;&#xa;)" subType="0" precision="0"/>
  </expressionfields>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
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
    <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
      <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
    </labelStyle>
    <attributeEditorContainer name="ID" collapsed="1" showLabel="1" collapsedExpression="" type="GroupBox" horizontalStretch="0" visibilityExpressionEnabled="0" verticalStretch="0" visibilityExpression="" collapsedExpressionEnabled="0" columnCount="1" groupBox="1">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
      <attributeEditorField name="id" showLabel="1" horizontalStretch="0" verticalStretch="0" index="0">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="guid" showLabel="1" horizontalStretch="0" verticalStretch="0" index="1">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer name="Phenomenon Time" collapsed="0" showLabel="1" collapsedExpression="" type="GroupBox" horizontalStretch="0" visibilityExpressionEnabled="0" verticalStretch="0" visibilityExpression="" collapsedExpressionEnabled="0" columnCount="1" groupBox="1">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
      <attributeEditorField name="phenomenontime_start" showLabel="1" horizontalStretch="0" verticalStretch="0" index="2">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="phenomenontime_end" showLabel="1" horizontalStretch="0" verticalStretch="0" index="3">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer name="Result (Type Quantity)" collapsed="0" showLabel="1" collapsedExpression="" type="GroupBox" horizontalStretch="0" visibilityExpressionEnabled="1" verticalStretch="0" visibilityExpression=" &quot;type_data&quot; ='Quantity'" collapsedExpressionEnabled="0" columnCount="1" groupBox="1">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
      <attributeEditorField name="result_real" showLabel="1" horizontalStretch="0" verticalStretch="0" index="5">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer name="Result (Type Category)" collapsed="0" showLabel="1" collapsedExpression="" type="GroupBox" horizontalStretch="0" visibilityExpressionEnabled="1" verticalStretch="0" visibilityExpression=" &quot;type_data&quot; ='Category'" collapsedExpressionEnabled="0" columnCount="1" groupBox="1">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
      <attributeEditorField name="result_text" showLabel="1" horizontalStretch="0" verticalStretch="0" index="4">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer name="Result (Type Boolean)" collapsed="0" showLabel="1" collapsedExpression="" type="GroupBox" horizontalStretch="0" visibilityExpressionEnabled="1" verticalStretch="0" visibilityExpression=" &quot;type_data&quot; ='Boolean'" collapsedExpressionEnabled="0" columnCount="1" groupBox="1">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
      <attributeEditorField name="result_boolean" showLabel="1" horizontalStretch="0" verticalStretch="0" index="6">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer name="Result (Type Count)" collapsed="0" showLabel="1" collapsedExpression="" type="GroupBox" horizontalStretch="0" visibilityExpressionEnabled="1" verticalStretch="0" visibilityExpression=" &quot;type_data&quot; ='Count'" collapsedExpressionEnabled="0" columnCount="1" groupBox="1">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
      <attributeEditorField name="result_real" showLabel="1" horizontalStretch="0" verticalStretch="0" index="5">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer name="Result (Type Text)" collapsed="0" showLabel="1" collapsedExpression="" type="GroupBox" horizontalStretch="0" visibilityExpressionEnabled="1" verticalStretch="0" visibilityExpression=" &quot;type_data&quot; ='Text'" collapsedExpressionEnabled="0" columnCount="1" groupBox="1">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
      <attributeEditorField name="result_text" showLabel="1" horizontalStretch="0" verticalStretch="0" index="4">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField name="resulttime" showLabel="1" horizontalStretch="0" verticalStretch="0" index="7">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer name="Valid Time" collapsed="0" showLabel="1" collapsedExpression="" type="GroupBox" horizontalStretch="0" visibilityExpressionEnabled="0" verticalStretch="0" visibilityExpression="" collapsedExpressionEnabled="0" columnCount="1" groupBox="1">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
      <attributeEditorField name="validtime_start" showLabel="1" horizontalStretch="0" verticalStretch="0" index="8">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorContainer name="end" collapsed="0" showLabel="0" collapsedExpression="" type="Row" horizontalStretch="0" visibilityExpressionEnabled="1" verticalStretch="0" visibilityExpression=" &quot;validtime_start&quot; is not NULL" collapsedExpressionEnabled="0" columnCount="1" groupBox="0">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
        <attributeEditorField name="validtime_end" showLabel="1" horizontalStretch="0" verticalStretch="0" index="9">
          <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
            <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="Properties" collapsed="1" showLabel="1" collapsedExpression="" type="GroupBox" horizontalStretch="0" visibilityExpressionEnabled="0" verticalStretch="0" visibilityExpression="" collapsedExpressionEnabled="0" columnCount="1" groupBox="1">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
      <attributeEditorField name="properties" showLabel="1" horizontalStretch="0" verticalStretch="0" index="10">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField name="guid_datastream" showLabel="1" horizontalStretch="0" verticalStretch="0" index="11">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer name="Hidden" collapsed="0" showLabel="1" collapsedExpression="" type="GroupBox" horizontalStretch="0" visibilityExpressionEnabled="1" verticalStretch="0" visibilityExpression="1=0" collapsedExpressionEnabled="0" columnCount="1" groupBox="1">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
      <attributeEditorField name="type_data" showLabel="1" horizontalStretch="0" verticalStretch="0" index="12">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field name="Domain" editable="0"/>
    <field name="Type_dat" editable="1"/>
    <field name="guid" editable="0"/>
    <field name="guid_datastream" editable="1"/>
    <field name="id" editable="0"/>
    <field name="phenomenontime_end" editable="1"/>
    <field name="phenomenontime_start" editable="1"/>
    <field name="properties" editable="1"/>
    <field name="result_boolean" editable="1"/>
    <field name="result_real" editable="1"/>
    <field name="result_text" editable="1"/>
    <field name="resulttime" editable="1"/>
    <field name="type_data" editable="0"/>
    <field name="typed" editable="1"/>
    <field name="validtime_end" editable="1"/>
    <field name="validtime_start" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="Domain" labelOnTop="0"/>
    <field name="Type_dat" labelOnTop="0"/>
    <field name="guid" labelOnTop="0"/>
    <field name="guid_datastream" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="phenomenontime_end" labelOnTop="0"/>
    <field name="phenomenontime_start" labelOnTop="0"/>
    <field name="properties" labelOnTop="0"/>
    <field name="result_boolean" labelOnTop="0"/>
    <field name="result_real" labelOnTop="0"/>
    <field name="result_text" labelOnTop="0"/>
    <field name="resulttime" labelOnTop="0"/>
    <field name="type_data" labelOnTop="0"/>
    <field name="typed" labelOnTop="0"/>
    <field name="validtime_end" labelOnTop="0"/>
    <field name="validtime_start" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="Domain" reuseLastValue="0"/>
    <field name="Type_dat" reuseLastValue="0"/>
    <field name="guid" reuseLastValue="0"/>
    <field name="guid_datastream" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="phenomenontime_end" reuseLastValue="0"/>
    <field name="phenomenontime_start" reuseLastValue="0"/>
    <field name="properties" reuseLastValue="0"/>
    <field name="result_boolean" reuseLastValue="0"/>
    <field name="result_real" reuseLastValue="0"/>
    <field name="result_text" reuseLastValue="0"/>
    <field name="resulttime" reuseLastValue="0"/>
    <field name="type_data" reuseLastValue="0"/>
    <field name="typed" reuseLastValue="0"/>
    <field name="validtime_end" reuseLastValue="0"/>
    <field name="validtime_start" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>' Value = '||&#xd;
CASE &#xd;
WHEN  "type_data" ='Quantity' &#xd;
THEN  &#xd;
"result_real"&#xd;
 &#xd;
WHEN  "type_data" ='Category' &#xd;
THEN  &#xd;
 "result_text" &#xd;
 &#xd;
END&#xd;
|| ' - ('|| "phenomenontime_start" ||')'</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
