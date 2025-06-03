<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.42.1-Münster" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <renderer-v2 type="singleSymbol" forceraster="0" referencescale="-1" enableorderby="0" symbollevels="0">
    <symbols>
      <symbol clip_to_extent="1" type="fill" force_rhr="0" name="0" is_animated="0" alpha="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" class="SimpleFill" id="{12b7e589-6bec-497b-a46c-48647e55fb41}" locked="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="color" value="180,224,149,255,rgb:0.70588235294117652,0.8784313725490196,0.58431372549019611,1"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="0,0,255,255,rgb:0,0,1,1"/>
            <Option type="QString" name="outline_style" value="solid"/>
            <Option type="QString" name="outline_width" value="1"/>
            <Option type="QString" name="outline_width_unit" value="Pixel"/>
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
    <data-defined-properties>
      <Option type="Map">
        <Option type="QString" name="name" value=""/>
        <Option name="properties"/>
        <Option type="QString" name="type" value="collection"/>
      </Option>
    </data-defined-properties>
  </renderer-v2>
  <selection mode="Default">
    <selectionColor invalid="1"/>
    <selectionSymbol>
      <symbol clip_to_extent="1" type="fill" force_rhr="0" name="" is_animated="0" alpha="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" class="SimpleFill" id="{34e712f9-9ecf-457b-b770-20f6b6276084}" locked="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="color" value="0,0,255,255,rgb:0,0,1,1"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="offset" value="0,0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="outline_color" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1"/>
            <Option type="QString" name="outline_style" value="solid"/>
            <Option type="QString" name="outline_width" value="0.26"/>
            <Option type="QString" name="outline_width_unit" value="MM"/>
            <Option type="QString" name="style" value="solid"/>
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
    </selectionSymbol>
  </selection>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <referencedLayers/>
  <fieldConfiguration>
    <field name="id" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="guidkey" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="inspireid_localid" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="inspireid_namespace" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="inspireid_versionid" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="soilinvestigationpurpose" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowMulti" value="false"/>
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="QString" name="Description" value="&quot;label&quot;"/>
            <Option type="QString" name="FilterExpression" value="&quot;collection&quot; IN('SoilInvestigationPurposeValue') "/>
            <Option type="QString" name="Key" value="id"/>
            <Option type="QString" name="Layer" value="codelist_44009776_a9a6_4371_91e7_8f3009ac5748"/>
            <Option type="QString" name="LayerName" value="codelist"/>
            <Option type="QString" name="LayerProviderName" value="ogr"/>
            <Option type="QString" name="LayerSource" value="C:/Users/andrea.lachi/Documents/Geopackage Soil/Vector_08 newcodelist/Vector.gpkg|layername=codelist"/>
            <Option type="int" name="NofColumns" value="1"/>
            <Option type="bool" name="OrderByValue" value="false"/>
            <Option type="bool" name="UseCompleter" value="false"/>
            <Option type="QString" name="Value" value="label"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="validfrom" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" name="allow_null" value="false"/>
            <Option type="bool" name="calendar_popup" value="true"/>
            <Option type="QString" name="display_format" value="yyyy-MM-dd HH:mm:ss"/>
            <Option type="QString" name="field_format" value="yyyy-MM-dd HH:mm:ss"/>
            <Option type="bool" name="field_format_overwrite" value="false"/>
            <Option type="bool" name="field_iso_format" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="validto" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" name="allow_null" value="true"/>
            <Option type="bool" name="calendar_popup" value="true"/>
            <Option type="QString" name="display_format" value="yyyy-MM-dd HH:mm:ss"/>
            <Option type="QString" name="field_format" value="yyyy-MM-dd HH:mm:ss"/>
            <Option type="bool" name="field_format_overwrite" value="false"/>
            <Option type="bool" name="field_iso_format" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="beginlifespanversion" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" name="allow_null" value="false"/>
            <Option type="bool" name="calendar_popup" value="true"/>
            <Option type="QString" name="display_format" value="yyyy-MM-dd HH:mm:ss"/>
            <Option type="QString" name="field_format" value="yyyy-MM-dd HH:mm:ss"/>
            <Option type="bool" name="field_format_overwrite" value="false"/>
            <Option type="bool" name="field_iso_format" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="endlifespanversion" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" name="allow_null" value="true"/>
            <Option type="bool" name="calendar_popup" value="true"/>
            <Option type="QString" name="display_format" value="yyyy-MM-dd HH:mm:ss"/>
            <Option type="QString" name="field_format" value="yyyy-MM-dd HH:mm:ss"/>
            <Option type="bool" name="field_format_overwrite" value="false"/>
            <Option type="bool" name="field_iso_format" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="" field="id"/>
    <alias index="1" name="" field="guidkey"/>
    <alias index="2" name="Local id" field="inspireid_localid"/>
    <alias index="3" name="Namespace" field="inspireid_namespace"/>
    <alias index="4" name="Version id" field="inspireid_versionid"/>
    <alias index="5" name="Soil Investigation Purpose" field="soilinvestigationpurpose"/>
    <alias index="6" name="Valid From" field="validfrom"/>
    <alias index="7" name="Valid To" field="validto"/>
    <alias index="8" name="Begin Lifespan version" field="beginlifespanversion"/>
    <alias index="9" name="End Lifespan version" field="endlifespanversion"/>
  </aliases>
  <splitPolicies>
    <policy policy="Duplicate" field="id"/>
    <policy policy="Duplicate" field="guidkey"/>
    <policy policy="Duplicate" field="inspireid_localid"/>
    <policy policy="Duplicate" field="inspireid_namespace"/>
    <policy policy="Duplicate" field="inspireid_versionid"/>
    <policy policy="Duplicate" field="soilinvestigationpurpose"/>
    <policy policy="Duplicate" field="validfrom"/>
    <policy policy="Duplicate" field="validto"/>
    <policy policy="Duplicate" field="beginlifespanversion"/>
    <policy policy="Duplicate" field="endlifespanversion"/>
  </splitPolicies>
  <duplicatePolicies>
    <policy policy="Duplicate" field="id"/>
    <policy policy="Duplicate" field="guidkey"/>
    <policy policy="Duplicate" field="inspireid_localid"/>
    <policy policy="Duplicate" field="inspireid_namespace"/>
    <policy policy="Duplicate" field="inspireid_versionid"/>
    <policy policy="Duplicate" field="soilinvestigationpurpose"/>
    <policy policy="Duplicate" field="validfrom"/>
    <policy policy="Duplicate" field="validto"/>
    <policy policy="Duplicate" field="beginlifespanversion"/>
    <policy policy="Duplicate" field="endlifespanversion"/>
  </duplicatePolicies>
  <defaults>
    <default expression="" field="id" applyOnUpdate="0"/>
    <default expression="" field="guidkey" applyOnUpdate="0"/>
    <default expression="" field="inspireid_localid" applyOnUpdate="0"/>
    <default expression="" field="inspireid_namespace" applyOnUpdate="0"/>
    <default expression="" field="inspireid_versionid" applyOnUpdate="0"/>
    <default expression="" field="soilinvestigationpurpose" applyOnUpdate="0"/>
    <default expression="" field="validfrom" applyOnUpdate="0"/>
    <default expression="" field="validto" applyOnUpdate="0"/>
    <default expression="" field="beginlifespanversion" applyOnUpdate="0"/>
    <default expression="" field="endlifespanversion" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint exp_strength="0" constraints="3" unique_strength="1" notnull_strength="1" field="id"/>
    <constraint exp_strength="0" constraints="2" unique_strength="1" notnull_strength="0" field="guidkey"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="inspireid_localid"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="inspireid_namespace"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="inspireid_versionid"/>
    <constraint exp_strength="0" constraints="1" unique_strength="0" notnull_strength="1" field="soilinvestigationpurpose"/>
    <constraint exp_strength="0" constraints="1" unique_strength="0" notnull_strength="1" field="validfrom"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="validto"/>
    <constraint exp_strength="0" constraints="1" unique_strength="0" notnull_strength="1" field="beginlifespanversion"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="endlifespanversion"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="id" desc=""/>
    <constraint exp="" field="guidkey" desc=""/>
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
    <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
      <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
    </labelStyle>
    <attributeEditorField horizontalStretch="0" index="0" name="id" showLabel="1" verticalStretch="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer columnCount="1" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" horizontalStretch="0" name="INSPIRE ID" showLabel="1" collapsed="0" verticalStretch="0" collapsedExpression="" groupBox="1" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
      <attributeEditorField horizontalStretch="0" index="2" name="inspireid_localid" showLabel="1" verticalStretch="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField horizontalStretch="0" index="3" name="inspireid_namespace" showLabel="1" verticalStretch="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField horizontalStretch="0" index="4" name="inspireid_versionid" showLabel="1" verticalStretch="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField horizontalStretch="0" index="5" name="soilinvestigationpurpose" showLabel="1" verticalStretch="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer columnCount="2" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" horizontalStretch="0" name="Dates" showLabel="1" collapsed="0" verticalStretch="0" collapsedExpression="" groupBox="1" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
      <attributeEditorField horizontalStretch="0" index="8" name="beginlifespanversion" showLabel="1" verticalStretch="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField horizontalStretch="0" index="9" name="endlifespanversion" showLabel="1" verticalStretch="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField horizontalStretch="0" index="6" name="validfrom" showLabel="1" verticalStretch="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField horizontalStretch="0" index="7" name="validto" showLabel="1" verticalStretch="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer columnCount="1" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" horizontalStretch="0" name="RELATIONS" showLabel="1" collapsed="0" verticalStretch="0" collapsedExpression="" groupBox="1" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
      <attributeEditorContainer columnCount="1" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" horizontalStretch="0" name="Soil Plot" showLabel="1" collapsed="1" verticalStretch="0" collapsedExpression="" groupBox="1" visibilityExpressionEnabled="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,75,0,0,0,0,0" style="" strikethrough="0" bold="1"/>
        </labelStyle>
        <attributeEditorRelation horizontalStretch="0" relation="soilsite_soilplot" name="soilsite_soilplot" showLabel="0" forceSuppressFormPopup="0" verticalStretch="0" nmRelationId="" relationWidgetTypeId="relation_editor" label="">
          <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
            <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
          </labelStyle>
          <editor_configuration type="Map">
            <Option type="bool" name="allow_add_child_feature_with_no_geometry" value="false"/>
            <Option type="QString" name="buttons" value="AllButtons"/>
            <Option type="bool" name="show_first_feature" value="true"/>
          </editor_configuration>
        </attributeEditorRelation>
      </attributeEditorContainer>
      <attributeEditorContainer columnCount="1" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" horizontalStretch="0" name="Obsevation" showLabel="1" collapsed="1" verticalStretch="0" collapsedExpression="" groupBox="1" visibilityExpressionEnabled="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,75,0,0,0,0,0" style="" strikethrough="0" bold="1"/>
        </labelStyle>
        <attributeEditorRelation horizontalStretch="0" relation="soilsite_featureofinterest_observation_7" name="soilsite_featureofinterest_observation_7" showLabel="0" forceSuppressFormPopup="0" verticalStretch="0" nmRelationId="" relationWidgetTypeId="relation_editor" label="">
          <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="">
            <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
          </labelStyle>
          <editor_configuration type="Map">
            <Option type="bool" name="allow_add_child_feature_with_no_geometry" value="false"/>
            <Option type="QString" name="buttons" value="AllButtons"/>
            <Option type="QString" name="filter_expression" value=""/>
            <Option type="bool" name="show_first_feature" value="true"/>
          </editor_configuration>
        </attributeEditorRelation>
      </attributeEditorContainer>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field editable="1" name="beginlifespanversion"/>
    <field editable="1" name="endlifespanversion"/>
    <field editable="1" name="guidkey"/>
    <field editable="1" name="id"/>
    <field editable="1" name="inspireid_localid"/>
    <field editable="1" name="inspireid_namespace"/>
    <field editable="1" name="inspireid_versionid"/>
    <field editable="1" name="soilinvestigationpurpose"/>
    <field editable="1" name="validfrom"/>
    <field editable="1" name="validto"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="beginlifespanversion"/>
    <field labelOnTop="0" name="endlifespanversion"/>
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
    <field reuseLastValue="0" name="beginlifespanversion"/>
    <field reuseLastValue="0" name="endlifespanversion"/>
    <field reuseLastValue="0" name="guidkey"/>
    <field reuseLastValue="0" name="id"/>
    <field reuseLastValue="0" name="inspireid_localid"/>
    <field reuseLastValue="0" name="inspireid_namespace"/>
    <field reuseLastValue="0" name="inspireid_versionid"/>
    <field reuseLastValue="0" name="soilinvestigationpurpose"/>
    <field reuseLastValue="0" name="validfrom"/>
    <field reuseLastValue="0" name="validto"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets>
    <widget name="soilsite_datastream_9">
      <config type="Map">
        <Option type="bool" name="force-suppress-popup" value="false"/>
        <Option type="invalid" name="nm-rel"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>COALESCE( "inspireid_localid", '&lt;NULL>' )</previewExpression>
  <layerGeometryType>2</layerGeometryType>
</qgis>
