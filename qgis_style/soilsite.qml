<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" readOnly="0" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <renderer-v2 forceraster="0" type="singleSymbol" enableorderby="0" symbollevels="0" referencescale="-1">
    <symbols>
      <symbol name="0" frame_rate="10" force_rhr="0" is_animated="0" type="fill" clip_to_extent="1" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer id="{12b7e589-6bec-497b-a46c-48647e55fb41}" enabled="1" pass="0" locked="0" class="SimpleFill">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="color" value="180,224,149,255,rgb:0.7058824,0.8784314,0.5843137,1" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="offset" value="0,0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_color" value="0,0,255,255,rgb:0,0,1,1" type="QString"/>
            <Option name="outline_style" value="solid" type="QString"/>
            <Option name="outline_width" value="1" type="QString"/>
            <Option name="outline_width_unit" value="Pixel" type="QString"/>
            <Option name="style" value="no" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
    <data-defined-properties>
      <Option type="Map">
        <Option name="name" value="" type="QString"/>
        <Option name="properties"/>
        <Option name="type" value="collection" type="QString"/>
      </Option>
    </data-defined-properties>
  </renderer-v2>
  <selection mode="Default">
    <selectionColor invalid="1"/>
    <selectionSymbol>
      <symbol name="" frame_rate="10" force_rhr="0" is_animated="0" type="fill" clip_to_extent="1" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer id="{34e712f9-9ecf-457b-b770-20f6b6276084}" enabled="1" pass="0" locked="0" class="SimpleFill">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="color" value="0,0,255,255,rgb:0,0,1,1" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="offset" value="0,0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_color" value="35,35,35,255,rgb:0.1372549,0.1372549,0.1372549,1" type="QString"/>
            <Option name="outline_style" value="solid" type="QString"/>
            <Option name="outline_width" value="0.26" type="QString"/>
            <Option name="outline_width_unit" value="MM" type="QString"/>
            <Option name="style" value="solid" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
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
    <field name="inspireid_localid" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="inspireid_namespace" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="inspireid_versionid" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="soilinvestigationpurpose" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="false" type="bool"/>
            <Option name="Description" value="&quot;label&quot;" type="QString"/>
            <Option name="FilterExpression" value="&quot;collection&quot; IN('SoilInvestigationPurposeValue') " type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="codelist_44009776_a9a6_4371_91e7_8f3009ac5748" type="QString"/>
            <Option name="LayerName" value="codelist" type="QString"/>
            <Option name="LayerProviderName" value="ogr" type="QString"/>
            <Option name="LayerSource" value="C:/Users/andrea.lachi/Documents/Geopackage Soil/Vector_08 newcodelist/Vector.gpkg|layername=codelist" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="label" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="validfrom" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" value="false" type="bool"/>
            <Option name="calendar_popup" value="true" type="bool"/>
            <Option name="display_format" value="yyyy-MM-dd HH:mm:ss" type="QString"/>
            <Option name="field_format" value="yyyy-MM-dd HH:mm:ss" type="QString"/>
            <Option name="field_format_overwrite" value="false" type="bool"/>
            <Option name="field_iso_format" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="validto" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" value="true" type="bool"/>
            <Option name="calendar_popup" value="true" type="bool"/>
            <Option name="display_format" value="yyyy-MM-dd HH:mm:ss" type="QString"/>
            <Option name="field_format" value="yyyy-MM-dd HH:mm:ss" type="QString"/>
            <Option name="field_format_overwrite" value="false" type="bool"/>
            <Option name="field_iso_format" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="beginlifespanversion" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" value="false" type="bool"/>
            <Option name="calendar_popup" value="true" type="bool"/>
            <Option name="display_format" value="yyyy-MM-dd HH:mm:ss" type="QString"/>
            <Option name="field_format" value="yyyy-MM-dd HH:mm:ss" type="QString"/>
            <Option name="field_format_overwrite" value="false" type="bool"/>
            <Option name="field_iso_format" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="endlifespanversion" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" value="true" type="bool"/>
            <Option name="calendar_popup" value="true" type="bool"/>
            <Option name="display_format" value="yyyy-MM-dd HH:mm:ss" type="QString"/>
            <Option name="field_format" value="yyyy-MM-dd HH:mm:ss" type="QString"/>
            <Option name="field_format_overwrite" value="false" type="bool"/>
            <Option name="field_iso_format" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="id" index="0"/>
    <alias name="" field="guid" index="1"/>
    <alias name="Local id" field="inspireid_localid" index="2"/>
    <alias name="Namespace" field="inspireid_namespace" index="3"/>
    <alias name="Version id" field="inspireid_versionid" index="4"/>
    <alias name="Soil Investigation Purpose" field="soilinvestigationpurpose" index="5"/>
    <alias name="Valid From" field="validfrom" index="6"/>
    <alias name="Valid To" field="validto" index="7"/>
    <alias name="Begin Lifespan version" field="beginlifespanversion" index="8"/>
    <alias name="End Lifespan version" field="endlifespanversion" index="9"/>
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
    <constraint unique_strength="1" notnull_strength="1" field="id" constraints="3" exp_strength="0"/>
    <constraint unique_strength="1" notnull_strength="0" field="guid" constraints="2" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="inspireid_localid" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="inspireid_namespace" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="inspireid_versionid" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="soilinvestigationpurpose" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="validfrom" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="validto" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="beginlifespanversion" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="endlifespanversion" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="id"/>
    <constraint exp="" desc="" field="guid"/>
    <constraint exp="" desc="" field="inspireid_localid"/>
    <constraint exp="" desc="" field="inspireid_namespace"/>
    <constraint exp="" desc="" field="inspireid_versionid"/>
    <constraint exp="" desc="" field="soilinvestigationpurpose"/>
    <constraint exp="" desc="" field="validfrom"/>
    <constraint exp="" desc="" field="validto"/>
    <constraint exp="" desc="" field="beginlifespanversion"/>
    <constraint exp="" desc="" field="endlifespanversion"/>
  </constraintExpressions>
  <expressionfields/>
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
    <attributeEditorContainer groupBox="1" name="INSPIRE ID" verticalStretch="0" visibilityExpressionEnabled="0" showLabel="1" type="GroupBox" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
      <attributeEditorField name="inspireid_localid" verticalStretch="0" showLabel="1" index="2" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="inspireid_namespace" verticalStretch="0" showLabel="1" index="3" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="inspireid_versionid" verticalStretch="0" showLabel="1" index="4" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField name="soilinvestigationpurpose" verticalStretch="0" showLabel="1" index="5" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer groupBox="1" name="Dates" verticalStretch="0" visibilityExpressionEnabled="0" showLabel="1" type="GroupBox" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" horizontalStretch="0" columnCount="2" collapsedExpression="">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
      <attributeEditorField name="beginlifespanversion" verticalStretch="0" showLabel="1" index="8" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="endlifespanversion" verticalStretch="0" showLabel="1" index="9" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="validfrom" verticalStretch="0" showLabel="1" index="6" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="validto" verticalStretch="0" showLabel="1" index="7" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="1" name="RELATIONS" verticalStretch="0" visibilityExpressionEnabled="0" showLabel="1" type="GroupBox" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
      <attributeEditorContainer groupBox="1" name="Soil Plot" verticalStretch="0" visibilityExpressionEnabled="0" showLabel="1" type="GroupBox" collapsed="1" visibilityExpression="" collapsedExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="1" italic="0" description="MS Shell Dlg 2,8,-1,5,75,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
        <attributeEditorRelation name="soilsite_soilplot" relationWidgetTypeId="relation_editor" verticalStretch="0" nmRelationId="" relation="soilsite_soilplot" showLabel="0" label="" forceSuppressFormPopup="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
          </labelStyle>
          <editor_configuration type="Map">
            <Option name="allow_add_child_feature_with_no_geometry" value="false" type="bool"/>
            <Option name="buttons" value="AllButtons" type="QString"/>
            <Option name="filter_expression" value="" type="QString"/>
            <Option name="show_first_feature" value="true" type="bool"/>
          </editor_configuration>
        </attributeEditorRelation>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="1" name="Datastream" verticalStretch="0" visibilityExpressionEnabled="0" showLabel="1" type="GroupBox" collapsed="1" visibilityExpression="" collapsedExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
      <attributeEditorRelation name="soilsite_datastream_4" relationWidgetTypeId="relation_editor" verticalStretch="0" nmRelationId="" relation="soilsite_datastream_4" showLabel="0" label="" forceSuppressFormPopup="0" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
        <editor_configuration type="Map">
          <Option name="allow_add_child_feature_with_no_geometry" value="false" type="bool"/>
          <Option name="buttons" value="AllButtons" type="QString"/>
          <Option name="filter_expression" value="" type="QString"/>
          <Option name="show_first_feature" value="true" type="bool"/>
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
    <field labelOnTop="0" name="beginlifespanversion"/>
    <field labelOnTop="0" name="endlifespanversion"/>
    <field labelOnTop="0" name="guid"/>
    <field labelOnTop="0" name="guidkey"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="inspireid_localid"/>
    <field labelOnTop="0" name="inspireid_namespace"/>
    <field labelOnTop="0" name="inspireid_versionid"/>
    <field labelOnTop="0" name="soilinvestigationpurpose"/>
    <field labelOnTop="0" name="validfrom"/>
    <field labelOnTop="0" name="validto"/>
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
        <Option name="force-suppress-popup" value="false" type="bool"/>
        <Option name="nm-rel" type="invalid"/>
      </config>
    </widget>
    <widget name="soilsite_datastream_5">
      <config type="Map">
        <Option name="force-suppress-popup" value="false" type="bool"/>
        <Option name="nm-rel" type="invalid"/>
      </config>
    </widget>
    <widget name="soilsite_feature_5">
      <config type="Map">
        <Option name="force-suppress-popup" value="false" type="bool"/>
        <Option name="nm-rel" type="invalid"/>
      </config>
    </widget>
    <widget name="soilsite_soilplot">
      <config type="Map">
        <Option name="force-suppress-popup" value="false" type="bool"/>
        <Option name="nm-rel" type="invalid"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>COALESCE( "inspireid_localid", '&lt;NULL>' )</previewExpression>
  <layerGeometryType>2</layerGeometryType>
</qgis>
