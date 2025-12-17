<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Actions|Relations" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation id="soilplot_soilprofile" name="soilplot_soilprofile" dataSource="./SW_21.gpkg|layername=soilplot" layerName="soilplot" providerKey="ogr" referencingLayer="soilprofile_74d36ec1_9358_46be_8207_bcb134bb4e0d" referencedLayer="soilplot_3767d932_95f5_4efb_a77d_86a96c484206" strength="Association" layerId="soilplot_3767d932_95f5_4efb_a77d_86a96c484206">
      <fieldRef referencingField="location" referencedField="guid"/>
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
    <field name="localidentifier" configurationFlags="NoFlag">
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
    <field name="isderived" configurationFlags="NoFlag">
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
    <field name="wrbversion" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="&quot;label&quot;" name="Description" type="QString"/>
            <Option value="&quot;collection&quot; IN('wrbversion') " name="FilterExpression" type="QString"/>
            <Option value="id" name="Key" type="QString"/>
            <Option value="codelist_7257b262_7388_468b_a269_2546711c92b6" name="Layer" type="QString"/>
            <Option value="codelist" name="LayerName" type="QString"/>
            <Option value="ogr" name="LayerProviderName" type="QString"/>
            <Option value="C:/Users/andrea.lachi/Documents/_INSPIRE_NOV24/INSPIRE_SO.gpkg|layername=codelist" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="true" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="label" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wrbreferencesoilgroup" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="&quot;label&quot;" name="Description" type="QString"/>
            <Option value="CASE &#xa;  WHEN current_value('wrbversion')= 'https://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue'  THEN &quot;collection&quot; IN('WRBReferenceSoilGroupValue') &#xa;  WHEN current_value('wrbversion') = 'https://agroportal.lirmm.fr/ontologies/WRB_2014-2015' THEN &quot;collection&quot; IN('WRBReferenceSoilGroupValue2014')  &#xa;  WHEN current_value('wrbversion') = 'https://obrl-soil.github.io/wrbsoil2022/'  THEN &quot;collection&quot; IN('WRBReferenceSoilGroupValue2022')  &#xa;  ELSE 0&#xa;END&#xa;&#xa;&#xa;--&quot;collection&quot; = current_value('wrbversion')&#xa;" name="FilterExpression" type="QString"/>
            <Option value="id" name="Key" type="QString"/>
            <Option value="codelist_14cfe8e5_df71_4203_bf31_a0387b425363" name="Layer" type="QString"/>
            <Option value="codelist" name="LayerName" type="QString"/>
            <Option value="ogr" name="LayerProviderName" type="QString"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage Soil/Git_EJPSOIL/inspire_soil_gpkg_template/Version1.1-RC/geopackage/INSPIRE_SO_with_data_and_QGIS_project/INSPIRE_SO.gpkg|layername=codelist" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="false" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="label" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="isoriginalclassification" configurationFlags="NoFlag">
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
    <field name="location" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="false" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage Soil/Vector_02/Vector.gpkg|layername=soilplot" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="soilplot_b1bf44ed_bd29_4858_b4c8_5694622c97fa" name="ReferencedLayerId" type="QString"/>
            <Option value="soilplot" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="soilplot_soilprofile" name="Relation" type="QString"/>
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
    <alias name="Local identifier" index="5" field="localidentifier"/>
    <alias name="Begin Lifespan version" index="6" field="beginlifespanversion"/>
    <alias name="End Lifespan version" index="7" field="endlifespanversion"/>
    <alias name="Valid From" index="8" field="validfrom"/>
    <alias name="Valid To" index="9" field="validto"/>
    <alias name="Is Derived" index="10" field="isderived"/>
    <alias name="World Reference Base Version" index="11" field="wrbversion"/>
    <alias name="Reference Soil Group" index="12" field="wrbreferencesoilgroup"/>
    <alias name="It is an Original classification" index="13" field="isoriginalclassification"/>
    <alias name="" index="14" field="location"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid" policy="DefaultValue"/>
    <policy field="inspireid_localid" policy="DefaultValue"/>
    <policy field="inspireid_namespace" policy="DefaultValue"/>
    <policy field="inspireid_versionid" policy="DefaultValue"/>
    <policy field="localidentifier" policy="DefaultValue"/>
    <policy field="beginlifespanversion" policy="DefaultValue"/>
    <policy field="endlifespanversion" policy="DefaultValue"/>
    <policy field="validfrom" policy="DefaultValue"/>
    <policy field="validto" policy="DefaultValue"/>
    <policy field="isderived" policy="DefaultValue"/>
    <policy field="wrbversion" policy="DefaultValue"/>
    <policy field="wrbreferencesoilgroup" policy="DefaultValue"/>
    <policy field="isoriginalclassification" policy="DefaultValue"/>
    <policy field="location" policy="DefaultValue"/>
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
    <default field="localidentifier" applyOnUpdate="0" expression=""/>
    <default field="beginlifespanversion" applyOnUpdate="0" expression="now()||'Z'"/>
    <default field="endlifespanversion" applyOnUpdate="0" expression=""/>
    <default field="validfrom" applyOnUpdate="0" expression="now()||'Z'"/>
    <default field="validto" applyOnUpdate="0" expression=""/>
    <default field="isderived" applyOnUpdate="0" expression=""/>
    <default field="wrbversion" applyOnUpdate="0" expression=""/>
    <default field="wrbreferencesoilgroup" applyOnUpdate="0" expression=""/>
    <default field="isoriginalclassification" applyOnUpdate="0" expression=""/>
    <default field="location" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint field="id" notnull_strength="1" unique_strength="1" constraints="3" exp_strength="0"/>
    <constraint field="guid" notnull_strength="0" unique_strength="1" constraints="2" exp_strength="0"/>
    <constraint field="inspireid_localid" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="inspireid_namespace" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="inspireid_versionid" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="localidentifier" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="beginlifespanversion" notnull_strength="1" unique_strength="0" constraints="1" exp_strength="0"/>
    <constraint field="endlifespanversion" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="validfrom" notnull_strength="1" unique_strength="0" constraints="1" exp_strength="0"/>
    <constraint field="validto" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="isderived" notnull_strength="1" unique_strength="0" constraints="1" exp_strength="0"/>
    <constraint field="wrbversion" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="wrbreferencesoilgroup" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="isoriginalclassification" notnull_strength="1" unique_strength="0" constraints="1" exp_strength="0"/>
    <constraint field="location" notnull_strength="0" unique_strength="1" constraints="2" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="id" desc=""/>
    <constraint exp="" field="guid" desc=""/>
    <constraint exp="" field="inspireid_localid" desc=""/>
    <constraint exp="" field="inspireid_namespace" desc=""/>
    <constraint exp="" field="inspireid_versionid" desc=""/>
    <constraint exp="" field="localidentifier" desc=""/>
    <constraint exp="" field="beginlifespanversion" desc=""/>
    <constraint exp="" field="endlifespanversion" desc=""/>
    <constraint exp="" field="validfrom" desc=""/>
    <constraint exp="" field="validto" desc=""/>
    <constraint exp="" field="isderived" desc=""/>
    <constraint exp="" field="wrbversion" desc=""/>
    <constraint exp="" field="wrbreferencesoilgroup" desc=""/>
    <constraint exp="" field="isoriginalclassification" desc=""/>
    <constraint exp="" field="location" desc=""/>
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
    <attributeEditorField verticalStretch="0" name="isderived" index="10" showLabel="1" horizontalStretch="0">
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
    <attributeEditorField verticalStretch="0" name="localidentifier" index="5" showLabel="1" horizontalStretch="0">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="Dates" groupBox="1" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorField verticalStretch="0" name="beginlifespanversion" index="6" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField verticalStretch="0" name="endlifespanversion" index="7" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField verticalStretch="0" name="validfrom" index="8" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField verticalStretch="0" name="validto" index="9" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField verticalStretch="0" name="wrbversion" index="11" showLabel="1" horizontalStretch="0">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField verticalStretch="0" name="wrbreferencesoilgroup" index="12" showLabel="1" horizontalStretch="0">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField verticalStretch="0" name="isoriginalclassification" index="13" showLabel="1" horizontalStretch="0">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="1" name="Soil Plot" groupBox="1" collapsed="0" visibilityExpression=" &quot;isderived&quot; =False" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorField verticalStretch="0" name="location" index="14" showLabel="0" horizontalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="WRB Qualifier" groupBox="0" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" type="Tab" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorRelation verticalStretch="0" relationWidgetTypeId="relation_editor" nmRelationId="" name="soilprofile_wrbqualifiergroup_profile_2" relation="soilprofile_wrbqualifiergroup_profile_2" forceSuppressFormPopup="0" showLabel="0" horizontalStretch="0" label="">
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
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="Other Soil Name" groupBox="0" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" type="Tab" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorRelation verticalStretch="0" relationWidgetTypeId="relation_editor" nmRelationId="" name="soilprofile_othersoilnametype" relation="soilprofile_othersoilnametype" forceSuppressFormPopup="0" showLabel="0" horizontalStretch="0" label="">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
        <editor_configuration type="Map">
          <Option value="false" name="allow_add_child_feature_with_no_geometry" type="bool"/>
          <Option value="AllButtons" name="buttons" type="QString"/>
          <Option value="true" name="show_first_feature" type="bool"/>
        </editor_configuration>
      </attributeEditorRelation>
    </attributeEditorContainer>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="1" name="Is Derived From" groupBox="0" collapsed="0" visibilityExpression=" &quot;isderived&quot; =True" collapsedExpressionEnabled="0" type="Tab" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorRelation verticalStretch="0" relationWidgetTypeId="relation_editor" nmRelationId="" name="soilprofile_isderivedfrom_2" relation="soilprofile_isderivedfrom_2" forceSuppressFormPopup="0" showLabel="0" horizontalStretch="0" label="">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
        <editor_configuration type="Map">
          <Option value="false" name="allow_add_child_feature_with_no_geometry" type="bool"/>
          <Option value="AllButtons" name="buttons" type="QString"/>
          <Option value="true" name="show_first_feature" type="bool"/>
        </editor_configuration>
      </attributeEditorRelation>
    </attributeEditorContainer>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="1" name="Derived Soil Profile" groupBox="0" collapsed="0" visibilityExpression=" &quot;isderived&quot; =False" collapsedExpressionEnabled="0" type="Tab" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorRelation verticalStretch="0" relationWidgetTypeId="relation_editor" nmRelationId="" name="soilprofile_isderivedfrom" relation="soilprofile_isderivedfrom" forceSuppressFormPopup="0" showLabel="0" horizontalStretch="0" label="">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
        <editor_configuration type="Map">
          <Option value="false" name="allow_add_child_feature_with_no_geometry" type="bool"/>
          <Option value="AllButtons" name="buttons" type="QString"/>
          <Option value="true" name="show_first_feature" type="bool"/>
        </editor_configuration>
      </attributeEditorRelation>
    </attributeEditorContainer>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="RELATIONS" groupBox="1" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="Profile Element" groupBox="1" collapsed="1" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
        <attributeEditorRelation verticalStretch="0" relationWidgetTypeId="relation_editor" nmRelationId="" name="soilprofile_profileelement" relation="soilprofile_profileelement" forceSuppressFormPopup="0" showLabel="0" horizontalStretch="0" label="">
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
      <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="1" name="Derived Presence in Soil Body" groupBox="1" collapsed="1" visibilityExpression=" &quot;isderived&quot; =True" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
        <attributeEditorRelation verticalStretch="0" relationWidgetTypeId="relation_editor" nmRelationId="" name="soilprofile_derivedprofilepresenceinsoilbody" relation="soilprofile_derivedprofilepresenceinsoilbody" forceSuppressFormPopup="0" showLabel="0" horizontalStretch="0" label="">
          <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
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
      <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="1" name="Soil Derived Object" groupBox="1" collapsed="1" visibilityExpression=" &quot;isderived&quot; =False" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
        <attributeEditorRelation verticalStretch="0" relationWidgetTypeId="relation_editor" nmRelationId="" name="soilprofile_isbasedonobservedsoilprofile" relation="soilprofile_isbasedonobservedsoilprofile" forceSuppressFormPopup="0" showLabel="0" horizontalStretch="0" label="">
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
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorRelation verticalStretch="0" relationWidgetTypeId="relation_editor" nmRelationId="" name="soilprofile_datastream_3" relation="soilprofile_datastream_3" forceSuppressFormPopup="0" showLabel="0" horizontalStretch="0" label="">
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
    <field name="isderived" editable="1"/>
    <field name="isoriginalclassification" editable="1"/>
    <field name="localidentifier" editable="1"/>
    <field name="location" editable="1"/>
    <field name="validfrom" editable="1"/>
    <field name="validto" editable="1"/>
    <field name="wrbreferencesoilgroup" editable="1"/>
    <field name="wrbversion" editable="1"/>
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
    <field name="isderived" labelOnTop="0"/>
    <field name="isoriginalclassification" labelOnTop="0"/>
    <field name="localidentifier" labelOnTop="0"/>
    <field name="location" labelOnTop="0"/>
    <field name="validfrom" labelOnTop="0"/>
    <field name="validto" labelOnTop="0"/>
    <field name="wrbreferencesoilgroup" labelOnTop="0"/>
    <field name="wrbversion" labelOnTop="0"/>
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
    <field name="isderived" reuseLastValue="0"/>
    <field name="isoriginalclassification" reuseLastValue="0"/>
    <field name="localidentifier" reuseLastValue="0"/>
    <field name="location" reuseLastValue="0"/>
    <field name="validfrom" reuseLastValue="0"/>
    <field name="validto" reuseLastValue="0"/>
    <field name="wrbreferencesoilgroup" reuseLastValue="0"/>
    <field name="wrbversion" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets>
    <widget name="soilprofile_datastream_3">
      <config type="Map">
        <Option value="false" name="force-suppress-popup" type="bool"/>
        <Option name="nm-rel" type="invalid"/>
      </config>
    </widget>
    <widget name="soilprofile_datastream_4">
      <config type="Map">
        <Option value="false" name="force-suppress-popup" type="bool"/>
        <Option name="nm-rel" type="invalid"/>
      </config>
    </widget>
    <widget name="soilprofile_derivedprofilepresenceinsoilbody">
      <config type="Map">
        <Option value="false" name="force-suppress-popup" type="bool"/>
        <Option name="nm-rel" type="invalid"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>COALESCE( "localidentifier", '&lt;NULL>' )</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
