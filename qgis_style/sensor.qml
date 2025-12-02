<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="LayerConfiguration|Symbology|Fields|Forms|Actions|Relations" readOnly="0" version="3.44.0-Solothurn">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers/>
  <fieldConfiguration>
    <field configurationFlags="NoFlag" name="id">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="guid">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="name">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="definition">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="description">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="true" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="encodingtype">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="NoFlag" name="metadata">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="true" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
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
  </fieldConfiguration>
  <aliases>
    <alias field="id" index="0" name=""/>
    <alias field="guid" index="1" name=""/>
    <alias field="name" index="2" name="Name"/>
    <alias field="definition" index="3" name="Definition    "/>
    <alias field="description" index="4" name="Description"/>
    <alias field="encodingtype" index="5" name="Encoding Type"/>
    <alias field="metadata" index="6" name="Metadata"/>
    <alias field="properties" index="7" name="Properties"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid" policy="DefaultValue"/>
    <policy field="name" policy="DefaultValue"/>
    <policy field="definition" policy="DefaultValue"/>
    <policy field="description" policy="DefaultValue"/>
    <policy field="encodingtype" policy="DefaultValue"/>
    <policy field="metadata" policy="DefaultValue"/>
    <policy field="properties" policy="DefaultValue"/>
  </splitPolicies>
  <mergePolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid" policy="DefaultValue"/>
    <policy field="name" policy="DefaultValue"/>
    <policy field="definition" policy="DefaultValue"/>
    <policy field="description" policy="DefaultValue"/>
    <policy field="encodingtype" policy="DefaultValue"/>
    <policy field="metadata" policy="DefaultValue"/>
    <policy field="properties" policy="DefaultValue"/>
  </mergePolicies>
  <defaults>
    <default field="id" expression="" applyOnUpdate="0"/>
    <default field="guid" expression="" applyOnUpdate="0"/>
    <default field="name" expression="" applyOnUpdate="0"/>
    <default field="definition" expression="" applyOnUpdate="0"/>
    <default field="description" expression="" applyOnUpdate="0"/>
    <default field="encodingtype" expression="" applyOnUpdate="0"/>
    <default field="metadata" expression="" applyOnUpdate="0"/>
    <default field="properties" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="id" constraints="3" exp_strength="0" notnull_strength="1" unique_strength="1"/>
    <constraint field="guid" constraints="2" exp_strength="0" notnull_strength="0" unique_strength="1"/>
    <constraint field="name" constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0"/>
    <constraint field="definition" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="description" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="encodingtype" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="metadata" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="properties" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" desc="" exp=""/>
    <constraint field="guid" desc="" exp=""/>
    <constraint field="name" desc="" exp=""/>
    <constraint field="definition" desc="" exp=""/>
    <constraint field="description" desc="" exp=""/>
    <constraint field="encodingtype" desc="" exp=""/>
    <constraint field="metadata" desc="" exp=""/>
    <constraint field="properties" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
    <actionsetting icon="" shortTitle="Go to Page" isEnabledOnlyWhenEditable="0" id="{747a0939-84b4-4199-917d-1903bf939406}" capture="0" type="5" notificationMessage="" name="Search on web based on attribute's value" action="[%definition%]">
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
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
      <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" underline="0"/>
    </labelStyle>
    <attributeEditorContainer collapsed="1" visibilityExpressionEnabled="0" columnCount="1" visibilityExpression="" horizontalStretch="0" verticalStretch="0" type="GroupBox" showLabel="1" name="ID" groupBox="1" collapsedExpressionEnabled="0" collapsedExpression="">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" underline="0"/>
      </labelStyle>
      <attributeEditorField index="0" horizontalStretch="0" verticalStretch="0" showLabel="1" name="id">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="1" horizontalStretch="0" verticalStretch="0" showLabel="1" name="guid">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField index="2" horizontalStretch="0" verticalStretch="0" showLabel="1" name="name">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer collapsed="0" visibilityExpressionEnabled="0" columnCount="1" visibilityExpression="" horizontalStretch="0" verticalStretch="0" type="Row" showLabel="0" name="Definition" groupBox="0" collapsedExpressionEnabled="0" collapsedExpression="">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" underline="0"/>
      </labelStyle>
      <attributeEditorField index="3" horizontalStretch="0" verticalStretch="0" showLabel="1" name="definition">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorAction ActionUUID="{747a0939-84b4-4199-917d-1903bf939406}" horizontalStretch="0" verticalStretch="0" showLabel="1" name="{747a0939-84b4-4199-917d-1903bf939406}">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorAction>
    </attributeEditorContainer>
    <attributeEditorField index="4" horizontalStretch="0" verticalStretch="0" showLabel="1" name="description">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField index="5" horizontalStretch="0" verticalStretch="0" showLabel="1" name="encodingtype">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField index="6" horizontalStretch="0" verticalStretch="0" showLabel="1" name="metadata">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer collapsed="1" visibilityExpressionEnabled="0" columnCount="1" visibilityExpression="" horizontalStretch="0" verticalStretch="0" type="GroupBox" showLabel="1" name="Properties" groupBox="1" collapsedExpressionEnabled="0" collapsedExpression="">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" underline="0"/>
      </labelStyle>
      <attributeEditorField index="7" horizontalStretch="0" verticalStretch="0" showLabel="0" name="properties">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer collapsed="0" visibilityExpressionEnabled="0" columnCount="1" visibilityExpression="" horizontalStretch="0" verticalStretch="0" type="GroupBox" showLabel="1" name="RELATIONS" groupBox="1" collapsedExpressionEnabled="0" collapsedExpression="">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" underline="0"/>
      </labelStyle>
      <attributeEditorContainer collapsed="1" visibilityExpressionEnabled="0" columnCount="1" visibilityExpression="" horizontalStretch="0" verticalStretch="0" type="GroupBox" showLabel="1" name="Observed Procedure" groupBox="1" collapsedExpressionEnabled="0" collapsedExpression="">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" underline="0"/>
        </labelStyle>
        <attributeEditorRelation relationWidgetTypeId="relation_editor" horizontalStretch="0" relation="sensor_obsprocedure_sensor" verticalStretch="0" label="" showLabel="0" name="sensor_obsprocedure_sensor" forceSuppressFormPopup="0" nmRelationId="">
          <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
            <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" underline="0"/>
          </labelStyle>
          <editor_configuration type="Map">
            <Option value="false" type="bool" name="allow_add_child_feature_with_no_geometry"/>
            <Option value="AllButtons" type="QString" name="buttons"/>
            <Option type="invalid" name="filter_expression"/>
            <Option value="true" type="bool" name="show_first_feature"/>
          </editor_configuration>
        </attributeEditorRelation>
      </attributeEditorContainer>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field name="definition" editable="1"/>
    <field name="description" editable="1"/>
    <field name="encodingtype" editable="1"/>
    <field name="guid" editable="0"/>
    <field name="guidkey" editable="0"/>
    <field name="id" editable="0"/>
    <field name="metadata" editable="1"/>
    <field name="name" editable="1"/>
    <field name="properties" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="definition"/>
    <field labelOnTop="1" name="description"/>
    <field labelOnTop="0" name="encodingtype"/>
    <field labelOnTop="0" name="guid"/>
    <field labelOnTop="0" name="guidkey"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="1" name="metadata"/>
    <field labelOnTop="0" name="name"/>
    <field labelOnTop="0" name="properties"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="definition" reuseLastValue="0"/>
    <field name="description" reuseLastValue="0"/>
    <field name="encodingtype" reuseLastValue="0"/>
    <field name="guid" reuseLastValue="0"/>
    <field name="guidkey" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="metadata" reuseLastValue="0"/>
    <field name="name" reuseLastValue="0"/>
    <field name="properties" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets>
    <widget name="sensor_datastream_7">
      <config type="Map">
        <Option value="false" type="bool" name="force-suppress-popup"/>
        <Option type="invalid" name="nm-rel"/>
      </config>
    </widget>
    <widget name="sensor_obsprocedure_sensor">
      <config type="Map">
        <Option value="false" type="bool" name="force-suppress-popup"/>
        <Option value="" type="QString" name="nm-rel"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"name"</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
