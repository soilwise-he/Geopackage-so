<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" readOnly="0" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation name="soilbody_derivedprofilepresenceinsoilbody_2" referencingLayer="derivedprofilepresenceinsoilbody_e9fd85ee_79e3_49d8_a67f_e7d271288258" id="soilbody_derivedprofilepresenceinsoilbody_2" layerName="soilbody" strength="Composition" layerId="soilbody_7cd4f504_2bdb_45db_86b2_e5ae852f3a79" referencedLayer="soilbody_7cd4f504_2bdb_45db_86b2_e5ae852f3a79" providerKey="ogr" dataSource="./SW_15.gpkg|layername=soilbody">
      <fieldRef referencingField="guid_soilbody" referencedField="guid"/>
    </relation>
    <relation name="soilprofile_derivedprofilepresenceinsoilbody" referencingLayer="derivedprofilepresenceinsoilbody_e9fd85ee_79e3_49d8_a67f_e7d271288258" id="soilprofile_derivedprofilepresenceinsoilbody" layerName="soilprofile" strength="Composition" layerId="soilprofile_216eea7c_d015_4117_8c9f_df0b7692b5a7" referencedLayer="soilprofile_216eea7c_d015_4117_8c9f_df0b7692b5a7" providerKey="ogr" dataSource="./SW_15.gpkg|layername=soilprofile">
      <fieldRef referencingField="guid_soilprofile" referencedField="guid"/>
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
    <field name="guid_soilbody" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="false" type="bool"/>
            <Option name="AllowNULL" value="false" type="bool"/>
            <Option name="FetchLimitActive" value="true" type="bool"/>
            <Option name="FetchLimitNumber" value="100" type="int"/>
            <Option name="MapIdentification" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=soilbody" type="QString"/>
            <Option name="ReferencedLayerId" value="soilbody_7cd4f504_2bdb_45db_86b2_e5ae852f3a79" type="QString"/>
            <Option name="ReferencedLayerName" value="soilbody" type="QString"/>
            <Option name="ReferencedLayerProviderKey" value="ogr" type="QString"/>
            <Option name="Relation" value="soilbody_derivedprofilepresenceinsoilbody_2" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_soilprofile" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="false" type="bool"/>
            <Option name="AllowNULL" value="false" type="bool"/>
            <Option name="FetchLimitActive" value="true" type="bool"/>
            <Option name="FetchLimitNumber" value="100" type="int"/>
            <Option name="MapIdentification" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=soilprofile" type="QString"/>
            <Option name="ReferencedLayerId" value="soilprofile_216eea7c_d015_4117_8c9f_df0b7692b5a7" type="QString"/>
            <Option name="ReferencedLayerName" value="soilprofile" type="QString"/>
            <Option name="ReferencedLayerProviderKey" value="ogr" type="QString"/>
            <Option name="Relation" value="soilprofile_derivedprofilepresenceinsoilbody" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="lowervalue" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="uppervalue" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="id" index="0"/>
    <alias name="Soil Body" field="guid_soilbody" index="1"/>
    <alias name="Soil Profile" field="guid_soilprofile" index="2"/>
    <alias name="% Lower Value" field="lowervalue" index="3"/>
    <alias name="% Upper Value" field="uppervalue" index="4"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid_soilbody" policy="DefaultValue"/>
    <policy field="guid_soilprofile" policy="DefaultValue"/>
    <policy field="lowervalue" policy="DefaultValue"/>
    <policy field="uppervalue" policy="DefaultValue"/>
  </splitPolicies>
  <mergePolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid_soilbody" policy="DefaultValue"/>
    <policy field="guid_soilprofile" policy="DefaultValue"/>
  </mergePolicies>
  <defaults>
    <default field="id" applyOnUpdate="0" expression=""/>
    <default field="guid_soilbody" applyOnUpdate="0" expression=""/>
    <default field="guid_soilprofile" applyOnUpdate="0" expression=""/>
    <default field="lowervalue" applyOnUpdate="0" expression=""/>
    <default field="uppervalue" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" notnull_strength="1" field="id" constraints="3" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="guid_soilbody" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="guid_soilprofile" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="lowervalue" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="uppervalue" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="id"/>
    <constraint exp="" desc="" field="guid_soilbody"/>
    <constraint exp="" desc="" field="guid_soilprofile"/>
    <constraint exp="" desc="" field="lowervalue"/>
    <constraint exp="" desc="" field="uppervalue"/>
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
    <attributeEditorField name="guid_soilbody" verticalStretch="0" showLabel="1" index="1" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="guid_soilprofile" verticalStretch="0" showLabel="1" index="2" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer groupBox="1" name="Presence in SoilBody" verticalStretch="0" visibilityExpressionEnabled="0" showLabel="1" type="GroupBox" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
      <attributeEditorField name="lowervalue" verticalStretch="0" showLabel="1" index="3" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="uppervalue" verticalStretch="0" showLabel="1" index="4" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field name="guid_soilbody" editable="1"/>
    <field name="guid_soilprofile" editable="1"/>
    <field name="id" editable="1"/>
    <field name="idsoilbody" editable="1"/>
    <field name="idsoilprofile" editable="1"/>
    <field name="lowervalue" editable="1"/>
    <field name="uppervalue" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="guid_soilbody"/>
    <field labelOnTop="0" name="guid_soilprofile"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="idsoilbody"/>
    <field labelOnTop="0" name="idsoilprofile"/>
    <field labelOnTop="0" name="lowervalue"/>
    <field labelOnTop="0" name="uppervalue"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="guid_soilbody" reuseLastValue="0"/>
    <field name="guid_soilprofile" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="idsoilbody" reuseLastValue="0"/>
    <field name="idsoilprofile" reuseLastValue="0"/>
    <field name="lowervalue" reuseLastValue="0"/>
    <field name="uppervalue" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>'SB: '||&#xd;&#xd;
COALESCE(attribute(get_feature&#xd;&#xd;
(&#xd;&#xd;
	'soilbody',  &#xd;&#xd;
	'guid',&#xd;&#xd;
	"guid_soilbody"&#xd;&#xd;
) &#xd;&#xd;
,'soilbodylabel' &#xd;&#xd;
))&#xd;&#xd;
|| ' SP: ' ||&#xd;&#xd;
COALESCE(attribute(get_feature&#xd;&#xd;
(&#xd;&#xd;
	'soilprofile',  &#xd;&#xd;
	'guid',&#xd;&#xd;
	"guid_soilprofile"&#xd;&#xd;
) &#xd;&#xd;
,'localidentifier' &#xd;&#xd;
)) || ' '|| "lowervalue" || '% ' </previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
