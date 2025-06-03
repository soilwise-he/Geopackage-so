<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.42.1-Münster" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=soilplot" providerKey="ogr" name="soilplot_soilprofile" referencedLayer="soilplot_14a9e2fa_4a47_4638_a19d_b880192ad65e" referencingLayer="soilprofile_d73424d7_69a8_41c0_9bdc_88aacc9230e9" strength="Association" id="soilplot_soilprofile" layerId="soilplot_14a9e2fa_4a47_4638_a19d_b880192ad65e" layerName="soilplot">
      <fieldRef referencedField="guidkey" referencingField="location"/>
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
    <field name="localidentifier" configurationFlags="NoFlag">
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
    <field name="isderived" configurationFlags="NoFlag">
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
    <field name="wrbversion" configurationFlags="NoFlag">
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
    <field name="wrbreferencesoilgroup" configurationFlags="NoFlag">
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
    <field name="isoriginalclassification" configurationFlags="NoFlag">
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
    <field name="location" configurationFlags="NoFlag">
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
    <alias index="0" name="" field="id"/>
    <alias index="1" name="" field="guidkey"/>
    <alias index="2" name="Local id" field="inspireid_localid"/>
    <alias index="3" name="Namespace" field="inspireid_namespace"/>
    <alias index="4" name="Version id" field="inspireid_versionid"/>
    <alias index="5" name="Local identifier" field="localidentifier"/>
    <alias index="6" name="Begin Lifespan version" field="beginlifespanversion"/>
    <alias index="7" name="End Lifespan version" field="endlifespanversion"/>
    <alias index="8" name="Valid From" field="validfrom"/>
    <alias index="9" name="Valid To" field="validto"/>
    <alias index="10" name="Is Derived" field="isderived"/>
    <alias index="11" name="World Reference Base Version" field="wrbversion"/>
    <alias index="12" name="Reference Soil Group" field="wrbreferencesoilgroup"/>
    <alias index="13" name="It is an Original classification" field="isoriginalclassification"/>
    <alias index="14" name="" field="location"/>
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
  <duplicatePolicies>
    <policy policy="Duplicate" field="id"/>
    <policy policy="Duplicate" field="guidkey"/>
    <policy policy="Duplicate" field="inspireid_localid"/>
    <policy policy="Duplicate" field="inspireid_namespace"/>
    <policy policy="Duplicate" field="inspireid_versionid"/>
    <policy policy="Duplicate" field="localidentifier"/>
    <policy policy="Duplicate" field="beginlifespanversion"/>
    <policy policy="Duplicate" field="endlifespanversion"/>
    <policy policy="Duplicate" field="validfrom"/>
    <policy policy="Duplicate" field="validto"/>
    <policy policy="Duplicate" field="isderived"/>
    <policy policy="Duplicate" field="wrbversion"/>
    <policy policy="Duplicate" field="wrbreferencesoilgroup"/>
    <policy policy="Duplicate" field="isoriginalclassification"/>
    <policy policy="Duplicate" field="location"/>
  </duplicatePolicies>
  <defaults>
    <default expression="" field="id" applyOnUpdate="0"/>
    <default expression="" field="guidkey" applyOnUpdate="0"/>
    <default expression="" field="inspireid_localid" applyOnUpdate="0"/>
    <default expression="" field="inspireid_namespace" applyOnUpdate="0"/>
    <default expression="" field="inspireid_versionid" applyOnUpdate="0"/>
    <default expression="" field="localidentifier" applyOnUpdate="0"/>
    <default expression="now()||'Z'" field="beginlifespanversion" applyOnUpdate="0"/>
    <default expression="" field="endlifespanversion" applyOnUpdate="0"/>
    <default expression="now()||'Z'" field="validfrom" applyOnUpdate="0"/>
    <default expression="" field="validto" applyOnUpdate="0"/>
    <default expression="" field="isderived" applyOnUpdate="0"/>
    <default expression="" field="wrbversion" applyOnUpdate="0"/>
    <default expression="" field="wrbreferencesoilgroup" applyOnUpdate="0"/>
    <default expression="" field="isoriginalclassification" applyOnUpdate="0"/>
    <default expression="" field="location" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint exp_strength="0" constraints="3" unique_strength="1" notnull_strength="1" field="id"/>
    <constraint exp_strength="0" constraints="2" unique_strength="1" notnull_strength="0" field="guidkey"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="inspireid_localid"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="inspireid_namespace"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="inspireid_versionid"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="localidentifier"/>
    <constraint exp_strength="0" constraints="1" unique_strength="0" notnull_strength="1" field="beginlifespanversion"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="endlifespanversion"/>
    <constraint exp_strength="0" constraints="1" unique_strength="0" notnull_strength="1" field="validfrom"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="validto"/>
    <constraint exp_strength="0" constraints="1" unique_strength="0" notnull_strength="1" field="isderived"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="wrbversion"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" field="wrbreferencesoilgroup"/>
    <constraint exp_strength="0" constraints="1" unique_strength="0" notnull_strength="1" field="isoriginalclassification"/>
    <constraint exp_strength="0" constraints="2" unique_strength="1" notnull_strength="0" field="location"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="id" desc=""/>
    <constraint exp="" field="guidkey" desc=""/>
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
    <attributeEditorField horizontalStretch="0" index="10" name="isderived" showLabel="1" verticalStretch="0">
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
    <attributeEditorField horizontalStretch="0" index="5" name="localidentifier" showLabel="1" verticalStretch="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer columnCount="1" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" horizontalStretch="0" name="Dates" showLabel="1" collapsed="0" verticalStretch="0" collapsedExpression="" groupBox="1" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
      <attributeEditorField horizontalStretch="0" index="6" name="beginlifespanversion" showLabel="1" verticalStretch="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField horizontalStretch="0" index="7" name="endlifespanversion" showLabel="1" verticalStretch="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField horizontalStretch="0" index="8" name="validfrom" showLabel="1" verticalStretch="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField horizontalStretch="0" index="9" name="validto" showLabel="1" verticalStretch="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField horizontalStretch="0" index="11" name="wrbversion" showLabel="1" verticalStretch="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField horizontalStretch="0" index="12" name="wrbreferencesoilgroup" showLabel="1" verticalStretch="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField horizontalStretch="0" index="13" name="isoriginalclassification" showLabel="1" verticalStretch="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer columnCount="1" visibilityExpression=" &quot;isderived&quot; =False" collapsedExpressionEnabled="0" type="GroupBox" horizontalStretch="0" name="Soil Plot" showLabel="1" collapsed="0" verticalStretch="0" collapsedExpression="" groupBox="1" visibilityExpressionEnabled="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
      <attributeEditorField horizontalStretch="0" index="14" name="location" showLabel="0" verticalStretch="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer columnCount="1" visibilityExpression="" collapsedExpressionEnabled="0" type="Tab" horizontalStretch="0" name="WRB Qualifier" showLabel="1" collapsed="0" verticalStretch="0" collapsedExpression="" groupBox="0" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
      <attributeEditorRelation horizontalStretch="0" relation="soilprofile_wrbqualifiergroup_profile_2" name="soilprofile_wrbqualifiergroup_profile_2" showLabel="1" forceSuppressFormPopup="0" verticalStretch="0" nmRelationId="" relationWidgetTypeId="relation_editor" label="">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
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
    <attributeEditorContainer columnCount="1" visibilityExpression="" collapsedExpressionEnabled="0" type="Tab" horizontalStretch="0" name="Other Soil Name" showLabel="1" collapsed="0" verticalStretch="0" collapsedExpression="" groupBox="0" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
      <attributeEditorRelation horizontalStretch="0" relation="soilprofile_othersoilnametype" name="soilprofile_othersoilnametype" showLabel="0" forceSuppressFormPopup="0" verticalStretch="0" nmRelationId="" relationWidgetTypeId="relation_editor" label="">
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
    <attributeEditorContainer columnCount="1" visibilityExpression=" &quot;isderived&quot; =True" collapsedExpressionEnabled="0" type="Tab" horizontalStretch="0" name="Is Derived From" showLabel="1" collapsed="0" verticalStretch="0" collapsedExpression="" groupBox="0" visibilityExpressionEnabled="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
      <attributeEditorRelation horizontalStretch="0" relation="soilprofile_isderivedfrom_2" name="soilprofile_isderivedfrom_2" showLabel="0" forceSuppressFormPopup="0" verticalStretch="0" nmRelationId="" relationWidgetTypeId="relation_editor" label="">
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
    <attributeEditorContainer columnCount="1" visibilityExpression=" &quot;isderived&quot; =False" collapsedExpressionEnabled="0" type="Tab" horizontalStretch="0" name="Derived Soil Profile" showLabel="1" collapsed="0" verticalStretch="0" collapsedExpression="" groupBox="0" visibilityExpressionEnabled="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
        <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
      </labelStyle>
      <attributeEditorRelation horizontalStretch="0" relation="soilprofile_isderivedfrom" name="soilprofile_isderivedfrom" showLabel="0" forceSuppressFormPopup="0" verticalStretch="0" nmRelationId="" relationWidgetTypeId="relation_editor" label="">
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
      <attributeEditorContainer columnCount="1" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" horizontalStretch="0" name="Profile Element" showLabel="1" collapsed="1" verticalStretch="0" collapsedExpression="" groupBox="1" visibilityExpressionEnabled="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
        <attributeEditorRelation horizontalStretch="0" relation="soilprofile_profileelement" name="soilprofile_profileelement" showLabel="0" forceSuppressFormPopup="0" verticalStretch="0" nmRelationId="" relationWidgetTypeId="relation_editor" label="">
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
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
        <attributeEditorRelation horizontalStretch="0" relation="soilprofile_featureofinterest_observation_6" name="soilprofile_featureofinterest_observation_6" showLabel="0" forceSuppressFormPopup="0" verticalStretch="0" nmRelationId="" relationWidgetTypeId="relation_editor" label="">
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
      <attributeEditorContainer columnCount="1" visibilityExpression=" &quot;isderived&quot; =True" collapsedExpressionEnabled="0" type="GroupBox" horizontalStretch="0" name="Derived Presence in Soil Body" showLabel="1" collapsed="1" verticalStretch="0" collapsedExpression="" groupBox="1" visibilityExpressionEnabled="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,9.6,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
        <attributeEditorRelation horizontalStretch="0" relation="soilprofile_derivedprofilepresenceinsoilbody" name="soilprofile_derivedprofilepresenceinsoilbody" showLabel="0" forceSuppressFormPopup="0" verticalStretch="0" nmRelationId="" relationWidgetTypeId="relation_editor" label="">
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
      <attributeEditorContainer columnCount="1" visibilityExpression=" &quot;isderived&quot; =False" collapsedExpressionEnabled="0" type="GroupBox" horizontalStretch="0" name="Soil Derived Object" showLabel="1" collapsed="1" verticalStretch="0" collapsedExpression="" groupBox="1" visibilityExpressionEnabled="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1">
          <labelFont italic="0" underline="0" description="MS Shell Dlg 2,9.6,-1,5,50,0,0,0,0,0" style="" strikethrough="0" bold="0"/>
        </labelStyle>
        <attributeEditorRelation horizontalStretch="0" relation="soilprofile_isbasedonobservedsoilprofile" name="soilprofile_isbasedonobservedsoilprofile" showLabel="0" forceSuppressFormPopup="0" verticalStretch="0" nmRelationId="" relationWidgetTypeId="relation_editor" label="">
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
    <field editable="1" name="isderived"/>
    <field editable="1" name="isoriginalclassification"/>
    <field editable="1" name="localidentifier"/>
    <field editable="1" name="location"/>
    <field editable="1" name="validfrom"/>
    <field editable="1" name="validto"/>
    <field editable="1" name="wrbreferencesoilgroup"/>
    <field editable="1" name="wrbversion"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="beginlifespanversion"/>
    <field labelOnTop="0" name="endlifespanversion"/>
    <field labelOnTop="0" name="guidkey"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="inspireid_localid"/>
    <field labelOnTop="0" name="inspireid_namespace"/>
    <field labelOnTop="0" name="inspireid_versionid"/>
    <field labelOnTop="0" name="isderived"/>
    <field labelOnTop="0" name="isoriginalclassification"/>
    <field labelOnTop="0" name="localidentifier"/>
    <field labelOnTop="0" name="location"/>
    <field labelOnTop="0" name="validfrom"/>
    <field labelOnTop="0" name="validto"/>
    <field labelOnTop="0" name="wrbreferencesoilgroup"/>
    <field labelOnTop="0" name="wrbversion"/>
  </labelOnTop>
  <reuseLastValue>
    <field reuseLastValue="0" name="beginlifespanversion"/>
    <field reuseLastValue="0" name="endlifespanversion"/>
    <field reuseLastValue="0" name="guidkey"/>
    <field reuseLastValue="0" name="id"/>
    <field reuseLastValue="0" name="inspireid_localid"/>
    <field reuseLastValue="0" name="inspireid_namespace"/>
    <field reuseLastValue="0" name="inspireid_versionid"/>
    <field reuseLastValue="0" name="isderived"/>
    <field reuseLastValue="0" name="isoriginalclassification"/>
    <field reuseLastValue="0" name="localidentifier"/>
    <field reuseLastValue="0" name="location"/>
    <field reuseLastValue="0" name="validfrom"/>
    <field reuseLastValue="0" name="validto"/>
    <field reuseLastValue="0" name="wrbreferencesoilgroup"/>
    <field reuseLastValue="0" name="wrbversion"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>COALESCE( "localidentifier", '&lt;NULL>' )</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
