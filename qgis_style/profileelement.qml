<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.32.3-Lima" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation strength="Association" dataSource="./SW_01.gpkg|layername=soilprofile" name="soilprofile_profileelement" referencedLayer="soilprofile_a8f4afcb_d0b6_445a_b5f2_e55ac3b15907" providerKey="ogr" id="soilprofile_profileelement" layerId="soilprofile_a8f4afcb_d0b6_445a_b5f2_e55ac3b15907" referencingLayer="profileelement_55431c69_e289_46a5_8961_69fcd83ffb70" layerName="soilprofile">
      <fieldRef referencingField="ispartof" referencedField="guidkey"/>
    </relation>
  </referencedLayers>
  <fieldConfiguration>
    <field name="id" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
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
    <field name="profileelementdepthrange_uppervalue" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="profileelementdepthrange_lowervalue" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="beginlifespanversion" configurationFlags="None">
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
    <field name="endlifespanversion" configurationFlags="None">
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
    <field name="layertype" configurationFlags="None">
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
    <field name="layerrocktype" configurationFlags="None">
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
    <field name="layergenesisprocess" configurationFlags="None">
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
    <field name="layergenesisenviroment" configurationFlags="None">
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
    <field name="layergenesisprocessstate" configurationFlags="None">
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
    <field name="profileelementtype" configurationFlags="None">
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
    <field name="ispartof" configurationFlags="None">
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
    <alias name="" index="0" field="id"/>
    <alias name="" index="1" field="guidkey"/>
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
  <defaults>
    <default applyOnUpdate="0" expression="" field="id"/>
    <default applyOnUpdate="0" expression="" field="guidkey"/>
    <default applyOnUpdate="0" expression="" field="inspireid_localid"/>
    <default applyOnUpdate="0" expression="" field="inspireid_namespace"/>
    <default applyOnUpdate="0" expression="" field="inspireid_versionid"/>
    <default applyOnUpdate="0" expression="" field="profileelementdepthrange_uppervalue"/>
    <default applyOnUpdate="0" expression="" field="profileelementdepthrange_lowervalue"/>
    <default applyOnUpdate="0" expression="" field="beginlifespanversion"/>
    <default applyOnUpdate="0" expression="" field="endlifespanversion"/>
    <default applyOnUpdate="0" expression="" field="layertype"/>
    <default applyOnUpdate="0" expression="" field="layerrocktype"/>
    <default applyOnUpdate="0" expression="" field="layergenesisprocess"/>
    <default applyOnUpdate="0" expression="" field="layergenesisenviroment"/>
    <default applyOnUpdate="0" expression="" field="layergenesisprocessstate"/>
    <default applyOnUpdate="0" expression="" field="profileelementtype"/>
    <default applyOnUpdate="0" expression="" field="ispartof"/>
  </defaults>
  <constraints>
    <constraint notnull_strength="1" exp_strength="0" unique_strength="1" field="id" constraints="3"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="1" field="guidkey" constraints="2"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="inspireid_localid" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="inspireid_namespace" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="inspireid_versionid" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="profileelementdepthrange_uppervalue" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="2" unique_strength="0" field="profileelementdepthrange_lowervalue" constraints="4"/>
    <constraint notnull_strength="1" exp_strength="0" unique_strength="0" field="beginlifespanversion" constraints="1"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="endlifespanversion" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="layertype" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="layerrocktype" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="layergenesisprocess" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="layergenesisenviroment" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="layergenesisprocessstate" constraints="0"/>
    <constraint notnull_strength="1" exp_strength="0" unique_strength="0" field="profileelementtype" constraints="1"/>
    <constraint notnull_strength="1" exp_strength="0" unique_strength="0" field="ispartof" constraints="1"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" desc="" exp=""/>
    <constraint field="guidkey" desc="" exp=""/>
    <constraint field="inspireid_localid" desc="" exp=""/>
    <constraint field="inspireid_namespace" desc="" exp=""/>
    <constraint field="inspireid_versionid" desc="" exp=""/>
    <constraint field="profileelementdepthrange_uppervalue" desc="" exp=""/>
    <constraint field="profileelementdepthrange_lowervalue" desc="" exp="&quot;profileelementdepthrange_uppervalue&quot; &lt;= &quot;profileelementdepthrange_lowervalue&quot; or   &quot;profileelementdepthrange_lowervalue&quot; is Null or  &quot;profileelementdepthrange_uppervalue&quot; is Null"/>
    <constraint field="beginlifespanversion" desc="" exp=""/>
    <constraint field="endlifespanversion" desc="" exp=""/>
    <constraint field="layertype" desc="" exp=""/>
    <constraint field="layerrocktype" desc="" exp=""/>
    <constraint field="layergenesisprocess" desc="" exp=""/>
    <constraint field="layergenesisenviroment" desc="" exp=""/>
    <constraint field="layergenesisprocessstate" desc="" exp=""/>
    <constraint field="profileelementtype" desc="" exp=""/>
    <constraint field="ispartof" desc="" exp=""/>
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
    <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
      <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
    </labelStyle>
    <attributeEditorField showLabel="1" name="id" index="0" verticalStretch="0" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField showLabel="1" name="ispartof" index="15" verticalStretch="0" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField showLabel="1" name="profileelementtype" index="14" verticalStretch="0" horizontalStretch="0">
      <labelStyle overrideLabelFont="1" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="1" description="MS Shell Dlg 2,8,-1,5,75,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
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
    <attributeEditorContainer showLabel="1" visibilityExpression="" name="Limits" type="GroupBox" groupBox="1" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorField showLabel="1" name="profileelementdepthrange_uppervalue" index="5" verticalStretch="0" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField showLabel="1" name="profileelementdepthrange_lowervalue" index="6" verticalStretch="0" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" visibilityExpression="profileelementtype = True" name="Layer Parameters" type="GroupBox" groupBox="1" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="1" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorField showLabel="1" name="layertype" index="9" verticalStretch="0" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorContainer showLabel="1" visibilityExpression=" &quot;layertype&quot; ='http://inspire.ec.europa.eu/codelist/LayerTypeValue/geogenic'" name="Processes geogenetic" type="GroupBox" groupBox="1" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="1" horizontalStretch="0" columnCount="1" collapsed="0">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
        <attributeEditorField showLabel="1" name="layerrocktype" index="10" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
            <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField showLabel="1" name="layergenesisprocess" index="11" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
            <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField showLabel="1" name="layergenesisenviroment" index="12" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
            <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField showLabel="1" name="layergenesisprocessstate" index="13" verticalStretch="0" horizontalStretch="0">
          <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
            <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" visibilityExpression="" name="Dates" type="GroupBox" groupBox="1" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorField showLabel="1" name="beginlifespanversion" index="7" verticalStretch="0" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField showLabel="1" name="endlifespanversion" index="8" verticalStretch="0" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" visibilityExpression="" name="Particle Size fraction" type="Tab" groupBox="0" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorRelation showLabel="0" name="profileelement_particlesizefractiontype" forceSuppressFormPopup="0" relation="profileelement_particlesizefractiontype" verticalStretch="0" relationWidgetTypeId="relation_editor" label="" horizontalStretch="0" nmRelationId="">
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
    <attributeEditorContainer showLabel="1" visibilityExpression="profileelementtype = false" name="FAO Horizon Notation Type" type="Tab" groupBox="0" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="1" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorRelation showLabel="0" name="profileelement_faohorizonnotationtype" forceSuppressFormPopup="0" relation="profileelement_faohorizonnotationtype" verticalStretch="0" relationWidgetTypeId="relation_editor" label="" horizontalStretch="0" nmRelationId="">
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
    <attributeEditorContainer showLabel="1" visibilityExpression="profileelementtype = false" name="Other Horizon Notation Type" type="Tab" groupBox="0" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="1" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorRelation showLabel="0" name="profileelement_otherhorizon_profileelement_2" forceSuppressFormPopup="0" relation="profileelement_otherhorizon_profileelement_2" verticalStretch="0" relationWidgetTypeId="relation_editor" label="" horizontalStretch="0" nmRelationId="">
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
    <attributeEditorContainer showLabel="1" visibilityExpression="" name="Feature" type="GroupBox" groupBox="1" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsed="1">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorRelation showLabel="0" name="profileelement_feature_3" forceSuppressFormPopup="0" relation="profileelement_feature_3" verticalStretch="0" relationWidgetTypeId="relation_editor" label="" horizontalStretch="0" nmRelationId="">
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
    <field name="beginlifespanversion" editable="1"/>
    <field name="endlifespanversion" editable="1"/>
    <field name="guidkey" editable="1"/>
    <field name="id" editable="1"/>
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
  <widgets/>
  <previewExpression>COALESCE( "inspireid_localid", '&lt;NULL>' )</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
