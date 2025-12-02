<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" readOnly="0" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation name="profileelement_faohorizonnotationtype" referencingLayer="faohorizonnotationtype_1b02e2f5_02fe_44ba_8ece_b7ebc8afe271" id="profileelement_faohorizonnotationtype" layerName="profileelement" strength="Composition" layerId="profileelement_c30e6a23_64c8_4588_a32e_c91c0209d0a3" referencedLayer="profileelement_c30e6a23_64c8_4588_a32e_c91c0209d0a3" providerKey="ogr" dataSource="./SW_15.gpkg|layername=profileelement">
      <fieldRef referencingField="guid_profileelement" referencedField="guid"/>
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
    <field name="faohorizondiscontinuity" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="faohorizonmaster_1" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="false" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" value="&quot;collection&quot; IN('FAOHorizonMasterValue') " type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="codelist_a4124c0e_f027_4721_825f_b8618baffa11" type="QString"/>
            <Option name="LayerName" value="codelist" type="QString"/>
            <Option name="LayerProviderName" value="ogr" type="QString"/>
            <Option name="LayerSource" value="C:/Users/andrea.lachi/Documents/Geopackage_Sicily_Import/GPKG/Sicily_02/INSPIRE_SO_07.gpkg|layername=codelist" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="label" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="faohorizonmaster_2" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" value="&quot;collection&quot; IN('FAOHorizonMasterValue') " type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="codelist_a4124c0e_f027_4721_825f_b8618baffa11" type="QString"/>
            <Option name="LayerName" value="codelist" type="QString"/>
            <Option name="LayerProviderName" value="ogr" type="QString"/>
            <Option name="LayerSource" value="C:/Users/andrea.lachi/Documents/Geopackage_Sicily_Import/GPKG/Sicily_02/INSPIRE_SO_07.gpkg|layername=codelist" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="label" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="faohorizonsubordinate_1" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" value="&quot;collection&quot; IN('FAOHorizonSubordinateValue') " type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="codelist_a4124c0e_f027_4721_825f_b8618baffa11" type="QString"/>
            <Option name="LayerName" value="codelist" type="QString"/>
            <Option name="LayerProviderName" value="ogr" type="QString"/>
            <Option name="LayerSource" value="C:/Users/andrea.lachi/Documents/Geopackage_Sicily_Import/GPKG/Sicily_02/INSPIRE_SO_07.gpkg|layername=codelist" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="label" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="faohorizonsubordinate_2" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" value="&quot;collection&quot; IN('FAOHorizonSubordinateValue') " type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="codelist_a4124c0e_f027_4721_825f_b8618baffa11" type="QString"/>
            <Option name="LayerName" value="codelist" type="QString"/>
            <Option name="LayerProviderName" value="ogr" type="QString"/>
            <Option name="LayerSource" value="C:/Users/andrea.lachi/Documents/Geopackage_Sicily_Import/GPKG/Sicily_02/INSPIRE_SO_07.gpkg|layername=codelist" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="label" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="faohorizonsubordinate_3" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" value="&quot;collection&quot; IN('FAOHorizonSubordinateValue') " type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="codelist_a4124c0e_f027_4721_825f_b8618baffa11" type="QString"/>
            <Option name="LayerName" value="codelist" type="QString"/>
            <Option name="LayerProviderName" value="ogr" type="QString"/>
            <Option name="LayerSource" value="C:/Users/andrea.lachi/Documents/Geopackage_Sicily_Import/GPKG/Sicily_02/INSPIRE_SO_07.gpkg|layername=codelist" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="label" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="faohorizonvertical" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="faoprime" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="false" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" value="&quot;collection&quot; IN('FAOPrimeValue') &#xa;&#xa;" type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="codelist_a4124c0e_f027_4721_825f_b8618baffa11" type="QString"/>
            <Option name="LayerName" value="codelist" type="QString"/>
            <Option name="LayerProviderName" value="ogr" type="QString"/>
            <Option name="LayerSource" value="C:/Users/andrea.lachi/Documents/Geopackage_Sicily_Import/GPKG/Sicily_02/INSPIRE_SO_07.gpkg|layername=codelist" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="label" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="isoriginalclassification" configurationFlags="NoFlag">
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
    <field name="guid_profileelement" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="false" type="bool"/>
            <Option name="AllowNULL" value="true" type="bool"/>
            <Option name="FetchLimitActive" value="true" type="bool"/>
            <Option name="FetchLimitNumber" value="100" type="int"/>
            <Option name="MapIdentification" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=profileelement" type="QString"/>
            <Option name="ReferencedLayerId" value="profileelement_c30e6a23_64c8_4588_a32e_c91c0209d0a3" type="QString"/>
            <Option name="ReferencedLayerName" value="profileelement" type="QString"/>
            <Option name="ReferencedLayerProviderKey" value="ogr" type="QString"/>
            <Option name="Relation" value="profileelement_faohorizonnotationtype" type="QString"/>
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
    <alias name="FAO Horizon Discontinuity" field="faohorizondiscontinuity" index="2"/>
    <alias name="FAO Horizon Master" field="faohorizonmaster_1" index="3"/>
    <alias name="" field="faohorizonmaster_2" index="4"/>
    <alias name="FAO Horizon Subordinate" field="faohorizonsubordinate_1" index="5"/>
    <alias name="Fao Hor Sub 2" field="faohorizonsubordinate_2" index="6"/>
    <alias name="Fao Hor Sub 3" field="faohorizonsubordinate_3" index="7"/>
    <alias name="" field="faohorizonvertical" index="8"/>
    <alias name="FAO Prime" field="faoprime" index="9"/>
    <alias name="It is an Original classification" field="isoriginalclassification" index="10"/>
    <alias name="Profile Element" field="guid_profileelement" index="11"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid" policy="DefaultValue"/>
    <policy field="faohorizondiscontinuity" policy="DefaultValue"/>
    <policy field="faohorizonmaster_1" policy="DefaultValue"/>
    <policy field="faohorizonmaster_2" policy="DefaultValue"/>
    <policy field="faohorizonsubordinate_1" policy="DefaultValue"/>
    <policy field="faohorizonsubordinate_2" policy="DefaultValue"/>
    <policy field="faohorizonsubordinate_3" policy="DefaultValue"/>
    <policy field="faoprime" policy="DefaultValue"/>
    <policy field="isoriginalclassification" policy="DefaultValue"/>
    <policy field="guid_profileelement" policy="DefaultValue"/>
  </splitPolicies>
  <mergePolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid" policy="DefaultValue"/>
    <policy field="guid_profileelement" policy="DefaultValue"/>
  </mergePolicies>
  <defaults>
    <default field="id" applyOnUpdate="0" expression=""/>
    <default field="guid" applyOnUpdate="0" expression=""/>
    <default field="faohorizondiscontinuity" applyOnUpdate="0" expression=""/>
    <default field="faohorizonmaster_1" applyOnUpdate="0" expression=""/>
    <default field="faohorizonmaster_2" applyOnUpdate="0" expression=""/>
    <default field="faohorizonsubordinate_1" applyOnUpdate="0" expression=""/>
    <default field="faohorizonsubordinate_2" applyOnUpdate="0" expression=""/>
    <default field="faohorizonsubordinate_3" applyOnUpdate="0" expression=""/>
    <default field="faohorizonvertical" applyOnUpdate="0" expression=""/>
    <default field="faoprime" applyOnUpdate="0" expression=""/>
    <default field="isoriginalclassification" applyOnUpdate="0" expression=""/>
    <default field="guid_profileelement" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" notnull_strength="1" field="id" constraints="3" exp_strength="0"/>
    <constraint unique_strength="1" notnull_strength="0" field="guid" constraints="2" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="faohorizondiscontinuity" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="faohorizonmaster_1" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="faohorizonmaster_2" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="faohorizonsubordinate_1" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="faohorizonsubordinate_2" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="faohorizonsubordinate_3" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="faohorizonvertical" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="faoprime" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="isoriginalclassification" constraints="1" exp_strength="0"/>
    <constraint unique_strength="1" notnull_strength="0" field="guid_profileelement" constraints="2" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="id"/>
    <constraint exp="" desc="" field="guid"/>
    <constraint exp="" desc="" field="faohorizondiscontinuity"/>
    <constraint exp="" desc="" field="faohorizonmaster_1"/>
    <constraint exp="" desc="" field="faohorizonmaster_2"/>
    <constraint exp="" desc="" field="faohorizonsubordinate_1"/>
    <constraint exp="" desc="" field="faohorizonsubordinate_2"/>
    <constraint exp="" desc="" field="faohorizonsubordinate_3"/>
    <constraint exp="" desc="" field="faohorizonvertical"/>
    <constraint exp="" desc="" field="faoprime"/>
    <constraint exp="" desc="" field="isoriginalclassification"/>
    <constraint exp="" desc="" field="guid_profileelement"/>
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
    <attributeEditorField name="faohorizondiscontinuity" verticalStretch="0" showLabel="1" index="2" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer groupBox="0" name="Master" verticalStretch="0" visibilityExpressionEnabled="0" showLabel="0" type="Row" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
      <attributeEditorField name="faohorizonmaster_1" verticalStretch="0" showLabel="1" index="3" horizontalStretch="1">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="faohorizonmaster_2" verticalStretch="0" showLabel="0" index="4" horizontalStretch="1">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="0" name="Subordinate" verticalStretch="0" visibilityExpressionEnabled="0" showLabel="0" type="Row" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
      <attributeEditorField name="faohorizonsubordinate_1" verticalStretch="0" showLabel="1" index="5" horizontalStretch="1">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="faohorizonsubordinate_2" verticalStretch="0" showLabel="0" index="6" horizontalStretch="1">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="faohorizonsubordinate_3" verticalStretch="0" showLabel="0" index="7" horizontalStretch="1">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField name="faoprime" verticalStretch="0" showLabel="1" index="9" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="isoriginalclassification" verticalStretch="0" showLabel="1" index="10" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="guid_profileelement" verticalStretch="0" showLabel="1" index="11" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
  </attributeEditorForm>
  <editable>
    <field name="faohorizondiscontinuity" editable="1"/>
    <field name="faohorizonmaster" editable="1"/>
    <field name="faohorizonmaster_1" editable="1"/>
    <field name="faohorizonmaster_2" editable="1"/>
    <field name="faohorizonsubordinate" editable="1"/>
    <field name="faohorizonsubordinate_1" editable="1"/>
    <field name="faohorizonsubordinate_2" editable="1"/>
    <field name="faohorizonsubordinate_3" editable="1"/>
    <field name="faohorizonverical" editable="1"/>
    <field name="faohorizonvertical" editable="1"/>
    <field name="faoprime" editable="1"/>
    <field name="guid" editable="0"/>
    <field name="guid_profileelement" editable="1"/>
    <field name="guidkey" editable="1"/>
    <field name="id" editable="0"/>
    <field name="idprofileelement" editable="1"/>
    <field name="isoriginalclassification" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="faohorizondiscontinuity"/>
    <field labelOnTop="0" name="faohorizonmaster"/>
    <field labelOnTop="0" name="faohorizonmaster_1"/>
    <field labelOnTop="0" name="faohorizonmaster_2"/>
    <field labelOnTop="0" name="faohorizonsubordinate"/>
    <field labelOnTop="0" name="faohorizonsubordinate_1"/>
    <field labelOnTop="0" name="faohorizonsubordinate_2"/>
    <field labelOnTop="0" name="faohorizonsubordinate_3"/>
    <field labelOnTop="0" name="faohorizonverical"/>
    <field labelOnTop="0" name="faohorizonvertical"/>
    <field labelOnTop="0" name="faoprime"/>
    <field labelOnTop="0" name="guid"/>
    <field labelOnTop="0" name="guid_profileelement"/>
    <field labelOnTop="0" name="guidkey"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="idprofileelement"/>
    <field labelOnTop="0" name="isoriginalclassification"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="faohorizondiscontinuity" reuseLastValue="0"/>
    <field name="faohorizonmaster" reuseLastValue="0"/>
    <field name="faohorizonmaster_1" reuseLastValue="0"/>
    <field name="faohorizonmaster_2" reuseLastValue="0"/>
    <field name="faohorizonsubordinate" reuseLastValue="0"/>
    <field name="faohorizonsubordinate_1" reuseLastValue="0"/>
    <field name="faohorizonsubordinate_2" reuseLastValue="0"/>
    <field name="faohorizonsubordinate_3" reuseLastValue="0"/>
    <field name="faohorizonverical" reuseLastValue="0"/>
    <field name="faohorizonvertical" reuseLastValue="0"/>
    <field name="faoprime" reuseLastValue="0"/>
    <field name="guid" reuseLastValue="0"/>
    <field name="guid_profileelement" reuseLastValue="0"/>
    <field name="guidkey" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="idprofileelement" reuseLastValue="0"/>
    <field name="isoriginalclassification" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>if("faohorizonverical" is null,'',  "faohorizonverical" )&#xd;&#xd;
||&#xd;&#xd;
COALESCE(regexp_substr("faohorizonmaster_1" , '[^/]*$'),'') &#xd;&#xd;
||  &#xd;&#xd;
COALESCE(regexp_substr("faohorizonmaster_2" , '[^/]*$'),'') &#xd;&#xd;
|| &#xd;&#xd;
COALESCE(regexp_substr("faohorizonsubordinate_1" , '[^/]*$'),'')&#xd;&#xd;
||&#xd;&#xd;
COALESCE(regexp_substr("faohorizonsubordinate_2" , '[^/]*$'),'')&#xd;&#xd;
||&#xd;&#xd;
COALESCE(regexp_substr("faohorizonsubordinate_3" , '[^/]*$'),'')&#xd;&#xd;
||&#xd;&#xd;
if(  "faohorizondiscontinuity"  is null, '', ' Discontinuty : '||"faohorizondiscontinuity" )&#xd;&#xd;
||&#xd;&#xd;
if("faoprime" = 'http://inspire.ec.europa.eu/codelist/FAOPrimeValue/0' ,'', ' Prime : '||COALESCE(regexp_substr("faoprime" , '[^/]*$'),'') )&#xd;&#xd;
&#xd;&#xd;
&#xd;&#xd;
</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
