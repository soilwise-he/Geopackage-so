<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.32.3-Lima" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation strength="Association" dataSource="./SW_01.gpkg|layername=soilplot" name="soilplot_soilprofile" referencedLayer="soilplot_393cf90c_ed46_490a_8511_59a64f5cd8c4" providerKey="ogr" id="soilplot_soilprofile" layerId="soilplot_393cf90c_ed46_490a_8511_59a64f5cd8c4" referencingLayer="soilprofile_a8f4afcb_d0b6_445a_b5f2_e55ac3b15907" layerName="soilplot">
      <fieldRef referencingField="location" referencedField="guidkey"/>
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
    <field name="localidentifier" configurationFlags="None">
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
    <field name="validfrom" configurationFlags="None">
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
    <field name="validto" configurationFlags="None">
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
    <field name="isderived" configurationFlags="None">
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
    <field name="wrbversion" configurationFlags="None">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowMulti" value="false"/>
            <Option type="bool" name="AllowNull" value="true"/>
            <Option type="QString" name="Description" value="&quot;label&quot;"/>
            <Option type="QString" name="FilterExpression" value="&quot;collection&quot; IN('wrbversion') "/>
            <Option type="QString" name="Key" value="id"/>
            <Option type="QString" name="Layer" value="codelist_7257b262_7388_468b_a269_2546711c92b6"/>
            <Option type="QString" name="LayerName" value="codelist"/>
            <Option type="QString" name="LayerProviderName" value="ogr"/>
            <Option type="QString" name="LayerSource" value="C:/Users/andrea.lachi/Documents/_INSPIRE_NOV24/INSPIRE_SO.gpkg|layername=codelist"/>
            <Option type="int" name="NofColumns" value="1"/>
            <Option type="bool" name="OrderByValue" value="true"/>
            <Option type="bool" name="UseCompleter" value="false"/>
            <Option type="QString" name="Value" value="label"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wrbreferencesoilgroup" configurationFlags="None">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowMulti" value="false"/>
            <Option type="bool" name="AllowNull" value="true"/>
            <Option type="QString" name="Description" value="&quot;label&quot;"/>
            <Option type="QString" name="FilterExpression" value="CASE &#xa;  WHEN current_value('wrbversion')= 'https://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue'  THEN &quot;collection&quot; IN('WRBReferenceSoilGroupValue') &#xa;  WHEN current_value('wrbversion') = 'https://agroportal.lirmm.fr/ontologies/WRB_2014-2015' THEN &quot;collection&quot; IN('WRBReferenceSoilGroupValue2014')  &#xa;  WHEN current_value('wrbversion') = 'https://obrl-soil.github.io/wrbsoil2022/'  THEN &quot;collection&quot; IN('WRBReferenceSoilGroupValue2022')  &#xa;  ELSE 0&#xa;END&#xa;&#xa;&#xa;--&quot;collection&quot; = current_value('wrbversion')&#xa;"/>
            <Option type="QString" name="Key" value="id"/>
            <Option type="QString" name="Layer" value="codelist_14cfe8e5_df71_4203_bf31_a0387b425363"/>
            <Option type="QString" name="LayerName" value="codelist"/>
            <Option type="QString" name="LayerProviderName" value="ogr"/>
            <Option type="QString" name="LayerSource" value="C:/Users/andrea.lachi/Documents/Geopackage Soil/Git_EJPSOIL/inspire_soil_gpkg_template/Version1.1-RC/geopackage/INSPIRE_SO_with_data_and_QGIS_project/INSPIRE_SO.gpkg|layername=codelist"/>
            <Option type="int" name="NofColumns" value="1"/>
            <Option type="bool" name="OrderByValue" value="false"/>
            <Option type="bool" name="UseCompleter" value="false"/>
            <Option type="QString" name="Value" value="label"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="isoriginalclassification" configurationFlags="None">
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
    <field name="location" configurationFlags="None">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowAddFeatures" value="false"/>
            <Option type="bool" name="AllowNULL" value="false"/>
            <Option type="bool" name="FetchLimitActive" value="true"/>
            <Option type="int" name="FetchLimitNumber" value="100"/>
            <Option type="bool" name="MapIdentification" value="false"/>
            <Option type="bool" name="ReadOnly" value="false"/>
            <Option type="QString" name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/Documents/Geopackage Soil/Vector_02/Vector.gpkg|layername=soilplot"/>
            <Option type="QString" name="ReferencedLayerId" value="soilplot_b1bf44ed_bd29_4858_b4c8_5694622c97fa"/>
            <Option type="QString" name="ReferencedLayerName" value="soilplot"/>
            <Option type="QString" name="ReferencedLayerProviderKey" value="ogr"/>
            <Option type="QString" name="Relation" value="soilplot_soilprofile"/>
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
    <policy policy="Duplicate" field="id"/>
    <policy policy="DefaultValue" field="guidkey"/>
    <policy policy="DefaultValue" field="inspireid_localid"/>
    <policy policy="DefaultValue" field="inspireid_namespace"/>
    <policy policy="DefaultValue" field="inspireid_versionid"/>
    <policy policy="DefaultValue" field="localidentifier"/>
    <policy policy="DefaultValue" field="beginlifespanversion"/>
    <policy policy="DefaultValue" field="endlifespanversion"/>
    <policy policy="DefaultValue" field="validfrom"/>
    <policy policy="DefaultValue" field="validto"/>
    <policy policy="DefaultValue" field="isderived"/>
    <policy policy="DefaultValue" field="wrbversion"/>
    <policy policy="DefaultValue" field="wrbreferencesoilgroup"/>
    <policy policy="DefaultValue" field="isoriginalclassification"/>
    <policy policy="DefaultValue" field="location"/>
  </splitPolicies>
  <defaults>
    <default applyOnUpdate="0" expression="" field="id"/>
    <default applyOnUpdate="0" expression="" field="guidkey"/>
    <default applyOnUpdate="0" expression="" field="inspireid_localid"/>
    <default applyOnUpdate="0" expression="" field="inspireid_namespace"/>
    <default applyOnUpdate="0" expression="" field="inspireid_versionid"/>
    <default applyOnUpdate="0" expression="" field="localidentifier"/>
    <default applyOnUpdate="0" expression="now()||'Z'" field="beginlifespanversion"/>
    <default applyOnUpdate="0" expression="" field="endlifespanversion"/>
    <default applyOnUpdate="0" expression="now()||'Z'" field="validfrom"/>
    <default applyOnUpdate="0" expression="" field="validto"/>
    <default applyOnUpdate="0" expression="" field="isderived"/>
    <default applyOnUpdate="0" expression="" field="wrbversion"/>
    <default applyOnUpdate="0" expression="" field="wrbreferencesoilgroup"/>
    <default applyOnUpdate="0" expression="" field="isoriginalclassification"/>
    <default applyOnUpdate="0" expression="" field="location"/>
  </defaults>
  <constraints>
    <constraint notnull_strength="1" exp_strength="0" unique_strength="1" field="id" constraints="3"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="1" field="guidkey" constraints="2"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="inspireid_localid" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="inspireid_namespace" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="inspireid_versionid" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="localidentifier" constraints="0"/>
    <constraint notnull_strength="1" exp_strength="0" unique_strength="0" field="beginlifespanversion" constraints="1"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="endlifespanversion" constraints="0"/>
    <constraint notnull_strength="1" exp_strength="0" unique_strength="0" field="validfrom" constraints="1"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="validto" constraints="0"/>
    <constraint notnull_strength="1" exp_strength="0" unique_strength="0" field="isderived" constraints="1"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="wrbversion" constraints="0"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="0" field="wrbreferencesoilgroup" constraints="0"/>
    <constraint notnull_strength="1" exp_strength="0" unique_strength="0" field="isoriginalclassification" constraints="1"/>
    <constraint notnull_strength="0" exp_strength="0" unique_strength="1" field="location" constraints="2"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" desc="" exp=""/>
    <constraint field="guidkey" desc="" exp=""/>
    <constraint field="inspireid_localid" desc="" exp=""/>
    <constraint field="inspireid_namespace" desc="" exp=""/>
    <constraint field="inspireid_versionid" desc="" exp=""/>
    <constraint field="localidentifier" desc="" exp=""/>
    <constraint field="beginlifespanversion" desc="" exp=""/>
    <constraint field="endlifespanversion" desc="" exp=""/>
    <constraint field="validfrom" desc="" exp=""/>
    <constraint field="validto" desc="" exp=""/>
    <constraint field="isderived" desc="" exp=""/>
    <constraint field="wrbversion" desc="" exp=""/>
    <constraint field="wrbreferencesoilgroup" desc="" exp=""/>
    <constraint field="isoriginalclassification" desc="" exp=""/>
    <constraint field="location" desc="" exp=""/>
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
    <attributeEditorField showLabel="1" name="isderived" index="10" verticalStretch="0" horizontalStretch="0">
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
    <attributeEditorField showLabel="1" name="localidentifier" index="5" verticalStretch="0" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer showLabel="1" visibilityExpression="" name="Dates" type="GroupBox" groupBox="1" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorField showLabel="1" name="beginlifespanversion" index="6" verticalStretch="0" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField showLabel="1" name="endlifespanversion" index="7" verticalStretch="0" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField showLabel="1" name="validfrom" index="8" verticalStretch="0" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField showLabel="1" name="validto" index="9" verticalStretch="0" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField showLabel="1" name="wrbversion" index="11" verticalStretch="0" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField showLabel="1" name="wrbreferencesoilgroup" index="12" verticalStretch="0" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField showLabel="1" name="isoriginalclassification" index="13" verticalStretch="0" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer showLabel="1" visibilityExpression=" &quot;isderived&quot; =False" name="Soil Plot" type="GroupBox" groupBox="1" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="1" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorField showLabel="0" name="location" index="14" verticalStretch="0" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" visibilityExpression="" name="WRB Qualifier" type="Tab" groupBox="0" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorRelation showLabel="1" name="soilprofile_wrbqualifiergroup_profile_2" forceSuppressFormPopup="0" relation="soilprofile_wrbqualifiergroup_profile_2" verticalStretch="0" relationWidgetTypeId="relation_editor" label="" horizontalStretch="0" nmRelationId="">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
        <editor_configuration type="Map">
          <Option type="bool" name="allow_add_child_feature_with_no_geometry" value="false"/>
          <Option type="QString" name="buttons" value="AllButtons"/>
          <Option type="invalid" name="filter_expression"/>
          <Option type="bool" name="show_first_feature" value="true"/>
        </editor_configuration>
      </attributeEditorRelation>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" visibilityExpression="" name="Other Soil Name" type="Tab" groupBox="0" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorRelation showLabel="0" name="soilprofile_othersoilnametype" forceSuppressFormPopup="0" relation="soilprofile_othersoilnametype" verticalStretch="0" relationWidgetTypeId="relation_editor" label="" horizontalStretch="0" nmRelationId="">
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
    <attributeEditorContainer showLabel="1" visibilityExpression=" &quot;isderived&quot; =True" name="Is Derived From" type="Tab" groupBox="0" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="1" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorRelation showLabel="0" name="soilprofile_isderivedfrom_2" forceSuppressFormPopup="0" relation="soilprofile_isderivedfrom_2" verticalStretch="0" relationWidgetTypeId="relation_editor" label="" horizontalStretch="0" nmRelationId="">
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
    <attributeEditorContainer showLabel="1" visibilityExpression=" &quot;isderived&quot; =False" name="Derived Soil Profile" type="Tab" groupBox="0" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="1" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorRelation showLabel="0" name="soilprofile_isderivedfrom" forceSuppressFormPopup="0" relation="soilprofile_isderivedfrom" verticalStretch="0" relationWidgetTypeId="relation_editor" label="" horizontalStretch="0" nmRelationId="">
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
    <attributeEditorContainer showLabel="1" visibilityExpression="" name="RELATIONS" type="GroupBox" groupBox="1" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsed="0">
      <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
        <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorContainer showLabel="1" visibilityExpression="" name="Profile Element" type="GroupBox" groupBox="1" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsed="1">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
        <attributeEditorRelation showLabel="0" name="soilprofile_profileelement" forceSuppressFormPopup="0" relation="soilprofile_profileelement" verticalStretch="0" relationWidgetTypeId="relation_editor" label="" horizontalStretch="0" nmRelationId="">
          <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
            <labelFont bold="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
          </labelStyle>
          <editor_configuration type="Map">
            <Option type="bool" name="allow_add_child_feature_with_no_geometry" value="false"/>
            <Option type="QString" name="buttons" value="AllButtons"/>
            <Option type="invalid" name="filter_expression"/>
            <Option type="bool" name="show_first_feature" value="true"/>
          </editor_configuration>
        </attributeEditorRelation>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" visibilityExpression=" &quot;isderived&quot; =True" name="Derived Presence in Soil Body" type="GroupBox" groupBox="1" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="1" horizontalStretch="0" columnCount="1" collapsed="1">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,9.6,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
        <attributeEditorRelation showLabel="0" name="soilprofile_derivedprofilepresenceinsoilbody" forceSuppressFormPopup="0" relation="soilprofile_derivedprofilepresenceinsoilbody" verticalStretch="0" relationWidgetTypeId="relation_editor" label="" horizontalStretch="0" nmRelationId="">
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
      <attributeEditorContainer showLabel="1" visibilityExpression=" &quot;isderived&quot; =False" name="Soil Derived Object" type="GroupBox" groupBox="1" collapsedExpression="" collapsedExpressionEnabled="0" verticalStretch="0" visibilityExpressionEnabled="1" horizontalStretch="0" columnCount="1" collapsed="1">
        <labelStyle overrideLabelFont="0" overrideLabelColor="0" labelColor="0,0,0,255">
          <labelFont bold="0" description="MS Shell Dlg 2,9.6,-1,5,50,0,0,0,0,0" underline="0" style="" italic="0" strikethrough="0"/>
        </labelStyle>
        <attributeEditorRelation showLabel="0" name="soilprofile_isbasedonobservedsoilprofile" forceSuppressFormPopup="0" relation="soilprofile_isbasedonobservedsoilprofile" verticalStretch="0" relationWidgetTypeId="relation_editor" label="" horizontalStretch="0" nmRelationId="">
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
        <attributeEditorRelation showLabel="0" name="soilprofile_feature_4" forceSuppressFormPopup="0" relation="soilprofile_feature_4" verticalStretch="0" relationWidgetTypeId="relation_editor" label="" horizontalStretch="0" nmRelationId="">
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
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field name="beginlifespanversion" editable="1"/>
    <field name="endlifespanversion" editable="1"/>
    <field name="guidkey" editable="1"/>
    <field name="id" editable="1"/>
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
    <widget name="soilprofile_derivedprofilepresenceinsoilbody">
      <config type="Map">
        <Option type="bool" name="force-suppress-popup" value="false"/>
        <Option type="invalid" name="nm-rel"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>COALESCE( "localidentifier", '&lt;NULL>' )</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
