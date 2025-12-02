<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Actions|Relations" readOnly="0">
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
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="label" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="collection" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="collectionset" configurationFlags="NoFlag">
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
    <alias name="Identificator" field="id" index="0"/>
    <alias name="Label" field="label" index="1"/>
    <alias name="Collection" field="collection" index="2"/>
    <alias name="Collection Set" field="collectionset" index="3"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="label" policy="DefaultValue"/>
    <policy field="collection" policy="DefaultValue"/>
    <policy field="collectionset" policy="DefaultValue"/>
  </splitPolicies>
  <mergePolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="label" policy="DefaultValue"/>
    <policy field="collection" policy="DefaultValue"/>
    <policy field="collectionset" policy="DefaultValue"/>
  </mergePolicies>
  <defaults>
    <default applyOnUpdate="0" field="id" expression=""/>
    <default applyOnUpdate="0" field="label" expression=""/>
    <default applyOnUpdate="0" field="collection" expression=""/>
    <default applyOnUpdate="0" field="collectionset" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="0" notnull_strength="0" field="id" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="label" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="collection" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="collectionset" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" exp="" desc=""/>
    <constraint field="label" exp="" desc=""/>
    <constraint field="collection" exp="" desc=""/>
    <constraint field="collectionset" exp="" desc=""/>
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
    <labelStyle labelColor="" overrideLabelFont="0" overrideLabelColor="0">
      <labelFont strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" bold="0" italic="0"/>
    </labelStyle>
    <attributeEditorField name="id" horizontalStretch="0" verticalStretch="0" showLabel="1" index="0">
      <labelStyle labelColor="" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" bold="0" italic="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="label" horizontalStretch="0" verticalStretch="0" showLabel="1" index="1">
      <labelStyle labelColor="" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" bold="0" italic="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="collection" horizontalStretch="0" verticalStretch="0" showLabel="1" index="2">
      <labelStyle labelColor="" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" bold="0" italic="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="collectionset" horizontalStretch="0" verticalStretch="0" showLabel="1" index="3">
      <labelStyle labelColor="" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" bold="0" italic="0"/>
      </labelStyle>
    </attributeEditorField>
  </attributeEditorForm>
  <editable>
    <field name="collection" editable="1"/>
    <field name="collectionset" editable="1"/>
    <field name="definition" editable="1"/>
    <field name="foi" editable="1"/>
    <field name="foi_phenomenon" editable="1"/>
    <field name="id" editable="1"/>
    <field name="label" editable="1"/>
    <field name="phenomenon" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="collection" labelOnTop="0"/>
    <field name="collectionset" labelOnTop="0"/>
    <field name="definition" labelOnTop="0"/>
    <field name="foi" labelOnTop="0"/>
    <field name="foi_phenomenon" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="label" labelOnTop="0"/>
    <field name="phenomenon" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="collection" reuseLastValue="0"/>
    <field name="collectionset" reuseLastValue="0"/>
    <field name="definition" reuseLastValue="0"/>
    <field name="foi" reuseLastValue="0"/>
    <field name="foi_phenomenon" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="label" reuseLastValue="0"/>
    <field name="phenomenon" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"collection" ||': ' || regexp_substr("id" , '[^/]*$')</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
