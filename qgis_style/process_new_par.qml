<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations" readOnly="0" version="3.32.3-Lima">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation referencingLayer="process_92c088bb_d15f_4938_9306_4186cfc521ee" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_06.gpkg|layername=documentcitation" providerKey="ogr" name="documentcitation_process" layerName="documentcitation" id="documentcitation_process" referencedLayer="documentcitation_088e27d7_a461_426b_8a51_feaf6fdcf7f8" layerId="documentcitation_088e27d7_a461_426b_8a51_feaf6fdcf7f8" strength="Association">
      <fieldRef referencingField="iddocumentcitation2" referencedField="guidkey"/>
    </relation>
    <relation referencingLayer="process_92c088bb_d15f_4938_9306_4186cfc521ee" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_06.gpkg|layername=documentcitation" providerKey="ogr" name="documentcitation_process_2" layerName="documentcitation" id="documentcitation_process_2" referencedLayer="documentcitation_088e27d7_a461_426b_8a51_feaf6fdcf7f8" layerId="documentcitation_088e27d7_a461_426b_8a51_feaf6fdcf7f8" strength="Association">
      <fieldRef referencingField="iddocumentcitation1" referencedField="guidkey"/>
    </relation>
    <relation referencingLayer="process_92c088bb_d15f_4938_9306_4186cfc521ee" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_06.gpkg|layername=relatedparty" providerKey="ogr" name="relatedparty_process_3" layerName="relatedparty" id="relatedparty_process_3" referencedLayer="relatedparty_18ea3f1c_e256_454f_9d83_565d813784ba" layerId="relatedparty_18ea3f1c_e256_454f_9d83_565d813784ba" strength="Association">
      <fieldRef referencingField="idrelatedparty2" referencedField="guidkey"/>
    </relation>
    <relation referencingLayer="process_92c088bb_d15f_4938_9306_4186cfc521ee" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_06.gpkg|layername=relatedparty" providerKey="ogr" name="relatedparty_process_4" layerName="relatedparty" id="relatedparty_process_4" referencedLayer="relatedparty_18ea3f1c_e256_454f_9d83_565d813784ba" layerId="relatedparty_18ea3f1c_e256_454f_9d83_565d813784ba" strength="Association">
      <fieldRef referencingField="idrelatedparty1" referencedField="guidkey"/>
    </relation>
  </referencedLayers>
  <fieldConfiguration>
    <field configurationFlags="None" name="id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="guidkey">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="inspireid_localid">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="inspireid_namespace">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="inspireid_versionid">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="name">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="description">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="type">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="idrelatedparty1">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="false" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage_Soil_Import/Geop_TEST/Python_Test.gpkg|layername=relatedparty" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="relatedparty_0ba1b03b_2a59_4996_abde_f9cc588f30b3" name="ReferencedLayerId" type="QString"/>
            <Option value="relatedparty" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="relatedparty_process_4" name="Relation" type="QString"/>
            <Option value="false" name="ShowForm" type="bool"/>
            <Option value="true" name="ShowOpenFormButton" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="idrelatedparty2">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="true" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage_Soil_Import/Geop_TEST/Python_Test.gpkg|layername=relatedparty" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="relatedparty_0ba1b03b_2a59_4996_abde_f9cc588f30b3" name="ReferencedLayerId" type="QString"/>
            <Option value="relatedparty" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="relatedparty_process_3" name="Relation" type="QString"/>
            <Option value="false" name="ShowForm" type="bool"/>
            <Option value="true" name="ShowOpenFormButton" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="iddocumentcitation1">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="true" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage_Soil_Import/Geop_TEST/Python_Test.gpkg|layername=documentcitation" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="documentcitation_7bdd83be_95f3_4736_8b44_bdbf8d357a3c" name="ReferencedLayerId" type="QString"/>
            <Option value="documentcitation" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="documentcitation_process_2" name="Relation" type="QString"/>
            <Option value="false" name="ShowForm" type="bool"/>
            <Option value="true" name="ShowOpenFormButton" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="iddocumentcitation2">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="true" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/Documents/Geopackage_Soil_Import/Geop_TEST/Python_Test.gpkg|layername=documentcitation" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="documentcitation_7bdd83be_95f3_4736_8b44_bdbf8d357a3c" name="ReferencedLayerId" type="QString"/>
            <Option value="documentcitation" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="documentcitation_process" name="Relation" type="QString"/>
            <Option value="false" name="ShowForm" type="bool"/>
            <Option value="true" name="ShowOpenFormButton" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="properties">
      <editWidget type="KeyValue">
        <config>
          <Option/>
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
    <alias index="5" name="" field="name"/>
    <alias index="6" name="" field="description"/>
    <alias index="7" name="" field="type"/>
    <alias index="8" name="Related Party" field="idrelatedparty1"/>
    <alias index="9" name="Related Party 2" field="idrelatedparty2"/>
    <alias index="10" name="Document Citation" field="iddocumentcitation1"/>
    <alias index="11" name="Document Citation 2" field="iddocumentcitation2"/>
    <alias index="12" name="" field="properties"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="Duplicate"/>
    <policy field="guidkey" policy="DefaultValue"/>
    <policy field="inspireid_localid" policy="DefaultValue"/>
    <policy field="inspireid_namespace" policy="DefaultValue"/>
    <policy field="inspireid_versionid" policy="DefaultValue"/>
    <policy field="name" policy="DefaultValue"/>
    <policy field="description" policy="DefaultValue"/>
    <policy field="type" policy="DefaultValue"/>
    <policy field="idrelatedparty1" policy="DefaultValue"/>
    <policy field="idrelatedparty2" policy="DefaultValue"/>
    <policy field="iddocumentcitation1" policy="DefaultValue"/>
    <policy field="iddocumentcitation2" policy="DefaultValue"/>
    <policy field="properties" policy="DefaultValue"/>
  </splitPolicies>
  <defaults>
    <default expression="" field="id" applyOnUpdate="0"/>
    <default expression="" field="guidkey" applyOnUpdate="0"/>
    <default expression="" field="inspireid_localid" applyOnUpdate="0"/>
    <default expression="" field="inspireid_namespace" applyOnUpdate="0"/>
    <default expression="" field="inspireid_versionid" applyOnUpdate="0"/>
    <default expression="" field="name" applyOnUpdate="0"/>
    <default expression="" field="description" applyOnUpdate="0"/>
    <default expression="" field="type" applyOnUpdate="0"/>
    <default expression="" field="idrelatedparty1" applyOnUpdate="0"/>
    <default expression="" field="idrelatedparty2" applyOnUpdate="0"/>
    <default expression="" field="iddocumentcitation1" applyOnUpdate="0"/>
    <default expression="" field="iddocumentcitation2" applyOnUpdate="0"/>
    <default expression="" field="properties" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint exp_strength="0" notnull_strength="1" constraints="3" field="id" unique_strength="1"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="2" field="guidkey" unique_strength="1"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" field="inspireid_localid" unique_strength="0"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" field="inspireid_namespace" unique_strength="0"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" field="inspireid_versionid" unique_strength="0"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" field="name" unique_strength="0"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" field="description" unique_strength="0"/>
    <constraint exp_strength="0" notnull_strength="1" constraints="1" field="type" unique_strength="0"/>
    <constraint exp_strength="0" notnull_strength="1" constraints="1" field="idrelatedparty1" unique_strength="0"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" field="idrelatedparty2" unique_strength="0"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" field="iddocumentcitation1" unique_strength="0"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" field="iddocumentcitation2" unique_strength="0"/>
    <constraint exp_strength="0" notnull_strength="0" constraints="0" field="properties" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="id" exp=""/>
    <constraint desc="" field="guidkey" exp=""/>
    <constraint desc="" field="inspireid_localid" exp=""/>
    <constraint desc="" field="inspireid_namespace" exp=""/>
    <constraint desc="" field="inspireid_versionid" exp=""/>
    <constraint desc="" field="name" exp=""/>
    <constraint desc="" field="description" exp=""/>
    <constraint desc="" field="type" exp=""/>
    <constraint desc="" field="idrelatedparty1" exp=""/>
    <constraint desc="" field="idrelatedparty2" exp=""/>
    <constraint desc="" field="iddocumentcitation1" exp=""/>
    <constraint desc="" field="iddocumentcitation2" exp=""/>
    <constraint desc="" field="properties" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
    geom = feature.geometry()
    control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>tablayout</editorlayout>
  <attributeEditorForm>
    <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
      <labelFont underline="0" style="" bold="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
    </labelStyle>
    <attributeEditorField horizontalStretch="0" name="id" index="0" showLabel="1" verticalStretch="0">
      <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont underline="0" style="" bold="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer horizontalStretch="0" name="INSPIRE ID" collapsed="0" showLabel="1" collapsedExpressionEnabled="0" verticalStretch="0" type="GroupBox" groupBox="1" collapsedExpression="" visibilityExpressionEnabled="0" columnCount="1" visibilityExpression="">
      <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont underline="0" style="" bold="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
      <attributeEditorField horizontalStretch="0" name="inspireid_localid" index="2" showLabel="1" verticalStretch="0">
        <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont underline="0" style="" bold="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField horizontalStretch="0" name="inspireid_namespace" index="3" showLabel="1" verticalStretch="0">
        <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont underline="0" style="" bold="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField horizontalStretch="0" name="inspireid_versionid" index="4" showLabel="1" verticalStretch="0">
        <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont underline="0" style="" bold="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField horizontalStretch="0" name="name" index="5" showLabel="1" verticalStretch="0">
      <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont underline="0" style="" bold="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField horizontalStretch="0" name="description" index="6" showLabel="1" verticalStretch="0">
      <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont underline="0" style="" bold="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField horizontalStretch="0" name="type" index="7" showLabel="1" verticalStretch="0">
      <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont underline="0" style="" bold="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer horizontalStretch="0" name="Related Party" collapsed="0" showLabel="1" collapsedExpressionEnabled="0" verticalStretch="0" type="GroupBox" groupBox="1" collapsedExpression="" visibilityExpressionEnabled="0" columnCount="1" visibilityExpression="">
      <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont underline="0" style="" bold="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
      <attributeEditorField horizontalStretch="0" name="idrelatedparty1" index="8" showLabel="0" verticalStretch="0">
        <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont underline="0" style="" bold="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField horizontalStretch="0" name="idrelatedparty2" index="9" showLabel="0" verticalStretch="0">
        <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont underline="0" style="" bold="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer horizontalStretch="0" name="Document Citation" collapsed="0" showLabel="1" collapsedExpressionEnabled="0" verticalStretch="0" type="GroupBox" groupBox="1" collapsedExpression="" visibilityExpressionEnabled="0" columnCount="1" visibilityExpression="">
      <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont underline="0" style="" bold="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
      <attributeEditorField horizontalStretch="0" name="iddocumentcitation1" index="10" showLabel="0" verticalStretch="0">
        <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont underline="0" style="" bold="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField horizontalStretch="0" name="iddocumentcitation2" index="11" showLabel="0" verticalStretch="0">
        <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont underline="0" style="" bold="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer horizontalStretch="0" name="Properties" collapsed="0" showLabel="1" collapsedExpressionEnabled="0" verticalStretch="0" type="GroupBox" groupBox="1" collapsedExpression="" visibilityExpressionEnabled="0" columnCount="1" visibilityExpression="">
      <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont underline="0" style="" bold="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
      <attributeEditorField horizontalStretch="0" name="properties" index="12" showLabel="0" verticalStretch="0">
        <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont underline="0" style="" bold="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field name="description" editable="1"/>
    <field name="guidkey" editable="1"/>
    <field name="id" editable="1"/>
    <field name="iddocumentcitation1" editable="1"/>
    <field name="iddocumentcitation2" editable="1"/>
    <field name="idrelatedparty1" editable="1"/>
    <field name="idrelatedparty2" editable="1"/>
    <field name="inspireid_localid" editable="1"/>
    <field name="inspireid_namespace" editable="1"/>
    <field name="inspireid_versionid" editable="1"/>
    <field name="name" editable="1"/>
    <field name="properties" editable="1"/>
    <field name="type" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="description" labelOnTop="0"/>
    <field name="guidkey" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="iddocumentcitation1" labelOnTop="0"/>
    <field name="iddocumentcitation2" labelOnTop="0"/>
    <field name="idrelatedparty1" labelOnTop="0"/>
    <field name="idrelatedparty2" labelOnTop="0"/>
    <field name="inspireid_localid" labelOnTop="0"/>
    <field name="inspireid_namespace" labelOnTop="0"/>
    <field name="inspireid_versionid" labelOnTop="0"/>
    <field name="name" labelOnTop="0"/>
    <field name="properties" labelOnTop="0"/>
    <field name="type" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="description" reuseLastValue="0"/>
    <field name="guidkey" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="iddocumentcitation1" reuseLastValue="0"/>
    <field name="iddocumentcitation2" reuseLastValue="0"/>
    <field name="idrelatedparty1" reuseLastValue="0"/>
    <field name="idrelatedparty2" reuseLastValue="0"/>
    <field name="inspireid_localid" reuseLastValue="0"/>
    <field name="inspireid_namespace" reuseLastValue="0"/>
    <field name="inspireid_versionid" reuseLastValue="0"/>
    <field name="name" reuseLastValue="0"/>
    <field name="properties" reuseLastValue="0"/>
    <field name="type" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>COALESCE( "name", '&lt;NULL>' )</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
