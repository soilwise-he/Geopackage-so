<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.32.3-Lima" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <renderer-v2 type="singleSymbol" forceraster="0" symbollevels="0" enableorderby="0" referencescale="-1">
    <symbols>
      <symbol clip_to_extent="1" force_rhr="0" alpha="1" frame_rate="10" type="fill" name="0" is_animated="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" locked="0" id="{c784b414-fc10-4ba7-80cc-f5888a2bb8c0}" enabled="1" class="SimpleFill">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="color" value="190,178,151,255"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="123,123,123,255"/>
            <Option type="QString" name="outline_style" value="dash"/>
            <Option type="QString" name="outline_width" value="0.26"/>
            <Option type="QString" name="outline_width_unit" value="MM"/>
            <Option type="QString" name="style" value="no"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <referencedLayers/>
  <fieldConfiguration>
    <field name="id" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guidkey" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="inspireid_localid" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="inspireid_namespace" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="inspireid_versionid" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="accessuri" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" index="0" field="id"/>
    <alias name="" index="1" field="guidkey"/>
    <alias name="Local id" index="2" field="inspireid_localid"/>
    <alias name="Namespace" index="3" field="inspireid_namespace"/>
    <alias name="Version id" index="4" field="inspireid_versionid"/>
    <alias name="Uri" index="5" field="accessuri"/>
  </aliases>
  <splitPolicies>
    <policy policy="Duplicate" field="id"/>
    <policy policy="Duplicate" field="guidkey"/>
    <policy policy="Duplicate" field="inspireid_localid"/>
    <policy policy="Duplicate" field="inspireid_namespace"/>
    <policy policy="Duplicate" field="inspireid_versionid"/>
    <policy policy="Duplicate" field="accessuri"/>
  </splitPolicies>
  <defaults>
    <default applyOnUpdate="0" expression="" field="id"/>
    <default applyOnUpdate="0" expression="" field="guidkey"/>
    <default applyOnUpdate="0" expression="" field="inspireid_localid"/>
    <default applyOnUpdate="0" expression="" field="inspireid_namespace"/>
    <default applyOnUpdate="0" expression="" field="inspireid_versionid"/>
    <default applyOnUpdate="0" expression="" field="accessuri"/>
  </defaults>
  <constraints>
    <constraint notnull_strength="1" exp_strength="0" unique_strength="1" field="id" constraints="3"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="1" field="guidkey" constraints="2"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="inspireid_localid" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="inspireid_namespace" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="inspireid_versionid" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="accessuri" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" desc="" exp=""/>
    <constraint field="guidkey" desc="" exp=""/>
    <constraint field="inspireid_localid" desc="" exp=""/>
    <constraint field="inspireid_namespace" desc="" exp=""/>
    <constraint field="inspireid_versionid" desc="" exp=""/>
    <constraint field="accessuri" desc="" exp=""/>
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
    <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
      <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
    </labelStyle>
    <attributeEditorField showLabel="1" name="id" index="0" verticalStretch="0" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer showLabel="1" visibilityExpression="" name="INSPIRE ID" type="GroupBox" groupBox="1" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorField showLabel="1" name="inspireid_localid" index="2" verticalStretch="0" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField showLabel="1" name="inspireid_namespace" index="3" verticalStretch="0" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField showLabel="1" name="inspireid_versionid" index="4" verticalStretch="0" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField showLabel="1" name="accessuri" index="5" verticalStretch="0" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer showLabel="1" visibilityExpression="" name="Based On Observed Soil Profile" type="Tab" groupBox="0" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorRelation showLabel="0" name="soilderivedobject_isbasedonobservedsoilprofile_2" forceSuppressFormPopup="0" relation="soilderivedobject_isbasedonobservedsoilprofile_2" verticalStretch="0" relationWidgetTypeId="relation_editor" label="" horizontalStretch="0" nmRelationId="">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
        <editor_configuration type="Map">
          <Option type="bool" name="allow_add_child_feature_with_no_geometry" value="false"/>
          <Option type="QString" name="buttons" value="AllButtons"/>
          <Option type="bool" name="show_first_feature" value="true"/>
        </editor_configuration>
      </attributeEditorRelation>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" visibilityExpression="" name="Based On Soil Body" type="Tab" groupBox="0" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorRelation showLabel="0" name="soilderivedobject_isbasedonsoilbody_2" forceSuppressFormPopup="0" relation="soilderivedobject_isbasedonsoilbody_2" verticalStretch="0" relationWidgetTypeId="relation_editor" label="" horizontalStretch="0" nmRelationId="">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
        <editor_configuration type="Map">
          <Option type="bool" name="allow_add_child_feature_with_no_geometry" value="false"/>
          <Option type="QString" name="buttons" value="AllButtons"/>
          <Option type="bool" name="show_first_feature" value="true"/>
        </editor_configuration>
      </attributeEditorRelation>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" visibilityExpression="" name="Based On Soil Derived Object" type="Tab" groupBox="0" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorRelation showLabel="0" name="soilderivedobject_isbasedonsoilderivedobject" forceSuppressFormPopup="0" relation="soilderivedobject_isbasedonsoilderivedobject" verticalStretch="0" relationWidgetTypeId="relation_editor" label="" horizontalStretch="0" nmRelationId="">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
        <editor_configuration type="Map">
          <Option type="bool" name="allow_add_child_feature_with_no_geometry" value="false"/>
          <Option type="QString" name="buttons" value="AllButtons"/>
          <Option type="bool" name="show_first_feature" value="true"/>
        </editor_configuration>
      </attributeEditorRelation>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" visibilityExpression="" name="Feature" type="GroupBox" groupBox="1" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorRelation showLabel="0" name="soilderivedobject_feature_2" forceSuppressFormPopup="0" relation="soilderivedobject_feature_2" verticalStretch="0" relationWidgetTypeId="relation_editor" label="" horizontalStretch="0" nmRelationId="">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
        <editor_configuration type="Map">
          <Option type="bool" name="allow_add_child_feature_with_no_geometry" value="false"/>
          <Option type="QString" name="buttons" value="AllButtons"/>
          <Option type="bool" name="show_first_feature" value="true"/>
        </editor_configuration>
      </attributeEditorRelation>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field name="accessuri" editable="1"/>
    <field name="guidkey" editable="1"/>
    <field name="id" editable="1"/>
    <field name="inspireid_localid" editable="1"/>
    <field name="inspireid_namespace" editable="1"/>
    <field name="inspireid_versionid" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="accessuri" labelOnTop="0"/>
    <field name="guidkey" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="inspireid_localid" labelOnTop="0"/>
    <field name="inspireid_namespace" labelOnTop="0"/>
    <field name="inspireid_versionid" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="accessuri" reuseLastValue="0"/>
    <field name="guidkey" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="inspireid_localid" reuseLastValue="0"/>
    <field name="inspireid_namespace" reuseLastValue="0"/>
    <field name="inspireid_versionid" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets>
    <widget name="soilderivedobject_isbasedonobservedsoilprofile_2">
      <config type="Map">
        <Option type="bool" name="force-suppress-popup" value="false"/>
        <Option type="invalid" name="nm-rel"/>
      </config>
    </widget>
    <widget name="soilderivedobject_isbasedonsoilbody_2">
      <config type="Map">
        <Option type="bool" name="force-suppress-popup" value="false"/>
        <Option type="invalid" name="nm-rel"/>
      </config>
    </widget>
    <widget name="soilderivedobject_isbasedonsoilderivedobject">
      <config type="Map">
        <Option type="bool" name="force-suppress-popup" value="false"/>
        <Option type="invalid" name="nm-rel"/>
      </config>
    </widget>
    <widget name="soilderivedobject_isbasedonsoilderivedobject_2">
      <config type="Map">
        <Option type="bool" name="force-suppress-popup" value="false"/>
        <Option type="invalid" name="nm-rel"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>COALESCE( "inspireid_localid", '&lt;NULL>' )</previewExpression>
  <layerGeometryType>2</layerGeometryType>
</qgis>
