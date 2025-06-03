<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.42.1-Münster" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=soilprofile" providerKey="ogr" name="soilprofile_profileelement" referencedLayer="soilprofile_d73424d7_69a8_41c0_9bdc_88aacc9230e9" referencingLayer="profileelement_6995b221_a2db_441d_9243_239f29813eb0" strength="Association" id="soilprofile_profileelement" layerId="soilprofile_d73424d7_69a8_41c0_9bdc_88aacc9230e9" layerName="soilprofile">
      <fieldRef referencedField="guidkey" referencingField="ispartof"/>
    </relation>
  </referencedLayers>
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
    <field name="profileelementdepthrange_uppervalue" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="profileelementdepthrange_lowervalue" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
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
    <field name="layertype" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowMulti" value="false"/>
            <Option type="bool" name="AllowNull" value="true"/>
            <Option type="QString" name="Description" value="&quot;label&quot;"/>
            <Option type="QString" name="FilterExpression" value="&quot;collection&quot; IN('LayerTypeValue') "/>
            <Option type="QString" name="Key" value="id"/>
            <Option type="QString" name="Layer" value="codelist_95efcf3a_4eef_4602_995d_4010a96ab058"/>
            <Option type="QString" name="LayerName" value="codelist"/>
            <Option type="QString" name="LayerProviderName" value="ogr"/>
            <Option type="QString" name="LayerSource" value="C:/Users/andrea.lachi/Documents/Corso Qgis/INSPIRE_SO_DEMO_QGIS_V02.gpkg|layername=codelist"/>
            <Option type="int" name="NofColumns" value="1"/>
            <Option type="bool" name="OrderByValue" value="false"/>
            <Option type="bool" name="UseCompleter" value="false"/>
            <Option type="QString" name="Value" value="label"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="layerrocktype" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowMulti" value="false"/>
            <Option type="bool" name="AllowNull" value="true"/>
            <Option type="QString" name="Description" value="&quot;label&quot;"/>
            <Option type="QString" name="FilterExpression" value="&quot;collection&quot; IN('LithologyValue') "/>
            <Option type="QString" name="Key" value="id"/>
            <Option type="QString" name="Layer" value="codelist_95efcf3a_4eef_4602_995d_4010a96ab058"/>
            <Option type="QString" name="LayerName" value="codelist"/>
            <Option type="QString" name="LayerProviderName" value="ogr"/>
            <Option type="QString" name="LayerSource" value="C:/Users/andrea.lachi/Documents/Corso Qgis/INSPIRE_SO_DEMO_QGIS_V02.gpkg|layername=codelist"/>
            <Option type="int" name="NofColumns" value="1"/>
            <Option type="bool" name="OrderByValue" value="false"/>
            <Option type="bool" name="UseCompleter" value="false"/>
            <Option type="QString" name="Value" value="label"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="layergenesisprocess" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowMulti" value="false"/>
            <Option type="bool" name="AllowNull" value="true"/>
            <Option type="QString" name="Description" value="&quot;label&quot;"/>
            <Option type="QString" name="FilterExpression" value="&quot;collection&quot; IN('EventProcessValue') "/>
            <Option type="QString" name="Key" value="id"/>
            <Option type="QString" name="Layer" value="codelist_95efcf3a_4eef_4602_995d_4010a96ab058"/>
            <Option type="QString" name="LayerName" value="codelist"/>
            <Option type="QString" name="LayerProviderName" value="ogr"/>
            <Option type="QString" name="LayerSource" value="C:/Users/andrea.lachi/Documents/Corso Qgis/INSPIRE_SO_DEMO_QGIS_V02.gpkg|layername=codelist"/>
            <Option type="int" name="NofColumns" value="1"/>
            <Option type="bool" name="OrderByValue" value="false"/>
            <Option type="bool" name="UseCompleter" value="false"/>
            <Option type="QString" name="Value" value="label"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="layergenesisenviroment" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowMulti" value="false"/>
            <Option type="bool" name="AllowNull" value="true"/>
            <Option type="QString" name="Description" value="&quot;label&quot;"/>
            <Option type="QString" name="FilterExpression" value="&quot;collection&quot; IN('EventEnvironmentValue') "/>
            <Option type="QString" name="Key" value="id"/>
            <Option type="QString" name="Layer" value="codelist_95efcf3a_4eef_4602_995d_4010a96ab058"/>
            <Option type="QString" name="LayerName" value="codelist"/>
            <Option type="QString" name="LayerProviderName" value="ogr"/>
            <Option type="QString" name="LayerSource" value="C:/Users/andrea.lachi/Documents/Corso Qgis/INSPIRE_SO_DEMO_QGIS_V02.gpkg|layername=codelist"/>
            <Option type="int" name="NofColumns" value="1"/>
            <Option type="bool" name="OrderByValue" value="false"/>
            <Option type="bool" name="UseCompleter" value="false"/>
            <Option type="QString" name="Value" value="label"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="layergenesisprocessstate" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowMulti" value="false"/>
            <Option type="bool" name="AllowNull" value="true"/>
            <Option type="QString" name="Description" value="&quot;label&quot;"/>
            <Option type="QString" name="FilterExpression" value="&quot;collection&quot; IN('LayerGenesisProcessStateValue') "/>
            <Option type="QString" name="Key" value="id"/>
            <Option type="QString" name="Layer" value="codelist_95efcf3a_4eef_4602_995d_4010a96ab058"/>
            <Option type="QString" name="LayerName" value="codelist"/>
            <Option type="QString" name="LayerProviderName" value="ogr"/>
            <Option type="QString" name="LayerSource" value="C:/Users/andrea.lachi/Documents/Corso Qgis/INSPIRE_SO_DEMO_QGIS_V02.gpkg|layername=codelist"/>
            <Option type="int" name="NofColumns" value="1"/>
            <Option type="bool" name="OrderByValue" value="false"/>
            <Option type="bool" name="UseCompleter" value="false"/>
            <Option type="QString" name="Value" value="label"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="profileelementtype" configurationFlags="NoFlag">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="invalid" name="CheckedState"/>
            <Option type="int" name="TextDisplayMethod" value="0"/>
            <Option type="invalid" name="UncheckedState"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="ispartof" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowAddFeatures" value="false"/>
            <Option type="bool" name="AllowNULL" value="true"/>
            <Option type="bool" name="FetchLimitActive" value="true"/>
            <Option type="int" name="FetchLimitNumber" value="100"/>
            <Option type="bool" name="MapIdentification" value="false"/>
            <Option type="bool" name="ReadOnly" value="false"/>
            <Option type="QString" name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/Documents/Geopackage_Sicily_Import/GPKG/Sicily_02/INSPIRE_SO_07.gpkg|layername=soilprofile"/>
            <Option type="QString" name="ReferencedLayerId" value="soilprofile_4533a9b5_5d1e_4a04_a667_5768367b31b7"/>
            <Option type="QString" name="ReferencedLayerName" value="soilprofile"/>
            <Option type="QString" name="ReferencedLayerProviderKey" value="ogr"/>
            <Option type="QString" name="Relation" value="soilprofile_profileelement"/>
            <Option type="bool" name="ShowForm" value="false"/>
            <Option type="bool" name="ShowOpenFormButton" value="true"/>
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
    <alias index="5" name="Upper Value" field="profileelementdepthrange_uppervalue"/>
    <alias index="6" name="Lower Value" field="profileelementdepthrange_lowervalue"/>
    <alias index="7" name="" field="beginlifespanversion"/>
    <alias index="8" name="" field="endlifespanversion"/>
    <alias index="9" name="Type" field="layertype"/>
    <alias index="10" name="Lithology" field="layerrocktype"/>
    <alias index="11" name="Event Process" field="layergenesisprocess"/>
    <alias index="12" name="Event Enviroment" field="layergenesisenviroment"/>
    <alias index="13" name="Genesys Process State" field="layergenesisprocessstate"/>
    <alias index="14" name="Is a Layer" field="profileelementtype"/>
    <alias index="15" name="Is a part of" field="ispartof"/>
  </aliases>
  <splitPolicies>
    <policy policy="Duplicate" field="id"/>
    <policy policy="DefaultValue" field="guidkey"/>
    <policy policy="DefaultValue" field="inspireid_localid"/>
    <policy policy="DefaultValue" field="inspireid_namespace"/>
    <policy policy="DefaultValue" field="inspireid_versionid"/>
    <policy policy="DefaultValue" field="profileelementdepthrange_uppervalue"/>
    <policy policy="DefaultValue" field="profileelementdepthrange_lowervalue"/>
    <policy policy="DefaultValue" field="beginlifespanversion"/>
    <policy policy="DefaultValue" field="endlifespanversion"/>
    <policy policy="DefaultValue" field="layertype"/>
    <policy policy="DefaultValue" field="layerrocktype"/>
    <policy policy="DefaultValue" field="layergenesisprocess"/>
    <policy policy="DefaultValue" field="layergenesisenviroment"/>
    <policy policy="DefaultValue" field="layergenesisprocessstate"/>
    <policy policy="DefaultValue" field="profileelementtype"/>
    <policy policy="DefaultValue" field="ispartof"/>
  </splitPolicies>
  <duplicatePolicies>
    <policy policy="Duplicate" field="id"/>
    <policy policy="Duplicate" field="guidkey"/>
    <policy policy="Duplicate" field="inspireid_localid"/>
    <policy policy="Duplicate" field="inspireid_namespace"/>
    <policy policy="Duplicate" field="inspireid_versionid"/>
    <policy policy="Duplicate" field="profileelementdepthrange_uppervalue"/>
    <policy policy="Duplicate" field="profileelementdepthrange_lowervalue"/>
    <policy policy="Duplicate" field="beginlifespanversion"/>
    <policy policy="Duplicate" field="endlifespanversion"/>
    <policy policy="Duplicate" field="layertype"/>
    <policy policy="Duplicate" field="layerrocktype"/>
    <policy policy="Duplicate" field="layergenesisprocess"/>
    <policy policy="Duplicate" field="layergenesisenviroment"/>
    <policy policy="Duplicate" field="layergenesisprocessstate"/>
    <policy policy="Duplicate" field="profileelementtype"/>
    <policy policy="Duplicate" field="ispartof"/>
  </duplicatePolicies>
  <defaults>
    <default expression="" field="id" applyOnUpdate="0"/>
    <default expression="" field="guidkey" applyOnUpdate="0"/>
    <default expression="" field="inspireid_localid" applyOnUpdate="0"/>
    <default expression="" field="inspireid_namespace" applyOnUpdate="0"/>
    <default expression="" field="inspireid_versionid" applyOnUpdate="0"/>
    <default expression="" field="profileelementdepthrange_uppervalue" applyOnUpdate="0"/>
    <default expression="" field="profileelementdepthrange_lowervalue" applyOnUpdate="0"/>
    <default expression="" field="beginlifespanversion" applyOnUpdate="0"/>
    <default expression="" field="endlifespanversion" applyOnUpdate="0"/>
    <default expression="" field="layertype" applyOnUpdate="0"/>
    <default expression="" field="layerrocktype" applyOnUpdate="0"/>
    <default expression="" field="layergenesisprocess" applyOnUpdate="0"/>
    <default expression="" field="layergenesisenviroment" applyOnUpdate="0"/>
    <default expression="" field="layergenesisprocessstate" applyOnUpdate="0"/>
    <default expression="" field="profileelementtype" applyOnUpdate="0"/>
    <default expression="" field="ispartof" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint exp_strength="0" constraints="3" unique_strength="1" notnull_strength="1" field="id"/>
    <constraint exp_strength="0" constraints="2" unique_strength="1" notnull_strength="0" field="guidkey"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="inspireid_localid"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="inspireid_namespace"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="inspireid_versionid"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="profileelementdepthrange_uppervalue"/>
    <constraint exp_strength="2" constraints="4" unique_strength="0" notnull_strength="0" field="profileelementdepthrange_lowervalue"/>
    <constraint exp_strength="0" constraints="1" unique_strength="0" notnull_strength="1" field="beginlifespanversion"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="endlifespanversion"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="layertype"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="layerrocktype"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="layergenesisprocess"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="layergenesisenviroment"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="layergenesisprocessstate"/>
    <constraint exp_strength="0" constraints="1" unique_strength="0" notnull_strength="1" field="profileelementtype"/>
    <constraint exp_strength="0" constraints="1" unique_strength="0" notnull_strength="1" field="ispartof"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="id" desc=""/>
    <constraint exp="" field="guidkey" desc=""/>
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
    <attributeEditorField horizontalStretch="0" index="15" name="ispartof" showLabel="1" verticalStretch="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField horizontalStretch="0" index="14" name="profileelementtype" showLabel="1" verticalStretch="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="1" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,75,0,0,0,0,0" style="" strikethrough="0" bold="1"/>
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
    <attributeEditorContainer columnCount="1" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" horizontalStretch="0" name="Limits" showLabel="1" collapsed="0" verticalStretch="0" collapsedExpression="" groupBox="1" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
      <attributeEditorField horizontalStretch="0" index="5" name="profileelementdepthrange_uppervalue" showLabel="1" verticalStretch="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField horizontalStretch="0" index="6" name="profileelementdepthrange_lowervalue" showLabel="1" verticalStretch="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer columnCount="1" visibilityExpression="profileelementtype = True" collapsedExpressionEnabled="0" type="GroupBox" horizontalStretch="0" name="Layer Parameters" showLabel="1" collapsed="0" verticalStretch="0" collapsedExpression="" groupBox="1" visibilityExpressionEnabled="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
      <attributeEditorField horizontalStretch="0" index="9" name="layertype" showLabel="1" verticalStretch="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorContainer columnCount="1" visibilityExpression=" &quot;layertype&quot; ='http://inspire.ec.europa.eu/codelist/LayerTypeValue/geogenic'" collapsedExpressionEnabled="0" type="GroupBox" horizontalStretch="0" name="Processes geogenetic" showLabel="1" collapsed="0" verticalStretch="0" collapsedExpression="" groupBox="1" visibilityExpressionEnabled="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
        <attributeEditorField horizontalStretch="0" index="10" name="layerrocktype" showLabel="1" verticalStretch="0">
          <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
            <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField horizontalStretch="0" index="11" name="layergenesisprocess" showLabel="1" verticalStretch="0">
          <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
            <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField horizontalStretch="0" index="12" name="layergenesisenviroment" showLabel="1" verticalStretch="0">
          <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
            <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField horizontalStretch="0" index="13" name="layergenesisprocessstate" showLabel="1" verticalStretch="0">
          <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
            <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer columnCount="1" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" horizontalStretch="0" name="Dates" showLabel="1" collapsed="0" verticalStretch="0" collapsedExpression="" groupBox="1" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
      <attributeEditorField horizontalStretch="0" index="7" name="beginlifespanversion" showLabel="1" verticalStretch="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField horizontalStretch="0" index="8" name="endlifespanversion" showLabel="1" verticalStretch="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer columnCount="1" visibilityExpression="" collapsedExpressionEnabled="0" type="Tab" horizontalStretch="0" name="Particle Size fraction" showLabel="1" collapsed="0" verticalStretch="0" collapsedExpression="" groupBox="0" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
      <attributeEditorRelation horizontalStretch="0" relation="profileelement_particlesizefractiontype" name="profileelement_particlesizefractiontype" showLabel="0" forceSuppressFormPopup="0" verticalStretch="0" nmRelationId="" relationWidgetTypeId="relation_editor" label="">
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
    <attributeEditorContainer columnCount="1" visibilityExpression="profileelementtype = false" collapsedExpressionEnabled="0" type="Tab" horizontalStretch="0" name="FAO Horizon Notation Type" showLabel="1" collapsed="0" verticalStretch="0" collapsedExpression="" groupBox="0" visibilityExpressionEnabled="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
      <attributeEditorRelation horizontalStretch="0" relation="profileelement_faohorizonnotationtype" name="profileelement_faohorizonnotationtype" showLabel="0" forceSuppressFormPopup="0" verticalStretch="0" nmRelationId="" relationWidgetTypeId="relation_editor" label="">
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
    <attributeEditorContainer columnCount="1" visibilityExpression="profileelementtype = false" collapsedExpressionEnabled="0" type="Tab" horizontalStretch="0" name="Other Horizon Notation Type" showLabel="1" collapsed="0" verticalStretch="0" collapsedExpression="" groupBox="0" visibilityExpressionEnabled="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
      <attributeEditorRelation horizontalStretch="0" relation="profileelement_otherhorizon_profileelement_2" name="profileelement_otherhorizon_profileelement_2" showLabel="0" forceSuppressFormPopup="0" verticalStretch="0" nmRelationId="" relationWidgetTypeId="relation_editor" label="">
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
    <attributeEditorContainer columnCount="1" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" horizontalStretch="0" name="RELATIONS" showLabel="1" collapsed="0" verticalStretch="0" collapsedExpression="" groupBox="1" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
      <attributeEditorContainer columnCount="1" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" horizontalStretch="0" name="Obsevation" showLabel="1" collapsed="1" verticalStretch="0" collapsedExpression="" groupBox="1" visibilityExpressionEnabled="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
        <attributeEditorRelation horizontalStretch="0" relation="profileelement_featureofinterest_observation_4" name="profileelement_featureofinterest_observation_4" showLabel="0" forceSuppressFormPopup="0" verticalStretch="0" nmRelationId="" relationWidgetTypeId="relation_editor" label="">
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
    <field editable="1" name="idsoilprofile"/>
    <field editable="1" name="inspireid_localid"/>
    <field editable="1" name="inspireid_namespace"/>
    <field editable="1" name="inspireid_versionid"/>
    <field editable="1" name="ispartof"/>
    <field editable="1" name="layergenesisenviroment"/>
    <field editable="1" name="layergenesisprocess"/>
    <field editable="1" name="layergenesisprocessstate"/>
    <field editable="1" name="layerrocktype"/>
    <field editable="1" name="layertype"/>
    <field editable="1" name="profileelementdepthrange_lowervalue"/>
    <field editable="1" name="profileelementdepthrange_uppervalue"/>
    <field editable="1" name="profileelementtype"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="beginlifespanversion"/>
    <field labelOnTop="0" name="endlifespanversion"/>
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
    <field reuseLastValue="0" name="beginlifespanversion"/>
    <field reuseLastValue="0" name="endlifespanversion"/>
    <field reuseLastValue="0" name="guidkey"/>
    <field reuseLastValue="0" name="id"/>
    <field reuseLastValue="0" name="idsoilprofile"/>
    <field reuseLastValue="0" name="inspireid_localid"/>
    <field reuseLastValue="0" name="inspireid_namespace"/>
    <field reuseLastValue="0" name="inspireid_versionid"/>
    <field reuseLastValue="0" name="ispartof"/>
    <field reuseLastValue="0" name="layergenesisenviroment"/>
    <field reuseLastValue="0" name="layergenesisprocess"/>
    <field reuseLastValue="0" name="layergenesisprocessstate"/>
    <field reuseLastValue="0" name="layerrocktype"/>
    <field reuseLastValue="0" name="layertype"/>
    <field reuseLastValue="0" name="profileelementdepthrange_lowervalue"/>
    <field reuseLastValue="0" name="profileelementdepthrange_uppervalue"/>
    <field reuseLastValue="0" name="profileelementtype"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>COALESCE( "inspireid_localid", '&lt;NULL>' )</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
