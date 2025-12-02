<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" readOnly="0" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation name="soilprofile_profileelement" referencingLayer="profileelement_c30e6a23_64c8_4588_a32e_c91c0209d0a3" id="soilprofile_profileelement" layerName="soilprofile" strength="Composition" layerId="soilprofile_216eea7c_d015_4117_8c9f_df0b7692b5a7" referencedLayer="soilprofile_216eea7c_d015_4117_8c9f_df0b7692b5a7" providerKey="ogr" dataSource="./SW_15.gpkg|layername=soilprofile">
      <fieldRef referencingField="ispartof" referencedField="guid"/>
    </relation>
  </referencedLayers>
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
    <field name="profileelementdepthrange_uppervalue" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="profileelementdepthrange_lowervalue" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
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
    <field name="layertype" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" value="&quot;label&quot;" type="QString"/>
            <Option name="FilterExpression" value="&quot;collection&quot; IN('LayerTypeValue') " type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="codelist_95efcf3a_4eef_4602_995d_4010a96ab058" type="QString"/>
            <Option name="LayerName" value="codelist" type="QString"/>
            <Option name="LayerProviderName" value="ogr" type="QString"/>
            <Option name="LayerSource" value="C:/Users/andrea.lachi/Documents/Corso Qgis/INSPIRE_SO_DEMO_QGIS_V02.gpkg|layername=codelist" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="label" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="layerrocktype" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" value="&quot;label&quot;" type="QString"/>
            <Option name="FilterExpression" value="&quot;collection&quot; IN('LithologyValue') " type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="codelist_95efcf3a_4eef_4602_995d_4010a96ab058" type="QString"/>
            <Option name="LayerName" value="codelist" type="QString"/>
            <Option name="LayerProviderName" value="ogr" type="QString"/>
            <Option name="LayerSource" value="C:/Users/andrea.lachi/Documents/Corso Qgis/INSPIRE_SO_DEMO_QGIS_V02.gpkg|layername=codelist" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="label" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="layergenesisprocess" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" value="&quot;label&quot;" type="QString"/>
            <Option name="FilterExpression" value="&quot;collection&quot; IN('EventProcessValue') " type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="codelist_95efcf3a_4eef_4602_995d_4010a96ab058" type="QString"/>
            <Option name="LayerName" value="codelist" type="QString"/>
            <Option name="LayerProviderName" value="ogr" type="QString"/>
            <Option name="LayerSource" value="C:/Users/andrea.lachi/Documents/Corso Qgis/INSPIRE_SO_DEMO_QGIS_V02.gpkg|layername=codelist" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="label" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="layergenesisenviroment" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" value="&quot;label&quot;" type="QString"/>
            <Option name="FilterExpression" value="&quot;collection&quot; IN('EventEnvironmentValue') " type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="codelist_95efcf3a_4eef_4602_995d_4010a96ab058" type="QString"/>
            <Option name="LayerName" value="codelist" type="QString"/>
            <Option name="LayerProviderName" value="ogr" type="QString"/>
            <Option name="LayerSource" value="C:/Users/andrea.lachi/Documents/Corso Qgis/INSPIRE_SO_DEMO_QGIS_V02.gpkg|layername=codelist" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="label" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="layergenesisprocessstate" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" value="&quot;label&quot;" type="QString"/>
            <Option name="FilterExpression" value="&quot;collection&quot; IN('LayerGenesisProcessStateValue') " type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="codelist_95efcf3a_4eef_4602_995d_4010a96ab058" type="QString"/>
            <Option name="LayerName" value="codelist" type="QString"/>
            <Option name="LayerProviderName" value="ogr" type="QString"/>
            <Option name="LayerSource" value="C:/Users/andrea.lachi/Documents/Corso Qgis/INSPIRE_SO_DEMO_QGIS_V02.gpkg|layername=codelist" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="label" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="profileelementtype" configurationFlags="NoFlag">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option name="CheckedState" type="invalid"/>
            <Option name="TextDisplayMethod" value="0" type="int"/>
            <Option name="UncheckedState" type="invalid"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="ispartof" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="false" type="bool"/>
            <Option name="AllowNULL" value="true" type="bool"/>
            <Option name="FetchLimitActive" value="true" type="bool"/>
            <Option name="FetchLimitNumber" value="100" type="int"/>
            <Option name="MapIdentification" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/Documents/Geopackage_Sicily_Import/GPKG/Sicily_02/INSPIRE_SO_07.gpkg|layername=soilprofile" type="QString"/>
            <Option name="ReferencedLayerId" value="soilprofile_4533a9b5_5d1e_4a04_a667_5768367b31b7" type="QString"/>
            <Option name="ReferencedLayerName" value="soilprofile" type="QString"/>
            <Option name="ReferencedLayerProviderKey" value="ogr" type="QString"/>
            <Option name="Relation" value="soilprofile_profileelement" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
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
    <alias name="Upper Value" field="profileelementdepthrange_uppervalue" index="5"/>
    <alias name="Lower Value" field="profileelementdepthrange_lowervalue" index="6"/>
    <alias name="" field="beginlifespanversion" index="7"/>
    <alias name="" field="endlifespanversion" index="8"/>
    <alias name="Type" field="layertype" index="9"/>
    <alias name="Lithology" field="layerrocktype" index="10"/>
    <alias name="Event Process" field="layergenesisprocess" index="11"/>
    <alias name="Event Enviroment" field="layergenesisenviroment" index="12"/>
    <alias name="Genesys Process State" field="layergenesisprocessstate" index="13"/>
    <alias name="Is a Layer" field="profileelementtype" index="14"/>
    <alias name="Is a part of" field="ispartof" index="15"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid" policy="DefaultValue"/>
    <policy field="inspireid_localid" policy="DefaultValue"/>
    <policy field="inspireid_namespace" policy="DefaultValue"/>
    <policy field="inspireid_versionid" policy="DefaultValue"/>
    <policy field="profileelementdepthrange_uppervalue" policy="DefaultValue"/>
    <policy field="profileelementdepthrange_lowervalue" policy="DefaultValue"/>
    <policy field="beginlifespanversion" policy="DefaultValue"/>
    <policy field="endlifespanversion" policy="DefaultValue"/>
    <policy field="layertype" policy="DefaultValue"/>
    <policy field="layerrocktype" policy="DefaultValue"/>
    <policy field="layergenesisprocess" policy="DefaultValue"/>
    <policy field="layergenesisenviroment" policy="DefaultValue"/>
    <policy field="layergenesisprocessstate" policy="DefaultValue"/>
    <policy field="profileelementtype" policy="DefaultValue"/>
    <policy field="ispartof" policy="DefaultValue"/>
  </splitPolicies>
  <mergePolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid" policy="DefaultValue"/>
  </mergePolicies>
  <defaults>
    <default field="id" applyOnUpdate="0" expression=""/>
    <default field="guid" applyOnUpdate="0" expression=""/>
    <default field="inspireid_localid" applyOnUpdate="0" expression=""/>
    <default field="inspireid_namespace" applyOnUpdate="0" expression=""/>
    <default field="inspireid_versionid" applyOnUpdate="0" expression=""/>
    <default field="profileelementdepthrange_uppervalue" applyOnUpdate="0" expression=""/>
    <default field="profileelementdepthrange_lowervalue" applyOnUpdate="0" expression=""/>
    <default field="beginlifespanversion" applyOnUpdate="0" expression=""/>
    <default field="endlifespanversion" applyOnUpdate="0" expression=""/>
    <default field="layertype" applyOnUpdate="0" expression=""/>
    <default field="layerrocktype" applyOnUpdate="0" expression=""/>
    <default field="layergenesisprocess" applyOnUpdate="0" expression=""/>
    <default field="layergenesisenviroment" applyOnUpdate="0" expression=""/>
    <default field="layergenesisprocessstate" applyOnUpdate="0" expression=""/>
    <default field="profileelementtype" applyOnUpdate="0" expression=""/>
    <default field="ispartof" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" notnull_strength="1" field="id" constraints="3" exp_strength="0"/>
    <constraint unique_strength="1" notnull_strength="0" field="guid" constraints="2" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="inspireid_localid" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="inspireid_namespace" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="inspireid_versionid" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="profileelementdepthrange_uppervalue" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="profileelementdepthrange_lowervalue" constraints="4" exp_strength="2"/>
    <constraint unique_strength="0" notnull_strength="1" field="beginlifespanversion" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="endlifespanversion" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="layertype" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="layerrocktype" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="layergenesisprocess" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="layergenesisenviroment" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="layergenesisprocessstate" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="profileelementtype" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="ispartof" constraints="1" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="id"/>
    <constraint exp="" desc="" field="guid"/>
    <constraint exp="" desc="" field="inspireid_localid"/>
    <constraint exp="" desc="" field="inspireid_namespace"/>
    <constraint exp="" desc="" field="inspireid_versionid"/>
    <constraint exp="" desc="" field="profileelementdepthrange_uppervalue"/>
    <constraint exp="&quot;profileelementdepthrange_uppervalue&quot; &lt;= &quot;profileelementdepthrange_lowervalue&quot; or   &quot;profileelementdepthrange_lowervalue&quot; is Null or  &quot;profileelementdepthrange_uppervalue&quot; is Null" desc="" field="profileelementdepthrange_lowervalue"/>
    <constraint exp="" desc="" field="beginlifespanversion"/>
    <constraint exp="" desc="" field="endlifespanversion"/>
    <constraint exp="" desc="" field="layertype"/>
    <constraint exp="" desc="" field="layerrocktype"/>
    <constraint exp="" desc="" field="layergenesisprocess"/>
    <constraint exp="" desc="" field="layergenesisenviroment"/>
    <constraint exp="" desc="" field="layergenesisprocessstate"/>
    <constraint exp="" desc="" field="profileelementtype"/>
    <constraint exp="" desc="" field="ispartof"/>
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
    <attributeEditorField name="ispartof" verticalStretch="0" showLabel="1" index="15" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="profileelementtype" verticalStretch="0" showLabel="1" index="14" horizontalStretch="0">
      <labelStyle overrideLabelFont="1" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="1" italic="0" description="MS Shell Dlg 2,8,-1,5,75,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
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
    <attributeEditorContainer groupBox="1" name="Limits" verticalStretch="0" visibilityExpressionEnabled="0" showLabel="1" type="GroupBox" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
      <attributeEditorField name="profileelementdepthrange_uppervalue" verticalStretch="0" showLabel="1" index="5" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="profileelementdepthrange_lowervalue" verticalStretch="0" showLabel="1" index="6" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="1" name="Layer Parameters" verticalStretch="0" visibilityExpressionEnabled="1" showLabel="1" type="GroupBox" collapsed="0" visibilityExpression="profileelementtype = True" collapsedExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
      <attributeEditorField name="layertype" verticalStretch="0" showLabel="1" index="9" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorContainer groupBox="1" name="Processes geogenetic" verticalStretch="0" visibilityExpressionEnabled="1" showLabel="1" type="GroupBox" collapsed="0" visibilityExpression=" &quot;layertype&quot; ='http://inspire.ec.europa.eu/codelist/LayerTypeValue/geogenic'" collapsedExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
        <attributeEditorField name="layerrocktype" verticalStretch="0" showLabel="1" index="10" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="layergenesisprocess" verticalStretch="0" showLabel="1" index="11" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="layergenesisenviroment" verticalStretch="0" showLabel="1" index="12" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="layergenesisprocessstate" verticalStretch="0" showLabel="1" index="13" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
            <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="1" name="Dates" verticalStretch="0" visibilityExpressionEnabled="0" showLabel="1" type="GroupBox" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
      <attributeEditorField name="beginlifespanversion" verticalStretch="0" showLabel="1" index="7" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="endlifespanversion" verticalStretch="0" showLabel="1" index="8" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="0" name="FAO Horizon Notation Type" verticalStretch="0" visibilityExpressionEnabled="1" showLabel="1" type="Tab" collapsed="0" visibilityExpression="profileelementtype = false" collapsedExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
      <attributeEditorRelation name="profileelement_faohorizonnotationtype" relationWidgetTypeId="relation_editor" verticalStretch="0" nmRelationId="" relation="profileelement_faohorizonnotationtype" showLabel="0" label="" forceSuppressFormPopup="0" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
        <editor_configuration type="Map">
          <Option name="allow_add_child_feature_with_no_geometry" value="false" type="bool"/>
          <Option name="buttons" value="AllButtons" type="QString"/>
          <Option name="filter_expression" type="invalid"/>
          <Option name="show_first_feature" value="true" type="bool"/>
        </editor_configuration>
      </attributeEditorRelation>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="0" name="Other Horizon Notation Type" verticalStretch="0" visibilityExpressionEnabled="1" showLabel="1" type="Tab" collapsed="0" visibilityExpression="profileelementtype = false" collapsedExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
      <attributeEditorRelation name="profileelement_otherhorizon_profileelement_2" relationWidgetTypeId="relation_editor" verticalStretch="0" nmRelationId="" relation="profileelement_otherhorizon_profileelement_2" showLabel="0" label="" forceSuppressFormPopup="0" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
        <editor_configuration type="Map">
          <Option name="allow_add_child_feature_with_no_geometry" value="false" type="bool"/>
          <Option name="buttons" value="AllButtons" type="QString"/>
          <Option name="filter_expression" type="invalid"/>
          <Option name="show_first_feature" value="true" type="bool"/>
        </editor_configuration>
      </attributeEditorRelation>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="1" name="Datastream" verticalStretch="0" visibilityExpressionEnabled="0" showLabel="1" type="GroupBox" collapsed="1" visibilityExpression="" collapsedExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
      <attributeEditorRelation name="profileelement_datastream_2" relationWidgetTypeId="relation_editor" verticalStretch="0" nmRelationId="" relation="profileelement_datastream_2" showLabel="0" label="" forceSuppressFormPopup="0" horizontalStretch="0">
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
    <field name="idsoilprofile" editable="1"/>
    <field name="inspireid_localid" editable="1"/>
    <field name="inspireid_namespace" editable="1"/>
    <field name="inspireid_versionid" editable="1"/>
    <field name="ispartof" editable="1"/>
    <field name="layergenesisenviroment" editable="1"/>
    <field name="layergenesisprocess" editable="1"/>
    <field name="layergenesisprocessstate" editable="1"/>
    <field name="layerrocktype" editable="1"/>
    <field name="layertype" editable="1"/>
    <field name="profileelementdepthrange_lowervalue" editable="1"/>
    <field name="profileelementdepthrange_uppervalue" editable="1"/>
    <field name="profileelementtype" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="beginlifespanversion"/>
    <field labelOnTop="0" name="endlifespanversion"/>
    <field labelOnTop="0" name="guid"/>
    <field labelOnTop="0" name="guidkey"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="idsoilprofile"/>
    <field labelOnTop="0" name="inspireid_localid"/>
    <field labelOnTop="0" name="inspireid_namespace"/>
    <field labelOnTop="0" name="inspireid_versionid"/>
    <field labelOnTop="0" name="ispartof"/>
    <field labelOnTop="0" name="layergenesisenviroment"/>
    <field labelOnTop="0" name="layergenesisprocess"/>
    <field labelOnTop="0" name="layergenesisprocessstate"/>
    <field labelOnTop="0" name="layerrocktype"/>
    <field labelOnTop="0" name="layertype"/>
    <field labelOnTop="0" name="profileelementdepthrange_lowervalue"/>
    <field labelOnTop="0" name="profileelementdepthrange_uppervalue"/>
    <field labelOnTop="0" name="profileelementtype"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="beginlifespanversion" reuseLastValue="0"/>
    <field name="endlifespanversion" reuseLastValue="0"/>
    <field name="guid" reuseLastValue="0"/>
    <field name="guidkey" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="idsoilprofile" reuseLastValue="0"/>
    <field name="inspireid_localid" reuseLastValue="0"/>
    <field name="inspireid_namespace" reuseLastValue="0"/>
    <field name="inspireid_versionid" reuseLastValue="0"/>
    <field name="ispartof" reuseLastValue="0"/>
    <field name="layergenesisenviroment" reuseLastValue="0"/>
    <field name="layergenesisprocess" reuseLastValue="0"/>
    <field name="layergenesisprocessstate" reuseLastValue="0"/>
    <field name="layerrocktype" reuseLastValue="0"/>
    <field name="layertype" reuseLastValue="0"/>
    <field name="profileelementdepthrange_lowervalue" reuseLastValue="0"/>
    <field name="profileelementdepthrange_uppervalue" reuseLastValue="0"/>
    <field name="profileelementtype" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets>
    <widget name="profileelement_datastream_2">
      <config type="Map">
        <Option name="force-suppress-popup" value="false" type="bool"/>
        <Option name="nm-rel" type="invalid"/>
      </config>
    </widget>
    <widget name="profileelement_datastream_3">
      <config type="Map">
        <Option name="force-suppress-popup" value="false" type="bool"/>
        <Option name="nm-rel" type="invalid"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>COALESCE( "inspireid_localid", '&lt;NULL>' )</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
