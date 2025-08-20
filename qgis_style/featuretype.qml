<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis readOnly="0" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations" version="3.44.0-Solothurn">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers/>
  <fieldConfiguration>
    <field name="id" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="name" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="definition" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="description" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
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
  </fieldConfiguration>
  <aliases>
    <alias field="id" index="0" name="Id"/>
    <alias field="name" index="1" name="name"/>
    <alias field="definition" index="2" name="Definition (URI)"/>
    <alias field="description" index="3" name="Description"/>
    <alias field="properties" index="4" name="Propertiess"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="name" policy="DefaultValue"/>
    <policy field="definition" policy="DefaultValue"/>
    <policy field="description" policy="DefaultValue"/>
    <policy field="properties" policy="DefaultValue"/>
  </splitPolicies>
  <mergePolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="name" policy="DefaultValue"/>
    <policy field="definition" policy="DefaultValue"/>
    <policy field="description" policy="DefaultValue"/>
    <policy field="properties" policy="DefaultValue"/>
  </mergePolicies>
  <defaults>
    <default expression="" applyOnUpdate="0" field="id"/>
    <default expression="" applyOnUpdate="0" field="name"/>
    <default expression="" applyOnUpdate="0" field="definition"/>
    <default expression="" applyOnUpdate="0" field="description"/>
    <default expression="" applyOnUpdate="0" field="properties"/>
  </defaults>
  <constraints>
    <constraint exp_strength="0" unique_strength="1" field="id" constraints="3" notnull_strength="1"/>
    <constraint exp_strength="0" unique_strength="0" field="name" constraints="1" notnull_strength="1"/>
    <constraint exp_strength="0" unique_strength="0" field="definition" constraints="0" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" field="description" constraints="0" notnull_strength="0"/>
    <constraint exp_strength="0" unique_strength="0" field="properties" constraints="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="id" exp=""/>
    <constraint desc="" field="name" exp=""/>
    <constraint desc="" field="definition" exp=""/>
    <constraint desc="" field="description" exp=""/>
    <constraint desc="" field="properties" exp=""/>
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
      <labelFont underline="0" style="" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0" italic="0"/>
    </labelStyle>
    <attributeEditorField showLabel="1" horizontalStretch="0" verticalStretch="0" name="id" index="0">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont underline="0" style="" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0" italic="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField showLabel="1" horizontalStretch="0" verticalStretch="0" name="name" index="1">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont underline="0" style="" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0" italic="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField showLabel="1" horizontalStretch="0" verticalStretch="0" name="definition" index="2">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont underline="0" style="" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0" italic="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField showLabel="1" horizontalStretch="0" verticalStretch="0" name="description" index="3">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont underline="0" style="" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0" italic="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer groupBox="1" showLabel="1" collapsed="1" type="GroupBox" visibilityExpression="" collapsedExpressionEnabled="0" horizontalStretch="0" collapsedExpression="" visibilityExpressionEnabled="0" verticalStretch="0" columnCount="1" name="Properties">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont underline="0" style="" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0" italic="0"/>
      </labelStyle>
      <attributeEditorField showLabel="0" horizontalStretch="0" verticalStretch="0" name="properties" index="4">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont underline="0" style="" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0" italic="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="1" showLabel="1" collapsed="1" type="GroupBox" visibilityExpression="" collapsedExpressionEnabled="0" horizontalStretch="0" collapsedExpression="" visibilityExpressionEnabled="0" verticalStretch="0" columnCount="1" name="Feature">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont underline="0" style="" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0" italic="0"/>
      </labelStyle>
      <attributeEditorRelation nmRelationId="" showLabel="0" label="" forceSuppressFormPopup="0" relationWidgetTypeId="relation_editor" horizontalStretch="0" relation="featuretype_feature" verticalStretch="0" name="featuretype_feature">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont underline="0" style="" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0" italic="0"/>
        </labelStyle>
        <editor_configuration type="Map">
          <Option value="false" type="bool" name="allow_add_child_feature_with_no_geometry"/>
          <Option value="AllButtons" type="QString" name="buttons"/>
          <Option value="" type="QString" name="filter_expression"/>
          <Option value="true" type="bool" name="show_first_feature"/>
        </editor_configuration>
      </attributeEditorRelation>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field editable="1" name="definition"/>
    <field editable="1" name="description"/>
    <field editable="1" name="id"/>
    <field editable="1" name="name"/>
    <field editable="1" name="properties"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="definition"/>
    <field labelOnTop="0" name="description"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="name"/>
    <field labelOnTop="0" name="properties"/>
  </labelOnTop>
  <reuseLastValue>
    <field reuseLastValue="0" name="definition"/>
    <field reuseLastValue="0" name="description"/>
    <field reuseLastValue="0" name="id"/>
    <field reuseLastValue="0" name="name"/>
    <field reuseLastValue="0" name="properties"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets>
    <widget name="featuretype_feature">
      <config type="Map">
        <Option value="false" type="bool" name="force-suppress-popup"/>
        <Option type="invalid" name="nm-rel"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"name"</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
