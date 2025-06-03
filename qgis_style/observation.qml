<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis readOnly="0" version="3.32.3-Lima" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers>
    <relation referencedLayer="featureofinterest_observation_7878d1fe_47a4_4490_9de8_aabd05ccd10f" strength="Association" name="featureofinterest_observation_observation" layerId="featureofinterest_observation_7878d1fe_47a4_4490_9de8_aabd05ccd10f" referencingLayer="observation_7e3188d0_7431_40a1_b7b7_cb9b17e11185" layerName="featureofinterest_observation" dataSource="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_03.gpkg|layername=featureofinterest_observation" providerKey="ogr" id="featureofinterest_observation_observation">
      <fieldRef referencingField="idfoi_obs" referencedField="guidkey"/>
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
    <field configurationFlags="None" name="phenomenontime">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" name="allow_null" value="false"/>
            <Option type="bool" name="calendar_popup" value="true"/>
            <Option type="QString" name="display_format" value="d MMM yyyy HH:mm:ss"/>
            <Option type="QString" name="field_format" value="yyyy-MM-dd HH:mm:ss"/>
            <Option type="bool" name="field_format_overwrite" value="false"/>
            <Option type="bool" name="field_iso_format" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="resulttime">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" name="allow_null" value="false"/>
            <Option type="bool" name="calendar_popup" value="true"/>
            <Option type="QString" name="display_format" value="d MMM yyyy HH:mm:ss"/>
            <Option type="QString" name="field_format" value="yyyy-MM-dd HH:mm:ss"/>
            <Option type="bool" name="field_format_overwrite" value="false"/>
            <Option type="bool" name="field_iso_format" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="validtime">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" name="allow_null" value="true"/>
            <Option type="bool" name="calendar_popup" value="true"/>
            <Option type="QString" name="display_format" value="d MMM yyyy HH:mm:ss"/>
            <Option type="QString" name="field_format" value="yyyy-MM-dd HH:mm:ss"/>
            <Option type="bool" name="field_format_overwrite" value="false"/>
            <Option type="bool" name="field_iso_format" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="resultquality">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="result_value">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="result_uri">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowMulti" value="false"/>
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="QString" name="Description" value=""/>
            <Option type="QString" name="FilterExpression" value="&quot;collection&quot;  IN (attribute(get_feature&#xa;(&#xa;&#x9;'featureofinterest_observation',&#xa;&#x9;'guidkey',&#xa;&#x9;&#xa;&#x9;attribute(get_feature&#xa;&#x9;(&#xa;&#x9;&#x9;'featureofinterest_observation',&#xa;&#x9;&#x9;'guidkey',&#xa;&#x9;&#x9; current_value('idfoi_obs')&#xa;&#x9;) &#xa;&#x9;,'idobservedproperty'&#xa;&#x9;)&#x9;&#xa;) &#xa;,'domain_code'))"/>
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
    <field configurationFlags="None" name="idfoi_obs">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowAddFeatures" value="false"/>
            <Option type="bool" name="AllowNULL" value="true"/>
            <Option type="bool" name="FetchLimitActive" value="true"/>
            <Option type="int" name="FetchLimitNumber" value="100"/>
            <Option type="bool" name="MapIdentification" value="false"/>
            <Option type="bool" name="ReadOnly" value="false"/>
            <Option type="QString" name="ReferencedLayerDataSource" value="C:/Users/andrea.lachi/Documents/Geopackage Soil 2_0/geopackage/INSPIRE_SO_2_03.gpkg|layername=featureofinterest_observation"/>
            <Option type="QString" name="ReferencedLayerId" value="featureofinterest_observation_7878d1fe_47a4_4490_9de8_aabd05ccd10f"/>
            <Option type="QString" name="ReferencedLayerName" value="featureofinterest_observation"/>
            <Option type="QString" name="ReferencedLayerProviderKey" value="ogr"/>
            <Option type="QString" name="Relation" value="featureofinterest_observation_observation"/>
            <Option type="bool" name="ShowForm" value="false"/>
            <Option type="bool" name="ShowOpenFormButton" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="typeofdata">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="domain">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
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
    <constraint field="id" constraints="3" exp_strength="0" notnull_strength="1" unique_strength="1"/>
    <constraint field="guidkey" constraints="2" exp_strength="0" notnull_strength="0" unique_strength="1"/>
    <constraint field="phenomenontime" constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0"/>
    <constraint field="resulttime" constraints="1" exp_strength="0" notnull_strength="1" unique_strength="0"/>
    <constraint field="validtime" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="resultquality" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="result_value" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="result_uri" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="idfoi_obs" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="typeofdata" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
    <constraint field="domain" constraints="0" exp_strength="0" notnull_strength="0" unique_strength="0"/>
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
    <field comment="" expression="attribute(get_feature&#xd;&#xa;&#x9;&#x9;(&#xd;&#xa;&#x9;&#x9;&#x9;'observableproperty',&#xd;&#xa;&#x9;&#x9;&#x9;'guidkey',&#xd;&#xa;&#x9;&#x9;&#x9;&#xd;&#xa;&#x9;&#x9;&#x9;attribute(get_feature&#xd;&#xa;&#x9;&#x9;&#x9;(&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;'featureofinterest_observation',&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;'guidkey',&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&quot;idfoi_obs&quot; &#xd;&#xa;&#x9;&#x9;&#x9;) &#xd;&#xa;&#x9;&#x9;&#x9;,'idobservedproperty'&#xd;&#xa;&#x9;&#x9;&#x9;)&#x9;&#x9;&#xd;&#xa;&#x9;&#x9;) &#xd;&#xa;&#x9;&#x9;,'domain_typeofvalue'&#xd;&#xa;&#x9;)" type="10" subType="0" typeName="string" name="typeofdata" precision="0" length="0"/>
    <field comment="" expression="'Domain Value: '||&#xd;&#xa;IF(&#xd;&#xa;COALESCE(attribute(get_feature&#xd;&#xa;(&#xd;&#xa;&#x9;'observableproperty',&#xd;&#xa;&#x9;'guidkey',&#xd;&#xa;&#x9;&#xd;&#xa;&#x9;COALESCE(attribute(get_feature&#xd;&#xa;&#x9;(&#xd;&#xa;&#x9;&#x9;'featureofinterest_observation',&#xd;&#xa;&#x9;&#x9;'guidkey',&#xd;&#xa;&#x9;&#x9;&quot;idfoi_obs&quot;&#xd;&#xa;&#x9;) &#xd;&#xa;&#x9;,'idobservedproperty'&#xd;&#xa;&#x9;))&#x9;&#x9;&#xd;&#xa;) &#xd;&#xa;,'domain_min'&#xd;&#xa;)) IS NOT NULL,&#xd;&#xa;--True&#xd;&#xa;'Min '||&#xd;&#xa;COALESCE(attribute(get_feature&#xd;&#xa;(&#xd;&#xa;&#x9;'observableproperty',&#xd;&#xa;&#x9;'guidkey',&#xd;&#xa;&#x9;&#xd;&#xa;&#x9;COALESCE(attribute(get_feature&#xd;&#xa;&#x9;(&#xd;&#xa;&#x9;&#x9;'featureofinterest_observation',&#xd;&#xa;&#x9;&#x9;'guidkey',&#xd;&#xa;&#x9;&#x9;&quot;idfoi_obs&quot;&#xd;&#xa;&#x9;) &#xd;&#xa;&#x9;,'idobservedproperty'&#xd;&#xa;&#x9;))&#x9;&#x9;&#xd;&#xa;) &#xd;&#xa;,'domain_min'&#xd;&#xa;))&#xd;&#xa;&#xd;&#xa;|| ' and Max ' ||&#xd;&#xa;COALESCE(attribute(get_feature&#xd;&#xa;(&#xd;&#xa;&#x9;'observableproperty',&#xd;&#xa;&#x9;'guidkey',&#xd;&#xa;&#x9;&#xd;&#xa;&#x9;COALESCE(attribute(get_feature&#xd;&#xa;&#x9;(&#xd;&#xa;&#x9;&#x9;'featureofinterest_observation',&#xd;&#xa;&#x9;&#x9;'guidkey',&#xd;&#xa;&#x9;&#x9;&quot;idfoi_obs&quot;&#xd;&#xa;&#x9;) &#xd;&#xa;&#x9;,'idobservedproperty'&#xd;&#xa;&#x9;))&#x9;&#x9;&#xd;&#xa;) &#xd;&#xa;,'domain_max'&#xd;&#xa;))&#xd;&#xa;--FALSE&#xd;&#xa;, '')&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;||&#xd;&#xa;&#xd;&#xa;IF(&#xd;&#xa;COALESCE(attribute(get_feature&#xd;&#xa;(&#xd;&#xa;&#x9;'unitofmeasure',&#xd;&#xa;&#x9;'guidkey',&#xd;&#xa;&#x9;&#xd;&#xa;&#xd;&#xa;&#x9;&#x9;COALESCE(attribute(get_feature&#xd;&#xa;&#x9;&#x9;(&#xd;&#xa;&#x9;&#x9;&#x9;'observableproperty',&#xd;&#xa;&#x9;&#x9;&#x9;'guidkey',&#xd;&#xa;&#x9;&#x9;&#x9;&#xd;&#xa;&#x9;&#x9;&#x9;COALESCE(attribute(get_feature&#xd;&#xa;&#x9;&#x9;&#x9;(&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;'featureofinterest_observation',&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;'guidkey',&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&quot;idfoi_obs&quot;&#xd;&#xa;&#x9;&#x9;&#x9;) &#xd;&#xa;&#x9;&#x9;&#x9;,'idobservedproperty'&#xd;&#xa;&#x9;&#x9;&#x9;))&#x9;&#x9;&#xd;&#xa;&#x9;&#x9;) &#xd;&#xa;&#x9;&#x9;,'iduom'&#xd;&#xa;&#x9;&#x9;))&#xd;&#xa;) &#xd;&#xa;,'uomsymbol'&#xd;&#xa;)) &#xd;&#xa;&#xd;&#xa;is NOT NULL ,&#xd;&#xa;&#xd;&#xa;--TRUE&#xd;&#xa;' - ' ||&#xd;&#xa;&#xd;&#xa;COALESCE(attribute(get_feature&#xd;&#xa;(&#xd;&#xa;&#x9;'unitofmeasure',&#xd;&#xa;&#x9;'guidkey',&#xd;&#xa;&#x9;&#xd;&#xa;&#xd;&#xa;&#x9;&#x9;COALESCE(attribute(get_feature&#xd;&#xa;&#x9;&#x9;(&#xd;&#xa;&#x9;&#x9;&#x9;'observableproperty',&#xd;&#xa;&#x9;&#x9;&#x9;'guidkey',&#xd;&#xa;&#x9;&#x9;&#x9;&#xd;&#xa;&#x9;&#x9;&#x9;COALESCE(attribute(get_feature&#xd;&#xa;&#x9;&#x9;&#x9;(&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;'featureofinterest_observation',&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;'guidkey',&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&quot;idfoi_obs&quot;&#xd;&#xa;&#x9;&#x9;&#x9;) &#xd;&#xa;&#x9;&#x9;&#x9;,'idobservedproperty'&#xd;&#xa;&#x9;&#x9;&#x9;))&#x9;&#x9;&#xd;&#xa;&#x9;&#x9;) &#xd;&#xa;&#x9;&#x9;,'iduom'&#xd;&#xa;&#x9;&#x9;))&#xd;&#xa;) &#xd;&#xa;,'uomsymbol'&#xd;&#xa;)) ,&#xd;&#xa;--FALSE&#xd;&#xa;' ')" type="10" subType="0" typeName="string" name="domain" precision="0" length="0"/>
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
    <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
      <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
    </labelStyle>
    <attributeEditorField horizontalStretch="0" verticalStretch="0" index="2" name="phenomenontime" showLabel="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
        <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField horizontalStretch="0" verticalStretch="0" index="3" name="resulttime" showLabel="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
        <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField horizontalStretch="0" verticalStretch="0" index="4" name="validtime" showLabel="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
        <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer visibilityExpressionEnabled="1" columnCount="1" collapsed="0" horizontalStretch="0" verticalStretch="0" collapsedExpressionEnabled="0" type="GroupBox" collapsedExpression="" name="Numeric_Value" showLabel="1" visibilityExpression=" &quot;typeofdata&quot;  = 'result_value'&#xa;" groupBox="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
        <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
      <attributeEditorField horizontalStretch="0" verticalStretch="0" index="10" name="domain" showLabel="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
          <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField horizontalStretch="0" verticalStretch="0" index="6" name="result_value" showLabel="0">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
          <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpressionEnabled="1" columnCount="1" collapsed="0" horizontalStretch="0" verticalStretch="0" collapsedExpressionEnabled="0" type="GroupBox" collapsedExpression="" name="Coded_Value" showLabel="1" visibilityExpression=" &quot;typeofdata&quot;  = 'result_uri'" groupBox="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
        <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
      <attributeEditorField horizontalStretch="0" verticalStretch="0" index="7" name="result_uri" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
          <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField horizontalStretch="0" verticalStretch="0" index="8" name="idfoi_obs" showLabel="0">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
        <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField horizontalStretch="0" verticalStretch="0" index="5" name="resultquality" showLabel="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
        <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer visibilityExpressionEnabled="1" columnCount="1" collapsed="0" horizontalStretch="0" verticalStretch="0" collapsedExpressionEnabled="0" type="GroupBox" collapsedExpression="" name="Hidden" showLabel="1" visibilityExpression="1=0" groupBox="1">
      <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
        <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      </labelStyle>
      <attributeEditorField horizontalStretch="0" verticalStretch="0" index="9" name="typeofdata" showLabel="1">
        <labelStyle overrideLabelColor="0" overrideLabelFont="0" labelColor="0,0,0,255">
          <labelFont underline="0" italic="0" style="" bold="0" strikethrough="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field editable="0" name="domain"/>
    <field editable="1" name="guidkey"/>
    <field editable="1" name="id"/>
    <field editable="1" name="idfoi_obs"/>
    <field editable="1" name="phenomenontime"/>
    <field editable="1" name="result_uri"/>
    <field editable="1" name="result_value"/>
    <field editable="1" name="resultquality"/>
    <field editable="1" name="resulttime"/>
    <field editable="0" name="typeofdata"/>
    <field editable="1" name="validtime"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="domain"/>
    <field labelOnTop="0" name="guidkey"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="idfoi_obs"/>
    <field labelOnTop="0" name="phenomenontime"/>
    <field labelOnTop="0" name="result_uri"/>
    <field labelOnTop="0" name="result_value"/>
    <field labelOnTop="0" name="resultquality"/>
    <field labelOnTop="0" name="resulttime"/>
    <field labelOnTop="0" name="typeofdata"/>
    <field labelOnTop="0" name="validtime"/>
  </labelOnTop>
  <reuseLastValue>
    <field reuseLastValue="0" name="domain"/>
    <field reuseLastValue="0" name="guidkey"/>
    <field reuseLastValue="0" name="id"/>
    <field reuseLastValue="0" name="idfoi_obs"/>
    <field reuseLastValue="0" name="phenomenontime"/>
    <field reuseLastValue="0" name="result_uri"/>
    <field reuseLastValue="0" name="result_value"/>
    <field reuseLastValue="0" name="resultquality"/>
    <field reuseLastValue="0" name="resulttime"/>
    <field reuseLastValue="0" name="typeofdata"/>
    <field reuseLastValue="0" name="validtime"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"phenomenontime"</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
