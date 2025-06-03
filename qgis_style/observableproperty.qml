<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis readOnly="0" version="3.32.3-Lima" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation referencedLayer="unitofmeasure_acd3988b_0bc6_4f70_a63b_c0676a7fb97e" strength="Association" name="unitofmeasure_observableproperty" layerId="unitofmeasure_acd3988b_0bc6_4f70_a63b_c0676a7fb97e" referencingLayer="observableproperty_70b94c94_02a3_47a6_999a_5dc8c434f9ee" layerName="unitofmeasure" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_03.gpkg|layername=unitofmeasure" providerKey="ogr" id="unitofmeasure_observableproperty">
      <fieldRef referencingField="iduom" referencedField="guidkey"/>
    </relation>
  </referencedLayers>
  <fieldConfiguration>
    <field configurationFlags="None" name="id">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="guidkey">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="name">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="featuretype">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowMulti" value="false"/>
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="QString" name="Description" value="&quot;label&quot;"/>
            <Option type="QString" name="FilterExpression" value="&quot;collection&quot; IN('featuretype') "/>
            <Option type="QString" name="Key" value="id"/>
            <Option type="QString" name="Layer" value="codelist_142ed57f_ee6e_421f_98d1_7b9506152efd"/>
            <Option type="QString" name="LayerName" value="codelist"/>
            <Option type="QString" name="LayerProviderName" value="ogr"/>
            <Option type="QString" name="LayerSource" value="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_03.gpkg|layername=codelist"/>
            <Option type="int" name="NofColumns" value="1"/>
            <Option type="bool" name="OrderByValue" value="false"/>
            <Option type="bool" name="UseCompleter" value="false"/>
            <Option type="QString" name="Value" value="label"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="phenomenontype">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowMulti" value="false"/>
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="QString" name="Description" value="&quot;label&quot;"/>
            <Option type="QString" name="FilterExpression" value="&quot;collection&quot; IN('PhenomenonType') "/>
            <Option type="QString" name="Key" value="id"/>
            <Option type="QString" name="Layer" value="codelist_142ed57f_ee6e_421f_98d1_7b9506152efd"/>
            <Option type="QString" name="LayerName" value="codelist"/>
            <Option type="QString" name="LayerProviderName" value="ogr"/>
            <Option type="QString" name="LayerSource" value="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_03.gpkg|layername=codelist"/>
            <Option type="int" name="NofColumns" value="1"/>
            <Option type="bool" name="OrderByValue" value="false"/>
            <Option type="bool" name="UseCompleter" value="false"/>
            <Option type="QString" name="Value" value="label"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="basephenomenon">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowMulti" value="false"/>
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="QString" name="Description" value="&quot;label&quot;"/>
            <Option type="QString" name="FilterExpression" value=" &quot;featuretype_phenomenon&quot; = current_value('featuretype')+current_value('phenomenontype') "/>
            <Option type="QString" name="Key" value="id"/>
            <Option type="QString" name="Layer" value="codelist_142ed57f_ee6e_421f_98d1_7b9506152efd"/>
            <Option type="QString" name="LayerName" value="codelist"/>
            <Option type="QString" name="LayerProviderName" value="ogr"/>
            <Option type="QString" name="LayerSource" value="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_03.gpkg|layername=codelist"/>
            <Option type="int" name="NofColumns" value="1"/>
            <Option type="bool" name="OrderByValue" value="false"/>
            <Option type="bool" name="UseCompleter" value="false"/>
            <Option type="QString" name="Value" value="label"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="domain_min">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="domain_max">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="domain_typeofvalue">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" name="Numeric Value" value="result_value"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Coded Value" value="result_uri"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="domain_code">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowMulti" value="false"/>
            <Option type="bool" name="AllowNull" value="true"/>
            <Option type="QString" name="Description" value="&quot;label&quot;"/>
            <Option type="QString" name="FilterExpression" value="&quot;collection&quot; IN ('PropertyCoded')"/>
            <Option type="QString" name="Key" value="id"/>
            <Option type="QString" name="Layer" value="codelist_dca3491b_79c9_4c76_afe9_83b8d8e331a2"/>
            <Option type="QString" name="LayerName" value="codelist"/>
            <Option type="QString" name="LayerProviderName" value="ogr"/>
            <Option type="QString" name="LayerSource" value="C:/Users/andrea.lachi/Documents/Geopackage Soil/GPKG_Soil_Selection 04/INSPIRE_Selection_4.gpkg|layername=codelist"/>
            <Option type="int" name="NofColumns" value="1"/>
            <Option type="bool" name="OrderByValue" value="false"/>
            <Option type="bool" name="UseCompleter" value="false"/>
            <Option type="QString" name="Value" value="label"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="iduom">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowAddFeatures" value="false"/>
            <Option type="bool" name="AllowNULL" value="true"/>
            <Option type="bool" name="FetchLimitActive" value="true"/>
            <Option type="int" name="FetchLimitNumber" value="100"/>
            <Option type="bool" name="MapIdentification" value="false"/>
            <Option type="bool" name="ReadOnly" value="false"/>
            <Option type="QString" name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/Documents/_INSPIRE_NOV24/INSPIRE_SO.gpkg|layername=unitofmeasure"/>
            <Option type="QString" name="ReferencedLayerId" value="unitofmeasure_02d878f2_36b3_4f5c_8712_6434479e0f46"/>
            <Option type="QString" name="ReferencedLayerName" value="unitofmeasure"/>
            <Option type="QString" name="ReferencedLayerProviderKey" value="ogr"/>
            <Option type="QString" name="Relation" value="unitofmeasure_observableproperty"/>
            <Option type="bool" name="ShowForm" value="false"/>
            <Option type="bool" name="ShowOpenFormButton" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="id" index="0" name=""/>
    <alias field="guidkey" index="1" name=""/>
    <alias field="name" index="2" name="Name"/>
    <alias field="featuretype" index="3" name="Type of Feature"/>
    <alias field="phenomenontype" index="4" name="Phenomenon Type"/>
    <alias field="basephenomenon" index="5" name="Base Phenomenon"/>
    <alias field="domain_min" index="6" name="Min Value"/>
    <alias field="domain_max" index="7" name="Max Value"/>
    <alias field="domain_typeofvalue" index="8" name="Type of Value"/>
    <alias field="domain_code" index="9" name=""/>
    <alias field="iduom" index="10" name="Unit Of Measure"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guidkey" policy="DefaultValue"/>
    <policy field="name" policy="DefaultValue"/>
    <policy field="featuretype" policy="DefaultValue"/>
    <policy field="phenomenontype" policy="DefaultValue"/>
    <policy field="basephenomenon" policy="DefaultValue"/>
    <policy field="domain_min" policy="DefaultValue"/>
    <policy field="domain_max" policy="DefaultValue"/>
    <policy field="domain_typeofvalue" policy="DefaultValue"/>
    <policy field="domain_code" policy="DefaultValue"/>
    <policy field="iduom" policy="DefaultValue"/>
  </splitPolicies>
  <defaults>
    <default field="id" expression="" applyOnUpdate="0"/>
    <default field="guidkey" expression="" applyOnUpdate="0"/>
    <default field="name" expression="" applyOnUpdate="0"/>
    <default field="featuretype" expression="" applyOnUpdate="0"/>
    <default field="phenomenontype" expression="" applyOnUpdate="0"/>
    <default field="basephenomenon" expression="" applyOnUpdate="0"/>
    <default field="domain_min" expression="" applyOnUpdate="0"/>
    <default field="domain_max" expression="" applyOnUpdate="0"/>
    <default field="domain_typeofvalue" expression="" applyOnUpdate="0"/>
    <default field="domain_code" expression="" applyOnUpdate="0"/>
    <default field="iduom" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="id" constraints="3" exp_strength="0" notnull_strength="1" unique_strength="1"/>
    <constraint field="guidkey" constraints="2" exp_strength="0" notnull_strength="0" unique_strength="1"/>
    <constraint field="name" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="featuretype" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="phenomenontype" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="basephenomenon" constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0"/>
    <constraint field="domain_min" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="domain_max" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="domain_typeofvalue" constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0"/>
    <constraint field="domain_code" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="iduom" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" exp="" desc=""/>
    <constraint field="guidkey" exp="" desc=""/>
    <constraint field="name" exp="" desc=""/>
    <constraint field="featuretype" exp="" desc=""/>
    <constraint field="phenomenontype" exp="" desc=""/>
    <constraint field="basephenomenon" exp="" desc=""/>
    <constraint field="domain_min" exp="" desc=""/>
    <constraint field="domain_max" exp="" desc=""/>
    <constraint field="domain_typeofvalue" exp="" desc=""/>
    <constraint field="domain_code" exp="" desc=""/>
    <constraint field="iduom" exp="" desc=""/>
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
    <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
      <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
    </labelStyle>
    <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="1" collapsed="0" horizontalStretch="0" verticalStretch="0" collapsedExpressionEnabled="0" type="GroupBox" collapsedExpression="" name="Property" showLabel="1" visibilityExpression="" groupBox="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
        <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
      <attributeEditorField horizontalStretch="0" verticalStretch="0" index="2" name="name" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
          <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField horizontalStretch="0" verticalStretch="0" index="-1" name="definition" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
          <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField horizontalStretch="0" verticalStretch="0" index="-1" name="description" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
          <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="1" collapsed="0" horizontalStretch="0" verticalStretch="0" collapsedExpressionEnabled="0" type="GroupBox" collapsedExpression="" name="Phenomenon" showLabel="1" visibilityExpression="" groupBox="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
        <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
      <attributeEditorField horizontalStretch="0" verticalStretch="0" index="3" name="featuretype" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
          <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField horizontalStretch="0" verticalStretch="0" index="4" name="phenomenontype" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
          <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField horizontalStretch="0" verticalStretch="0" index="5" name="basephenomenon" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
          <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField horizontalStretch="0" verticalStretch="0" index="10" name="iduom" showLabel="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
        <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="1" collapsed="0" horizontalStretch="0" verticalStretch="0" collapsedExpressionEnabled="0" type="GroupBox" collapsedExpression="" name="Type Of Domain Value" showLabel="1" visibilityExpression="" groupBox="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
        <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
      <attributeEditorField horizontalStretch="0" verticalStretch="0" index="8" name="domain_typeofvalue" showLabel="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
          <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorContainer visibilityExpressionEnabled="1" columnCount="1" collapsed="0" horizontalStretch="0" verticalStretch="0" collapsedExpressionEnabled="0" type="Row" collapsedExpression="" name="Value Domain" showLabel="0" visibilityExpression=" &quot;domain_typeofvalue&quot; = 'result_value'" groupBox="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
          <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
        <attributeEditorField horizontalStretch="0" verticalStretch="0" index="6" name="domain_min" showLabel="1">
          <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
            <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField horizontalStretch="0" verticalStretch="0" index="7" name="domain_max" showLabel="1">
          <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
            <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
      <attributeEditorContainer visibilityExpressionEnabled="1" columnCount="1" collapsed="0" horizontalStretch="0" verticalStretch="0" collapsedExpressionEnabled="0" type="Row" collapsedExpression="" name="Coced Value" showLabel="0" visibilityExpression=" &quot;domain_typeofvalue&quot; = 'result_uri'" groupBox="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
          <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
        <attributeEditorField horizontalStretch="0" verticalStretch="0" index="9" name="domain_code" showLabel="1">
          <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
            <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field editable="1" name="basephenomenon"/>
    <field editable="1" name="definition"/>
    <field editable="1" name="description"/>
    <field editable="1" name="domain_code"/>
    <field editable="1" name="domain_max"/>
    <field editable="1" name="domain_min"/>
    <field editable="1" name="domain_typeofvalue"/>
    <field editable="1" name="featuretype"/>
    <field editable="1" name="foi"/>
    <field editable="1" name="guidkey"/>
    <field editable="1" name="id"/>
    <field editable="1" name="iduom"/>
    <field editable="1" name="name"/>
    <field editable="1" name="phenomenontype"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="basephenomenon"/>
    <field labelOnTop="0" name="definition"/>
    <field labelOnTop="0" name="description"/>
    <field labelOnTop="0" name="domain_code"/>
    <field labelOnTop="0" name="domain_max"/>
    <field labelOnTop="0" name="domain_min"/>
    <field labelOnTop="0" name="domain_typeofvalue"/>
    <field labelOnTop="0" name="featuretype"/>
    <field labelOnTop="0" name="foi"/>
    <field labelOnTop="0" name="guidkey"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="iduom"/>
    <field labelOnTop="0" name="name"/>
    <field labelOnTop="0" name="phenomenontype"/>
  </labelOnTop>
  <reuseLastValue>
    <field reuseLastValue="0" name="basephenomenon"/>
    <field reuseLastValue="0" name="definition"/>
    <field reuseLastValue="0" name="description"/>
    <field reuseLastValue="0" name="domain_code"/>
    <field reuseLastValue="0" name="domain_max"/>
    <field reuseLastValue="0" name="domain_min"/>
    <field reuseLastValue="0" name="domain_typeofvalue"/>
    <field reuseLastValue="0" name="featuretype"/>
    <field reuseLastValue="0" name="foi"/>
    <field reuseLastValue="0" name="guidkey"/>
    <field reuseLastValue="0" name="id"/>
    <field reuseLastValue="0" name="iduom"/>
    <field reuseLastValue="0" name="name"/>
    <field reuseLastValue="0" name="phenomenontype"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>COALESCE( "featuretype", '&lt;NULL>' )&#xd;&#xd;
 || ' - ' || &#xd;&#xd;
 COALESCE( "name", '&lt;NULL>' )</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
