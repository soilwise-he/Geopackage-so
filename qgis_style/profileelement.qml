<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Actions|Relations" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation id="soilprofile_profileelement" name="soilprofile_profileelement" dataSource="./SW_21.gpkg|layername=soilprofile" layerName="soilprofile" providerKey="ogr" referencingLayer="profileelement_94912eb0_69a6_4f78_a28e_7894952bc181" referencedLayer="soilprofile_74d36ec1_9358_46be_8207_bcb134bb4e0d" strength="Association" layerId="soilprofile_74d36ec1_9358_46be_8207_bcb134bb4e0d">
      <fieldRef referencingField="ispartof" referencedField="guid"/>
    </relation>
  </referencedLayers>
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
    <field name="profileelementdepthrange_uppervalue" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="profileelementdepthrange_lowervalue" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
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
    <field name="layertype" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="&quot;label&quot;" name="Description" type="QString"/>
            <Option value="&quot;collection&quot; IN('LayerTypeValue') " name="FilterExpression" type="QString"/>
            <Option value="id" name="Key" type="QString"/>
            <Option value="codelist_95efcf3a_4eef_4602_995d_4010a96ab058" name="Layer" type="QString"/>
            <Option value="codelist" name="LayerName" type="QString"/>
            <Option value="ogr" name="LayerProviderName" type="QString"/>
            <Option value="C:/Users/andrea.lachi/Documents/Corso Qgis/INSPIRE_SO_DEMO_QGIS_V02.gpkg|layername=codelist" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="false" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="label" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="layerrocktype" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="&quot;label&quot;" name="Description" type="QString"/>
            <Option value="&quot;collection&quot; IN('LithologyValue') " name="FilterExpression" type="QString"/>
            <Option value="id" name="Key" type="QString"/>
            <Option value="codelist_95efcf3a_4eef_4602_995d_4010a96ab058" name="Layer" type="QString"/>
            <Option value="codelist" name="LayerName" type="QString"/>
            <Option value="ogr" name="LayerProviderName" type="QString"/>
            <Option value="C:/Users/andrea.lachi/Documents/Corso Qgis/INSPIRE_SO_DEMO_QGIS_V02.gpkg|layername=codelist" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="false" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="label" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="layergenesisprocess" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="&quot;label&quot;" name="Description" type="QString"/>
            <Option value="&quot;collection&quot; IN('EventProcessValue') " name="FilterExpression" type="QString"/>
            <Option value="id" name="Key" type="QString"/>
            <Option value="codelist_95efcf3a_4eef_4602_995d_4010a96ab058" name="Layer" type="QString"/>
            <Option value="codelist" name="LayerName" type="QString"/>
            <Option value="ogr" name="LayerProviderName" type="QString"/>
            <Option value="C:/Users/andrea.lachi/Documents/Corso Qgis/INSPIRE_SO_DEMO_QGIS_V02.gpkg|layername=codelist" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="false" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="label" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="layergenesisenviroment" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="&quot;label&quot;" name="Description" type="QString"/>
            <Option value="&quot;collection&quot; IN('EventEnvironmentValue') " name="FilterExpression" type="QString"/>
            <Option value="id" name="Key" type="QString"/>
            <Option value="codelist_95efcf3a_4eef_4602_995d_4010a96ab058" name="Layer" type="QString"/>
            <Option value="codelist" name="LayerName" type="QString"/>
            <Option value="ogr" name="LayerProviderName" type="QString"/>
            <Option value="C:/Users/andrea.lachi/Documents/Corso Qgis/INSPIRE_SO_DEMO_QGIS_V02.gpkg|layername=codelist" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="false" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="label" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="layergenesisprocessstate" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="&quot;label&quot;" name="Description" type="QString"/>
            <Option value="&quot;collection&quot; IN('LayerGenesisProcessStateValue') " name="FilterExpression" type="QString"/>
            <Option value="id" name="Key" type="QString"/>
            <Option value="codelist_95efcf3a_4eef_4602_995d_4010a96ab058" name="Layer" type="QString"/>
            <Option value="codelist" name="LayerName" type="QString"/>
            <Option value="ogr" name="LayerProviderName" type="QString"/>
            <Option value="C:/Users/andrea.lachi/Documents/Corso Qgis/INSPIRE_SO_DEMO_QGIS_V02.gpkg|layername=codelist" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="false" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="label" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="profileelementtype" configurationFlags="NoFlag">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option name="CheckedState" type="invalid"/>
            <Option value="0" name="TextDisplayMethod" type="int"/>
            <Option name="UncheckedState" type="invalid"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="ispartof" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="true" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage_Sicily_Import/GPKG/Sicily_02/INSPIRE_SO_07.gpkg|layername=soilprofile" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="soilprofile_4533a9b5_5d1e_4a04_a667_5768367b31b7" name="ReferencedLayerId" type="QString"/>
            <Option value="soilprofile" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="soilprofile_profileelement" name="Relation" type="QString"/>
            <Option value="false" name="ShowForm" type="bool"/>
            <Option value="true" name="ShowOpenFormButton" type="bool"/>
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
    <alias name="Upper Value" index="5" field="profileelementdepthrange_uppervalue"/>
    <alias name="Lower Value" index="6" field="profileelementdepthrange_lowervalue"/>
    <alias name="" index="7" field="beginlifespanversion"/>
    <alias name="" index="8" field="endlifespanversion"/>
    <alias name="Type" index="9" field="layertype"/>
    <alias name="Lithology" index="10" field="layerrocktype"/>
    <alias name="Event Process" index="11" field="layergenesisprocess"/>
    <alias name="Event Enviroment" index="12" field="layergenesisenviroment"/>
    <alias name="Genesys Process State" index="13" field="layergenesisprocessstate"/>
    <alias name="Is a Layer" index="14" field="profileelementtype"/>
    <alias name="Is a part of" index="15" field="ispartof"/>
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
    <constraint field="id" notnull_strength="1" unique_strength="1" constraints="3" exp_strength="0"/>
    <constraint field="guid" notnull_strength="0" unique_strength="1" constraints="2" exp_strength="0"/>
    <constraint field="inspireid_localid" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="inspireid_namespace" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="inspireid_versionid" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="profileelementdepthrange_uppervalue" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="profileelementdepthrange_lowervalue" notnull_strength="0" unique_strength="0" constraints="4" exp_strength="2"/>
    <constraint field="beginlifespanversion" notnull_strength="1" unique_strength="0" constraints="1" exp_strength="0"/>
    <constraint field="endlifespanversion" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="layertype" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="layerrocktype" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="layergenesisprocess" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="layergenesisenviroment" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="layergenesisprocessstate" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="profileelementtype" notnull_strength="1" unique_strength="0" constraints="1" exp_strength="0"/>
    <constraint field="ispartof" notnull_strength="1" unique_strength="0" constraints="1" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="id" desc=""/>
    <constraint exp="" field="guid" desc=""/>
    <constraint exp="" field="inspireid_localid" desc=""/>
    <constraint exp="" field="inspireid_namespace" desc=""/>
    <constraint exp="" field="inspireid_versionid" desc=""/>
    <constraint exp="" field="profileelementdepthrange_uppervalue" desc=""/>
    <constraint exp="&quot;profileelementdepthrange_uppervalue&quot; &lt;= &quot;profileelementdepthrange_lowervalue&quot; or   &quot;profileelementdepthrange_lowervalue&quot; is Null or  &quot;profileelementdepthrange_uppervalue&quot; is Null" field="profileelementdepthrange_lowervalue" desc=""/>
    <constraint exp="" field="beginlifespanversion" desc=""/>
    <constraint exp="" field="endlifespanversion" desc=""/>
    <constraint exp="" field="layertype" desc=""/>
    <constraint exp="" field="layerrocktype" desc=""/>
    <constraint exp="" field="layergenesisprocess" desc=""/>
    <constraint exp="" field="layergenesisenviroment" desc=""/>
    <constraint exp="" field="layergenesisprocessstate" desc=""/>
    <constraint exp="" field="profileelementtype" desc=""/>
    <constraint exp="" field="ispartof" desc=""/>
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
    <attributeEditorField verticalStretch="0" name="ispartof" index="15" showLabel="1" horizontalStretch="0">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField verticalStretch="0" name="profileelementtype" index="14" showLabel="1" horizontalStretch="0">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="1">
        <labelFont bold="1" italic="0" description="MS Shell Dlg 2,8,-1,5,75,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
    </attributeEditorField>
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
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="Limits" groupBox="1" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorField verticalStretch="0" name="profileelementdepthrange_uppervalue" index="5" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField verticalStretch="0" name="profileelementdepthrange_lowervalue" index="6" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="1" name="Layer Parameters" groupBox="1" collapsed="0" visibilityExpression="profileelementtype = True" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorField verticalStretch="0" name="layertype" index="9" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="1" name="Processes geogenetic" groupBox="1" collapsed="0" visibilityExpression=" &quot;layertype&quot; ='http://inspire.ec.europa.eu/codelist/LayerTypeValue/geogenic'" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
        <attributeEditorField verticalStretch="0" name="layerrocktype" index="10" showLabel="1" horizontalStretch="0">
          <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField verticalStretch="0" name="layergenesisprocess" index="11" showLabel="1" horizontalStretch="0">
          <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField verticalStretch="0" name="layergenesisenviroment" index="12" showLabel="1" horizontalStretch="0">
          <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField verticalStretch="0" name="layergenesisprocessstate" index="13" showLabel="1" horizontalStretch="0">
          <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="Dates" groupBox="1" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorField verticalStretch="0" name="beginlifespanversion" index="7" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField verticalStretch="0" name="endlifespanversion" index="8" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="1" name="FAO Horizon Notation Type" groupBox="0" collapsed="0" visibilityExpression="profileelementtype = false" collapsedExpressionEnabled="0" type="Tab" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorRelation verticalStretch="0" relationWidgetTypeId="relation_editor" nmRelationId="" name="profileelement_faohorizonnotationtype" relation="profileelement_faohorizonnotationtype" forceSuppressFormPopup="0" showLabel="0" horizontalStretch="0" label="">
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
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="1" name="Other Horizon Notation Type" groupBox="0" collapsed="0" visibilityExpression="profileelementtype = false" collapsedExpressionEnabled="0" type="Tab" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorRelation verticalStretch="0" relationWidgetTypeId="relation_editor" nmRelationId="" name="profileelement_otherhorizon_profileelement_2" relation="profileelement_otherhorizon_profileelement_2" forceSuppressFormPopup="0" showLabel="0" horizontalStretch="0" label="">
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
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="Datastream" groupBox="1" collapsed="1" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorRelation verticalStretch="0" relationWidgetTypeId="relation_editor" nmRelationId="" name="profileelement_datastream_2" relation="profileelement_datastream_2" forceSuppressFormPopup="0" showLabel="0" horizontalStretch="0" label="">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
        <editor_configuration type="Map">
          <Option value="true" name="allow_add_child_feature_with_no_geometry" type="bool"/>
          <Option value="AllButtons" name="buttons" type="QString"/>
          <Option name="filter_expression" type="invalid"/>
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
    <field name="beginlifespanversion" labelOnTop="0"/>
    <field name="endlifespanversion" labelOnTop="0"/>
    <field name="guid" labelOnTop="0"/>
    <field name="guidkey" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="idsoilprofile" labelOnTop="0"/>
    <field name="inspireid_localid" labelOnTop="0"/>
    <field name="inspireid_namespace" labelOnTop="0"/>
    <field name="inspireid_versionid" labelOnTop="0"/>
    <field name="ispartof" labelOnTop="0"/>
    <field name="layergenesisenviroment" labelOnTop="0"/>
    <field name="layergenesisprocess" labelOnTop="0"/>
    <field name="layergenesisprocessstate" labelOnTop="0"/>
    <field name="layerrocktype" labelOnTop="0"/>
    <field name="layertype" labelOnTop="0"/>
    <field name="profileelementdepthrange_lowervalue" labelOnTop="0"/>
    <field name="profileelementdepthrange_uppervalue" labelOnTop="0"/>
    <field name="profileelementtype" labelOnTop="0"/>
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
        <Option value="false" name="force-suppress-popup" type="bool"/>
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
    <widget name="profileelement_datastream_3">
      <config type="Map">
        <Option value="false" name="force-suppress-popup" type="bool"/>
        <Option name="nm-rel" type="invalid"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>COALESCE( "inspireid_localid", '&lt;NULL>' )</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
