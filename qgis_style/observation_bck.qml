<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis readOnly="0" version="3.42.1-Münster" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation strength="Association" name="featureofinterest_observation_observation" layerName="featureofinterest_observation" id="featureofinterest_observation_observation" referencingLayer="observation_c13892c0_8d1b_4156_b1e3_bf5a0fa0e6cb" providerKey="ogr" layerId="featureofinterest_observation_f0ccd289_cdbb_4060_9765_a161421e32c6" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=featureofinterest_observation" referencedLayer="featureofinterest_observation_f0ccd289_cdbb_4060_9765_a161421e32c6">
      <fieldRef referencingField="idfoi_obs" referencedField="guidkey"/>
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
    <field name="guidkey" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="phenomenontime" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" value="false" type="bool"/>
            <Option name="calendar_popup" value="true" type="bool"/>
            <Option name="display_format" value="d MMM yyyy HH:mm:ss" type="QString"/>
            <Option name="field_format" value="yyyy-MM-dd HH:mm:ss" type="QString"/>
            <Option name="field_format_overwrite" value="false" type="bool"/>
            <Option name="field_iso_format" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="resulttime" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" value="false" type="bool"/>
            <Option name="calendar_popup" value="true" type="bool"/>
            <Option name="display_format" value="d MMM yyyy HH:mm:ss" type="QString"/>
            <Option name="field_format" value="yyyy-MM-dd HH:mm:ss" type="QString"/>
            <Option name="field_format_overwrite" value="false" type="bool"/>
            <Option name="field_iso_format" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="validtime" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" value="true" type="bool"/>
            <Option name="calendar_popup" value="true" type="bool"/>
            <Option name="display_format" value="d MMM yyyy HH:mm:ss" type="QString"/>
            <Option name="field_format" value="yyyy-MM-dd HH:mm:ss" type="QString"/>
            <Option name="field_format_overwrite" value="false" type="bool"/>
            <Option name="field_iso_format" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="resultquality" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="result_value" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="result_uri" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="false" type="bool"/>
            <Option name="CompleterMatchFlags" value="2" type="int"/>
            <Option name="Description" type="invalid"/>
            <Option name="DisplayGroupName" value="false" type="bool"/>
            <Option name="FilterExpression" value="&quot;collection&quot;  IN (attribute(get_feature&#xa;(&#xa;&#x9;'featureofinterest_observation',&#xa;&#x9;'guidkey',&#xa;&#x9;&#xa;&#x9;attribute(get_feature&#xa;&#x9;(&#xa;&#x9;&#x9;'featureofinterest_observation',&#xa;&#x9;&#x9;'guidkey',&#xa;&#x9;&#x9; current_value('idfoi_obs')&#xa;&#x9;) &#xa;&#x9;,'idobservedproperty'&#xa;&#x9;)&#x9;&#xa;) &#xa;,'domain_code'))" type="QString"/>
            <Option name="Group" type="invalid"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="codelist_d7962ed3_67d9_4724_91f5_23b548ea50ec" type="QString"/>
            <Option name="LayerName" value="codelist" type="QString"/>
            <Option name="LayerProviderName" value="ogr" type="QString"/>
            <Option name="LayerSource" value="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=codelist" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByDescending" value="false" type="bool"/>
            <Option name="OrderByField" value="false" type="bool"/>
            <Option name="OrderByFieldName" type="invalid"/>
            <Option name="OrderByKey" value="true" type="bool"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="label" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="idfoi_obs" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" value="false" type="bool"/>
            <Option name="AllowNULL" value="true" type="bool"/>
            <Option name="FetchLimitActive" value="true" type="bool"/>
            <Option name="FetchLimitNumber" value="100" type="int"/>
            <Option name="MapIdentification" value="false" type="bool"/>
            <Option name="ReadOnly" value="false" type="bool"/>
            <Option name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_01.gpkg|layername=featureofinterest_observation" type="QString"/>
            <Option name="ReferencedLayerId" value="featureofinterest_observation_f0ccd289_cdbb_4060_9765_a161421e32c6" type="QString"/>
            <Option name="ReferencedLayerName" value="featureofinterest_observation" type="QString"/>
            <Option name="ReferencedLayerProviderKey" value="ogr" type="QString"/>
            <Option name="Relation" value="featureofinterest_observation_observation" type="QString"/>
            <Option name="ShowForm" value="false" type="bool"/>
            <Option name="ShowOpenFormButton" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="typeofdata" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="domain" configurationFlags="NoFlag">
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
    <alias field="id" index="0" name=""/>
    <alias field="guidkey" index="1" name=""/>
    <alias field="phenomenontime" index="2" name="Phenomenon Time"/>
    <alias field="resulttime" index="3" name="Result Time"/>
    <alias field="validtime" index="4" name="Valid Time"/>
    <alias field="resultquality" index="5" name="Result Quality"/>
    <alias field="result_value" index="6" name=""/>
    <alias field="result_uri" index="7" name=""/>
    <alias field="idfoi_obs" index="8" name=""/>
    <alias field="typeofdata" index="9" name=""/>
    <alias field="domain" index="10" name=""/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guidkey" policy="DefaultValue"/>
    <policy field="phenomenontime" policy="DefaultValue"/>
    <policy field="resulttime" policy="DefaultValue"/>
    <policy field="validtime" policy="DefaultValue"/>
    <policy field="resultquality" policy="DefaultValue"/>
    <policy field="result_value" policy="DefaultValue"/>
    <policy field="result_uri" policy="DefaultValue"/>
    <policy field="idfoi_obs" policy="DefaultValue"/>
    <policy field="typeofdata" policy="DefaultValue"/>
    <policy field="domain" policy="DefaultValue"/>
  </splitPolicies>
  <duplicatePolicies>
    <policy field="id" policy="Duplicate"/>
    <policy field="guidkey" policy="Duplicate"/>
    <policy field="phenomenontime" policy="Duplicate"/>
    <policy field="resulttime" policy="Duplicate"/>
    <policy field="validtime" policy="Duplicate"/>
    <policy field="resultquality" policy="Duplicate"/>
    <policy field="result_value" policy="Duplicate"/>
    <policy field="result_uri" policy="Duplicate"/>
    <policy field="idfoi_obs" policy="Duplicate"/>
    <policy field="typeofdata" policy="Duplicate"/>
    <policy field="domain" policy="Duplicate"/>
  </duplicatePolicies>
  <defaults>
    <default field="id" expression="" applyOnUpdate="0"/>
    <default field="guidkey" expression="" applyOnUpdate="0"/>
    <default field="phenomenontime" expression="" applyOnUpdate="0"/>
    <default field="resulttime" expression="" applyOnUpdate="0"/>
    <default field="validtime" expression="" applyOnUpdate="0"/>
    <default field="resultquality" expression="" applyOnUpdate="0"/>
    <default field="result_value" expression="if ( &quot;typeofdata&quot;  = 'result_uri',Null, &quot;result_value&quot; )" applyOnUpdate="1"/>
    <default field="result_uri" expression="" applyOnUpdate="0"/>
    <default field="idfoi_obs" expression="" applyOnUpdate="0"/>
    <default field="typeofdata" expression="" applyOnUpdate="0"/>
    <default field="domain" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="id" exp_strength="0" notnull_strength="1" constraints="3" unique_strength="1"/>
    <constraint field="guidkey" exp_strength="0" notnull_strength="0" constraints="2" unique_strength="1"/>
    <constraint field="phenomenontime" exp_strength="0" notnull_strength="1" constraints="1" unique_strength="0"/>
    <constraint field="resulttime" exp_strength="0" notnull_strength="1" constraints="1" unique_strength="0"/>
    <constraint field="validtime" exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="resultquality" exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="result_value" exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="result_uri" exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="idfoi_obs" exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="typeofdata" exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="domain" exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="id" exp="" desc=""/>
    <constraint field="guidkey" exp="" desc=""/>
    <constraint field="phenomenontime" exp="" desc=""/>
    <constraint field="resulttime" exp="" desc=""/>
    <constraint field="validtime" exp="" desc=""/>
    <constraint field="resultquality" exp="" desc=""/>
    <constraint field="result_value" exp="" desc=""/>
    <constraint field="result_uri" exp="" desc=""/>
    <constraint field="idfoi_obs" exp="" desc=""/>
    <constraint field="typeofdata" exp="" desc=""/>
    <constraint field="domain" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields>
    <field subType="0" name="typeofdata" comment="" precision="0" type="10" length="0" expression="attribute(get_feature&#xd;&#xa;&#x9;&#x9;(&#xd;&#xa;&#x9;&#x9;&#x9;'observableproperty',&#xd;&#xa;&#x9;&#x9;&#x9;'guidkey',&#xd;&#xa;&#x9;&#x9;&#x9;&#xd;&#xa;&#x9;&#x9;&#x9;attribute(get_feature&#xd;&#xa;&#x9;&#x9;&#x9;(&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;'featureofinterest_observation',&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;'guidkey',&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&quot;idfoi_obs&quot;&#xd;&#xa;&#x9;&#x9;&#x9;) &#xd;&#xa;&#x9;&#x9;&#x9;,'idobservedproperty'&#xd;&#xa;&#x9;&#x9;&#x9;)&#x9;&#x9;&#xd;&#xa;&#x9;&#x9;) &#xd;&#xa;&#x9;&#x9;,'domain_typeofvalue'&#xd;&#xa;&#x9;)" typeName="string"/>
    <field subType="0" name="domain" comment="" precision="0" type="10" length="0" expression="'Domain Value: '||&#xd;&#xa;IF(&#xd;&#xa;COALESCE(attribute(get_feature&#xd;&#xa;(&#xd;&#xa;&#x9;'observableproperty',&#xd;&#xa;&#x9;'guidkey',&#xd;&#xa;&#x9;&#xd;&#xa;&#x9;COALESCE(attribute(get_feature&#xd;&#xa;&#x9;(&#xd;&#xa;&#x9;&#x9;'featureofinterest_observation',&#xd;&#xa;&#x9;&#x9;'guidkey',&#xd;&#xa;&#x9;&#x9;&quot;idfoi_obs&quot;&#xd;&#xa;&#x9;) &#xd;&#xa;&#x9;,'idobservedproperty'&#xd;&#xa;&#x9;))&#x9;&#x9;&#xd;&#xa;) &#xd;&#xa;,'domain_min'&#xd;&#xa;)) IS NOT NULL,&#xd;&#xa;--True&#xd;&#xa;'Min '||&#xd;&#xa;COALESCE(attribute(get_feature&#xd;&#xa;(&#xd;&#xa;&#x9;'observableproperty',&#xd;&#xa;&#x9;'guidkey',&#xd;&#xa;&#x9;&#xd;&#xa;&#x9;COALESCE(attribute(get_feature&#xd;&#xa;&#x9;(&#xd;&#xa;&#x9;&#x9;'featureofinterest_observation',&#xd;&#xa;&#x9;&#x9;'guidkey',&#xd;&#xa;&#x9;&#x9;&quot;idfoi_obs&quot;&#xd;&#xa;&#x9;) &#xd;&#xa;&#x9;,'idobservedproperty'&#xd;&#xa;&#x9;))&#x9;&#x9;&#xd;&#xa;) &#xd;&#xa;,'domain_min'&#xd;&#xa;))&#xd;&#xa;&#xd;&#xa;|| ' and Max ' ||&#xd;&#xa;COALESCE(attribute(get_feature&#xd;&#xa;(&#xd;&#xa;&#x9;'observableproperty',&#xd;&#xa;&#x9;'guidkey',&#xd;&#xa;&#x9;&#xd;&#xa;&#x9;COALESCE(attribute(get_feature&#xd;&#xa;&#x9;(&#xd;&#xa;&#x9;&#x9;'featureofinterest_observation',&#xd;&#xa;&#x9;&#x9;'guidkey',&#xd;&#xa;&#x9;&#x9;&quot;idfoi_obs&quot;&#xd;&#xa;&#x9;) &#xd;&#xa;&#x9;,'idobservedproperty'&#xd;&#xa;&#x9;))&#x9;&#x9;&#xd;&#xa;) &#xd;&#xa;,'domain_max'&#xd;&#xa;))&#xd;&#xa;--FALSE&#xd;&#xa;, '')&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;||&#xd;&#xa;&#xd;&#xa;IF(&#xd;&#xa;COALESCE(attribute(get_feature&#xd;&#xa;(&#xd;&#xa;&#x9;'unitofmeasure',&#xd;&#xa;&#x9;'guidkey',&#xd;&#xa;&#x9;&#xd;&#xa;&#xd;&#xa;&#x9;&#x9;COALESCE(attribute(get_feature&#xd;&#xa;&#x9;&#x9;(&#xd;&#xa;&#x9;&#x9;&#x9;'observableproperty',&#xd;&#xa;&#x9;&#x9;&#x9;'guidkey',&#xd;&#xa;&#x9;&#x9;&#x9;&#xd;&#xa;&#x9;&#x9;&#x9;COALESCE(attribute(get_feature&#xd;&#xa;&#x9;&#x9;&#x9;(&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;'featureofinterest_observation',&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;'guidkey',&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&quot;idfoi_obs&quot;&#xd;&#xa;&#x9;&#x9;&#x9;) &#xd;&#xa;&#x9;&#x9;&#x9;,'idobservedproperty'&#xd;&#xa;&#x9;&#x9;&#x9;))&#x9;&#x9;&#xd;&#xa;&#x9;&#x9;) &#xd;&#xa;&#x9;&#x9;,'iduom'&#xd;&#xa;&#x9;&#x9;))&#xd;&#xa;) &#xd;&#xa;,'uomsymbol'&#xd;&#xa;)) &#xd;&#xa;&#xd;&#xa;is NOT NULL ,&#xd;&#xa;&#xd;&#xa;--TRUE&#xd;&#xa;' - ' ||&#xd;&#xa;&#xd;&#xa;COALESCE(attribute(get_feature&#xd;&#xa;(&#xd;&#xa;&#x9;'unitofmeasure',&#xd;&#xa;&#x9;'guidkey',&#xd;&#xa;&#x9;&#xd;&#xa;&#xd;&#xa;&#x9;&#x9;COALESCE(attribute(get_feature&#xd;&#xa;&#x9;&#x9;(&#xd;&#xa;&#x9;&#x9;&#x9;'observableproperty',&#xd;&#xa;&#x9;&#x9;&#x9;'guidkey',&#xd;&#xa;&#x9;&#x9;&#x9;&#xd;&#xa;&#x9;&#x9;&#x9;COALESCE(attribute(get_feature&#xd;&#xa;&#x9;&#x9;&#x9;(&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;'featureofinterest_observation',&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;'guidkey',&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&quot;idfoi_obs&quot;&#xd;&#xa;&#x9;&#x9;&#x9;) &#xd;&#xa;&#x9;&#x9;&#x9;,'idobservedproperty'&#xd;&#xa;&#x9;&#x9;&#x9;))&#x9;&#x9;&#xd;&#xa;&#x9;&#x9;) &#xd;&#xa;&#x9;&#x9;,'iduom'&#xd;&#xa;&#x9;&#x9;))&#xd;&#xa;) &#xd;&#xa;,'uomsymbol'&#xd;&#xa;)) ,&#xd;&#xa;--FALSE&#xd;&#xa;' ')" typeName="string"/>
  </expressionfields>
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
    <labelStyle labelColor="" overrideLabelFont="0" overrideLabelColor="0">
      <labelFont italic="0" bold="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0"/>
    </labelStyle>
    <attributeEditorField showLabel="1" name="phenomenontime" index="2" horizontalStretch="0" verticalStretch="0">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont italic="0" bold="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField showLabel="1" name="resulttime" index="3" horizontalStretch="0" verticalStretch="0">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont italic="0" bold="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField showLabel="1" name="validtime" index="4" horizontalStretch="0" verticalStretch="0">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont italic="0" bold="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer showLabel="1" collapsedExpressionEnabled="0" name="Numeric_Value" columnCount="1" groupBox="1" collapsed="0" collapsedExpression="" horizontalStretch="0" visibilityExpressionEnabled="1" type="GroupBox" verticalStretch="0" visibilityExpression=" &quot;typeofdata&quot;  = 'result_value'&#xa;">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont italic="0" bold="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorField showLabel="0" name="domain" index="10" horizontalStretch="0" verticalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelFont="0" overrideLabelColor="0">
          <labelFont italic="0" bold="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField showLabel="0" name="result_value" index="6" horizontalStretch="0" verticalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelFont="0" overrideLabelColor="0">
          <labelFont italic="0" bold="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" collapsedExpressionEnabled="0" name="Coded_Value" columnCount="1" groupBox="1" collapsed="0" collapsedExpression="" horizontalStretch="0" visibilityExpressionEnabled="1" type="GroupBox" verticalStretch="0" visibilityExpression=" &quot;typeofdata&quot;  = 'result_uri'">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont italic="0" bold="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorField showLabel="1" name="result_uri" index="7" horizontalStretch="0" verticalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelFont="0" overrideLabelColor="0">
          <labelFont italic="0" bold="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField showLabel="1" name="idfoi_obs" index="8" horizontalStretch="0" verticalStretch="0">
      <labelStyle labelColor="" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont italic="0" bold="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField showLabel="1" name="resultquality" index="5" horizontalStretch="0" verticalStretch="0">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont italic="0" bold="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer showLabel="1" collapsedExpressionEnabled="0" name="Hidden" columnCount="1" groupBox="1" collapsed="0" collapsedExpression="" horizontalStretch="0" visibilityExpressionEnabled="1" type="GroupBox" verticalStretch="0" visibilityExpression="1=0">
      <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelFont="0" overrideLabelColor="0">
        <labelFont italic="0" bold="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorField showLabel="1" name="typeofdata" index="9" horizontalStretch="0" verticalStretch="0">
        <labelStyle labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelFont="0" overrideLabelColor="0">
          <labelFont italic="0" bold="0" underline="0" style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field name="domain" editable="0"/>
    <field name="guidkey" editable="1"/>
    <field name="id" editable="1"/>
    <field name="iddatastream" editable="1"/>
    <field name="idfoi_obs" editable="1"/>
    <field name="phenomenontime" editable="1"/>
    <field name="result_uri" editable="1"/>
    <field name="result_value" editable="1"/>
    <field name="resultquality" editable="1"/>
    <field name="resulttime" editable="1"/>
    <field name="typeofdata" editable="0"/>
    <field name="validtime" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="domain" labelOnTop="0"/>
    <field name="guidkey" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="iddatastream" labelOnTop="0"/>
    <field name="idfoi_obs" labelOnTop="0"/>
    <field name="phenomenontime" labelOnTop="0"/>
    <field name="result_uri" labelOnTop="0"/>
    <field name="result_value" labelOnTop="0"/>
    <field name="resultquality" labelOnTop="0"/>
    <field name="resulttime" labelOnTop="0"/>
    <field name="typeofdata" labelOnTop="0"/>
    <field name="validtime" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="domain" reuseLastValue="0"/>
    <field name="guidkey" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="iddatastream" reuseLastValue="0"/>
    <field name="idfoi_obs" reuseLastValue="0"/>
    <field name="phenomenontime" reuseLastValue="0"/>
    <field name="result_uri" reuseLastValue="0"/>
    <field name="result_value" reuseLastValue="0"/>
    <field name="resultquality" reuseLastValue="0"/>
    <field name="resulttime" reuseLastValue="0"/>
    <field name="typeofdata" reuseLastValue="0"/>
    <field name="validtime" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"phenomenontime"</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
