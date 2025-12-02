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
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="code" configurationFlags="NoFlag">
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
    <field name="symbol" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="qudt_unit" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="conversionoffset" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="conversionmultiplier" configurationFlags="NoFlag">
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
    <alias name="Code" field="code" index="1"/>
    <alias name="Label" field="label" index="2"/>
    <alias name="Symbol" field="symbol" index="3"/>
    <alias name="Qudt Unit" field="qudt_unit" index="4"/>
    <alias name="Conversion Offset" field="conversionoffset" index="5"/>
    <alias name="Conversion Multiplier" field="conversionmultiplier" index="6"/>
  </aliases>
  <splitPolicies>
    <policy field="code" policy="DefaultValue"/>
    <policy field="label" policy="DefaultValue"/>
    <policy field="symbol" policy="DefaultValue"/>
    <policy field="qudt_unit" policy="DefaultValue"/>
    <policy field="conversionoffset" policy="DefaultValue"/>
    <policy field="conversionmultiplier" policy="DefaultValue"/>
  </splitPolicies>
  <mergePolicies>
    <policy field="code" policy="DefaultValue"/>
    <policy field="label" policy="DefaultValue"/>
    <policy field="symbol" policy="DefaultValue"/>
    <policy field="qudt_unit" policy="DefaultValue"/>
    <policy field="conversionoffset" policy="DefaultValue"/>
    <policy field="conversionmultiplier" policy="DefaultValue"/>
  </mergePolicies>
  <defaults>
    <default applyOnUpdate="0" field="id" expression=""/>
    <default applyOnUpdate="0" field="code" expression=""/>
    <default applyOnUpdate="0" field="label" expression=""/>
    <default applyOnUpdate="0" field="symbol" expression=""/>
    <default applyOnUpdate="0" field="qudt_unit" expression=""/>
    <default applyOnUpdate="0" field="conversionoffset" expression=""/>
    <default applyOnUpdate="0" field="conversionmultiplier" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" notnull_strength="1" field="id" constraints="3" exp_strength="0"/>
    <constraint unique_strength="1" notnull_strength="0" field="code" constraints="2" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="label" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="symbol" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="qudt_unit" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="conversionoffset" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="conversionmultiplier" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" exp="" desc=""/>
    <constraint field="code" exp="" desc=""/>
    <constraint field="label" exp="" desc=""/>
    <constraint field="symbol" exp="" desc=""/>
    <constraint field="qudt_unit" exp="" desc=""/>
    <constraint field="conversionoffset" exp="" desc=""/>
    <constraint field="conversionmultiplier" exp="" desc=""/>
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
    <attributeEditorField name="code" horizontalStretch="0" verticalStretch="0" showLabel="1" index="1">
      <labelStyle labelColor="" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" bold="0" italic="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="label" horizontalStretch="0" verticalStretch="0" showLabel="1" index="2">
      <labelStyle labelColor="" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" bold="0" italic="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="symbol" horizontalStretch="0" verticalStretch="0" showLabel="1" index="3">
      <labelStyle labelColor="" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" bold="0" italic="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="qudt_unit" horizontalStretch="0" verticalStretch="0" showLabel="1" index="4">
      <labelStyle labelColor="" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" bold="0" italic="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="conversionoffset" horizontalStretch="0" verticalStretch="0" showLabel="1" index="5">
      <labelStyle labelColor="" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" bold="0" italic="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="conversionmultiplier" horizontalStretch="0" verticalStretch="0" showLabel="1" index="6">
      <labelStyle labelColor="" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" bold="0" italic="0"/>
      </labelStyle>
    </attributeEditorField>
  </attributeEditorForm>
  <editable>
    <field name="code" editable="1"/>
    <field name="conversionmultiplier" editable="1"/>
    <field name="conversionoffset" editable="1"/>
    <field name="formula" editable="1"/>
    <field name="guidkey" editable="1"/>
    <field name="id" editable="1"/>
    <field name="label" editable="1"/>
    <field name="measuretype" editable="1"/>
    <field name="namestandardunit" editable="1"/>
    <field name="offsettostandardunit" editable="1"/>
    <field name="qudt_unit" editable="1"/>
    <field name="scaletostandardunit" editable="1"/>
    <field name="symbol" editable="1"/>
    <field name="uomname" editable="1"/>
    <field name="uomsymbol" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="code" labelOnTop="0"/>
    <field name="conversionmultiplier" labelOnTop="0"/>
    <field name="conversionoffset" labelOnTop="0"/>
    <field name="formula" labelOnTop="0"/>
    <field name="guidkey" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="label" labelOnTop="0"/>
    <field name="measuretype" labelOnTop="0"/>
    <field name="namestandardunit" labelOnTop="0"/>
    <field name="offsettostandardunit" labelOnTop="0"/>
    <field name="qudt_unit" labelOnTop="0"/>
    <field name="scaletostandardunit" labelOnTop="0"/>
    <field name="symbol" labelOnTop="0"/>
    <field name="uomname" labelOnTop="0"/>
    <field name="uomsymbol" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="code" reuseLastValue="0"/>
    <field name="conversionmultiplier" reuseLastValue="0"/>
    <field name="conversionoffset" reuseLastValue="0"/>
    <field name="formula" reuseLastValue="0"/>
    <field name="guidkey" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="label" reuseLastValue="0"/>
    <field name="measuretype" reuseLastValue="0"/>
    <field name="namestandardunit" reuseLastValue="0"/>
    <field name="offsettostandardunit" reuseLastValue="0"/>
    <field name="qudt_unit" reuseLastValue="0"/>
    <field name="scaletostandardunit" reuseLastValue="0"/>
    <field name="symbol" reuseLastValue="0"/>
    <field name="uomname" reuseLastValue="0"/>
    <field name="uomsymbol" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"code"</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
