<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Actions|Relations" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <renderer-v2 enableorderby="0" symbollevels="0" referencescale="-1" forceraster="0" type="singleSymbol">
    <symbols>
      <symbol force_rhr="0" frame_rate="10" clip_to_extent="1" name="0" is_animated="0" type="fill" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer id="{12b7e589-6bec-497b-a46c-48647e55fb41}" class="SimpleFill" locked="0" enabled="1" pass="0">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="180,224,149,255,rgb:0.7058824,0.8784314,0.5843137,1" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="0,0,255,255,rgb:0,0,1,1" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="1" name="outline_width" type="QString"/>
            <Option value="Pixel" name="outline_width_unit" type="QString"/>
            <Option value="no" name="style" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
    <data-defined-properties>
      <Option type="Map">
        <Option value="" name="name" type="QString"/>
        <Option name="properties"/>
        <Option value="collection" name="type" type="QString"/>
      </Option>
    </data-defined-properties>
  </renderer-v2>
  <selection mode="Default">
    <selectionColor invalid="1"/>
    <selectionSymbol>
      <symbol force_rhr="0" frame_rate="10" clip_to_extent="1" name="" is_animated="0" type="fill" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer id="{34e712f9-9ecf-457b-b770-20f6b6276084}" class="SimpleFill" locked="0" enabled="1" pass="0">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="0,0,255,255,rgb:0,0,1,1" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255,rgb:0.1372549,0.1372549,0.1372549,1" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="0.26" name="outline_width" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="solid" name="style" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </selectionSymbol>
  </selection>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <referencedLayers/>
  <fieldConfiguration>
    <field name="id" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="inspireid_localid" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="inspireid_namespace" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="inspireid_versionid" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="soilinvestigationpurpose" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="false" name="AllowNull" type="bool"/>
            <Option value="&quot;label&quot;" name="Description" type="QString"/>
            <Option value="&quot;collection&quot; IN('SoilInvestigationPurposeValue') " name="FilterExpression" type="QString"/>
            <Option value="id" name="Key" type="QString"/>
            <Option value="codelist_44009776_a9a6_4371_91e7_8f3009ac5748" name="Layer" type="QString"/>
            <Option value="codelist" name="LayerName" type="QString"/>
            <Option value="ogr" name="LayerProviderName" type="QString"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage Soil/Vector_08 newcodelist/Vector.gpkg|layername=codelist" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="false" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="label" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="validfrom" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="false" name="allow_null" type="bool"/>
            <Option value="true" name="calendar_popup" type="bool"/>
            <Option value="yyyy-MM-dd HH:mm:ss" name="display_format" type="QString"/>
            <Option value="yyyy-MM-dd HH:mm:ss" name="field_format" type="QString"/>
            <Option value="false" name="field_format_overwrite" type="bool"/>
            <Option value="false" name="field_iso_format" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="validto" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="true" name="allow_null" type="bool"/>
            <Option value="true" name="calendar_popup" type="bool"/>
            <Option value="yyyy-MM-dd HH:mm:ss" name="display_format" type="QString"/>
            <Option value="yyyy-MM-dd HH:mm:ss" name="field_format" type="QString"/>
            <Option value="false" name="field_format_overwrite" type="bool"/>
            <Option value="false" name="field_iso_format" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="beginlifespanversion" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="false" name="allow_null" type="bool"/>
            <Option value="true" name="calendar_popup" type="bool"/>
            <Option value="yyyy-MM-dd HH:mm:ss" name="display_format" type="QString"/>
            <Option value="yyyy-MM-dd HH:mm:ss" name="field_format" type="QString"/>
            <Option value="false" name="field_format_overwrite" type="bool"/>
            <Option value="false" name="field_iso_format" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="endlifespanversion" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="true" name="allow_null" type="bool"/>
            <Option value="true" name="calendar_popup" type="bool"/>
            <Option value="yyyy-MM-dd HH:mm:ss" name="display_format" type="QString"/>
            <Option value="yyyy-MM-dd HH:mm:ss" name="field_format" type="QString"/>
            <Option value="false" name="field_format_overwrite" type="bool"/>
            <Option value="false" name="field_iso_format" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" index="0" field="id"/>
    <alias name="" index="1" field="guid"/>
    <alias name="Local id" index="2" field="inspireid_localid"/>
    <alias name="Namespace" index="3" field="inspireid_namespace"/>
    <alias name="Version id" index="4" field="inspireid_versionid"/>
    <alias name="Soil Investigation Purpose" index="5" field="soilinvestigationpurpose"/>
    <alias name="Valid From" index="6" field="validfrom"/>
    <alias name="Valid To" index="7" field="validto"/>
    <alias name="Begin Lifespan version" index="8" field="beginlifespanversion"/>
    <alias name="End Lifespan version" index="9" field="endlifespanversion"/>
  </aliases>
  <defaults>
    <default field="id" applyOnUpdate="0" expression=""/>
    <default field="guid" applyOnUpdate="0" expression=""/>
    <default field="inspireid_localid" applyOnUpdate="0" expression=""/>
    <default field="inspireid_namespace" applyOnUpdate="0" expression=""/>
    <default field="inspireid_versionid" applyOnUpdate="0" expression=""/>
    <default field="soilinvestigationpurpose" applyOnUpdate="0" expression=""/>
    <default field="validfrom" applyOnUpdate="0" expression=""/>
    <default field="validto" applyOnUpdate="0" expression=""/>
    <default field="beginlifespanversion" applyOnUpdate="0" expression=""/>
    <default field="endlifespanversion" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint field="id" notnull_strength="1" unique_strength="1" constraints="3" exp_strength="0"/>
    <constraint field="guid" notnull_strength="0" unique_strength="1" constraints="2" exp_strength="0"/>
    <constraint field="inspireid_localid" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="inspireid_namespace" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="inspireid_versionid" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="soilinvestigationpurpose" notnull_strength="1" unique_strength="0" constraints="1" exp_strength="0"/>
    <constraint field="validfrom" notnull_strength="1" unique_strength="0" constraints="1" exp_strength="0"/>
    <constraint field="validto" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="beginlifespanversion" notnull_strength="1" unique_strength="0" constraints="1" exp_strength="0"/>
    <constraint field="endlifespanversion" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="id" desc=""/>
    <constraint exp="" field="guid" desc=""/>
    <constraint exp="" field="inspireid_localid" desc=""/>
    <constraint exp="" field="inspireid_namespace" desc=""/>
    <constraint exp="" field="inspireid_versionid" desc=""/>
    <constraint exp="" field="soilinvestigationpurpose" desc=""/>
    <constraint exp="" field="validfrom" desc=""/>
    <constraint exp="" field="validto" desc=""/>
    <constraint exp="" field="beginlifespanversion" desc=""/>
    <constraint exp="" field="endlifespanversion" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
I moduli di QGIS possono avere una funzione Python che può essere chiamata quando un modulo viene aperto.

Usa questa funzione per aggiungere logica extra ai tuoi moduli.

Inserisci il nome della funzione nel campo "Funzione Python di avvio".

Segue un esempio:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
geom = feature.geometry()
control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>tablayout</editorlayout>
  <attributeEditorForm>
    <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
      <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
    </labelStyle>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="ID" groupBox="1" collapsed="1" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorField verticalStretch="0" name="id" index="0" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField verticalStretch="0" name="guid" index="1" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="INSPIRE ID" groupBox="1" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorField verticalStretch="0" name="inspireid_localid" index="2" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField verticalStretch="0" name="inspireid_namespace" index="3" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField verticalStretch="0" name="inspireid_versionid" index="4" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField verticalStretch="0" name="soilinvestigationpurpose" index="5" showLabel="1" horizontalStretch="0">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="Dates" groupBox="1" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="2" collapsedExpression="">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorField verticalStretch="0" name="beginlifespanversion" index="8" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField verticalStretch="0" name="endlifespanversion" index="9" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField verticalStretch="0" name="validfrom" index="6" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField verticalStretch="0" name="validto" index="7" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="RELATIONS" groupBox="1" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="Soil Plot" groupBox="1" collapsed="1" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="1" italic="0" description="MS Shell Dlg 2,8,-1,5,75,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
        <attributeEditorRelation verticalStretch="0" relationWidgetTypeId="relation_editor" nmRelationId="" name="soilsite_soilplot" relation="soilsite_soilplot" forceSuppressFormPopup="0" showLabel="0" horizontalStretch="0" label="">
          <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
          </labelStyle>
          <editor_configuration type="Map">
            <Option value="false" name="allow_add_child_feature_with_no_geometry" type="bool"/>
            <Option value="AllButtons" name="buttons" type="QString"/>
            <Option name="filter_expression" type="invalid"/>
            <Option value="true" name="show_first_feature" type="bool"/>
          </editor_configuration>
        </attributeEditorRelation>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="Datastream" groupBox="1" collapsed="1" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorRelation verticalStretch="0" relationWidgetTypeId="relation_editor" nmRelationId="" name="soilsite_datastream_4" relation="soilsite_datastream_4" forceSuppressFormPopup="0" showLabel="0" horizontalStretch="0" label="">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
        <editor_configuration type="Map">
          <Option value="true" name="allow_add_child_feature_with_no_geometry" type="bool"/>
          <Option value="AllButtons" name="buttons" type="QString"/>
          <Option value="" name="filter_expression" type="QString"/>
          <Option value="true" name="show_first_feature" type="bool"/>
        </editor_configuration>
      </attributeEditorRelation>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field name="beginlifespanversion" editable="1"/>
    <field name="endlifespanversion" editable="1"/>
    <field name="guid" editable="0"/>
    <field name="guidkey" editable="1"/>
    <field name="id" editable="0"/>
    <field name="inspireid_localid" editable="1"/>
    <field name="inspireid_namespace" editable="1"/>
    <field name="inspireid_versionid" editable="1"/>
    <field name="soilinvestigationpurpose" editable="1"/>
    <field name="validfrom" editable="1"/>
    <field name="validto" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="beginlifespanversion" labelOnTop="0"/>
    <field name="endlifespanversion" labelOnTop="0"/>
    <field name="guid" labelOnTop="0"/>
    <field name="guidkey" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="inspireid_localid" labelOnTop="0"/>
    <field name="inspireid_namespace" labelOnTop="0"/>
    <field name="inspireid_versionid" labelOnTop="0"/>
    <field name="soilinvestigationpurpose" labelOnTop="0"/>
    <field name="validfrom" labelOnTop="0"/>
    <field name="validto" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="beginlifespanversion" reuseLastValue="0"/>
    <field name="endlifespanversion" reuseLastValue="0"/>
    <field name="guid" reuseLastValue="0"/>
    <field name="guidkey" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="inspireid_localid" reuseLastValue="0"/>
    <field name="inspireid_namespace" reuseLastValue="0"/>
    <field name="inspireid_versionid" reuseLastValue="0"/>
    <field name="soilinvestigationpurpose" reuseLastValue="0"/>
    <field name="validfrom" reuseLastValue="0"/>
    <field name="validto" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets>
    <widget name="soilsite_datastream_4">
      <config type="Map">
        <Option value="false" name="force-suppress-popup" type="bool"/>
        <Option name="nm-rel" type="invalid"/>
      </config>
    </widget>
    <widget name="soilsite_datastream_5">
      <config type="Map">
        <Option value="false" name="force-suppress-popup" type="bool"/>
        <Option name="nm-rel" type="invalid"/>
      </config>
    </widget>
    <widget name="soilsite_feature_5">
      <config type="Map">
        <Option value="false" name="force-suppress-popup" type="bool"/>
        <Option name="nm-rel" type="invalid"/>
      </config>
    </widget>
    <widget name="soilsite_soilplot">
      <config type="Map">
        <Option value="false" name="force-suppress-popup" type="bool"/>
        <Option name="nm-rel" type="invalid"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>COALESCE( "inspireid_localid", '&lt;NULL>' )</previewExpression>
  <layerGeometryType>2</layerGeometryType>
</qgis>
