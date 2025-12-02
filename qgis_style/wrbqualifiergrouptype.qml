<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" readOnly="0" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <referencedLayers/>
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
    <field name="wrbversion" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="false" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" value="&quot;collection&quot; IN('wrbversion')" type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="codelist_c31ed647_1b11_42f4_8db6_c48e13994a56" type="QString"/>
            <Option name="LayerName" value="codelist" type="QString"/>
            <Option name="LayerProviderName" value="ogr" type="QString"/>
            <Option name="LayerSource" value="C:/Users/andrea.lachi/Documents/Geopackage_Sicily_Import/GPKG/Sicily_06_New/Sicily_TESTFORM/INSPIRE_SO.gpkg|layername=codelist" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="label" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="qualifierplace" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="false" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" value="&quot;collection&quot; IN('WRBQualifierPlaceValue')" type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="codelist_c31ed647_1b11_42f4_8db6_c48e13994a56" type="QString"/>
            <Option name="LayerName" value="codelist" type="QString"/>
            <Option name="LayerProviderName" value="ogr" type="QString"/>
            <Option name="LayerSource" value="C:/Users/andrea.lachi/Documents/Geopackage_Sicily_Import/GPKG/Sicily_06_New/Sicily_TESTFORM/INSPIRE_SO.gpkg|layername=codelist" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="label" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wrbqualifier" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="false" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" value="CASE &#xa;  WHEN current_value('wrbversion')= 'https://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue'  THEN &quot;collection&quot; IN('WRBQualifierValue') &#xa;  WHEN current_value('wrbversion')= 'http://stats-class.fao.uniroma2.it/WRB/v2014/rsg.html' THEN &quot;collection&quot; IN('WRBQualifierValue2014')  &#xa;  WHEN current_value('wrbversion')= 'https://obrl-soil.github.io/wrbsoil2022/'  THEN &quot;collection&quot; IN('WRBQualifierValue2022')  &#xa;  ELSE 0&#xa;END" type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="codelist_c31ed647_1b11_42f4_8db6_c48e13994a56" type="QString"/>
            <Option name="LayerName" value="codelist" type="QString"/>
            <Option name="LayerProviderName" value="ogr" type="QString"/>
            <Option name="LayerSource" value="C:/Users/andrea.lachi/Documents/Geopackage_Sicily_Import/GPKG/Sicily_06_New/Sicily_TESTFORM/INSPIRE_SO.gpkg|layername=codelist" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="label" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wrbspecifier_1" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" value="CASE &#xa;  WHEN current_value('wrbversion')= 'https://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue'  THEN &quot;collection&quot; IN('WRBSpecifierValue') &#xa;  WHEN current_value('wrbversion')= 'http://stats-class.fao.uniroma2.it/WRB/v2014/rsg.html' THEN &quot;collection&quot; IN('WRBSpecifierValue2014')  &#xa;  WHEN current_value('wrbversion')= 'https://obrl-soil.github.io/wrbsoil2022/'  THEN &quot;collection&quot; IN('WRBSpecifierValue2022')  &#xa;  ELSE 0&#xa;END" type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="codelist_7257b262_7388_468b_a269_2546711c92b6" type="QString"/>
            <Option name="LayerName" value="codelist" type="QString"/>
            <Option name="LayerProviderName" value="ogr" type="QString"/>
            <Option name="LayerSource" value="C:/Users/andrea.lachi/Documents/_INSPIRE_NOV24/INSPIRE_SO.gpkg|layername=codelist" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="label" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wrbspecifier_2" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" type="invalid"/>
            <Option name="FilterExpression" value="CASE &#xa;  WHEN current_value('wrbversion')= 'https://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue'  THEN &quot;collection&quot; IN('WRBSpecifierValue') &#xa;  WHEN current_value('wrbversion')= 'http://stats-class.fao.uniroma2.it/WRB/v2014/rsg.html' THEN &quot;collection&quot; IN('WRBSpecifierValue2014')  &#xa;  WHEN current_value('wrbversion')= 'https://obrl-soil.github.io/wrbsoil2022/'  THEN &quot;collection&quot; IN('WRBSpecifierValue2022')  &#xa;  ELSE 0&#xa;END" type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="codelist_7257b262_7388_468b_a269_2546711c92b6" type="QString"/>
            <Option name="LayerName" value="codelist" type="QString"/>
            <Option name="LayerProviderName" value="ogr" type="QString"/>
            <Option name="LayerSource" value="C:/Users/andrea.lachi/Documents/_INSPIRE_NOV24/INSPIRE_SO.gpkg|layername=codelist" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="label" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="id" index="0"/>
    <alias name="" field="guid" index="1"/>
    <alias name="WRB Version" field="wrbversion" index="2"/>
    <alias name="Qualifier Place" field="qualifierplace" index="3"/>
    <alias name="WRB Qualifier" field="wrbqualifier" index="4"/>
    <alias name="WRB Specifier 1" field="wrbspecifier_1" index="5"/>
    <alias name="WRB Specifier 2" field="wrbspecifier_2" index="6"/>
  </aliases>
  <splitPolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid" policy="DefaultValue"/>
    <policy field="wrbversion" policy="DefaultValue"/>
    <policy field="qualifierplace" policy="DefaultValue"/>
    <policy field="wrbqualifier" policy="DefaultValue"/>
    <policy field="wrbspecifier_1" policy="DefaultValue"/>
    <policy field="wrbspecifier_2" policy="DefaultValue"/>
  </splitPolicies>
  <mergePolicies>
    <policy field="id" policy="DefaultValue"/>
    <policy field="guid" policy="DefaultValue"/>
  </mergePolicies>
  <defaults>
    <default field="id" applyOnUpdate="0" expression=""/>
    <default field="guid" applyOnUpdate="0" expression=""/>
    <default field="wrbversion" applyOnUpdate="0" expression=""/>
    <default field="qualifierplace" applyOnUpdate="0" expression=""/>
    <default field="wrbqualifier" applyOnUpdate="0" expression=""/>
    <default field="wrbspecifier_1" applyOnUpdate="0" expression=""/>
    <default field="wrbspecifier_2" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="1" notnull_strength="1" field="id" constraints="3" exp_strength="0"/>
    <constraint unique_strength="1" notnull_strength="0" field="guid" constraints="2" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="wrbversion" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="qualifierplace" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="1" field="wrbqualifier" constraints="1" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="wrbspecifier_1" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="wrbspecifier_2" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="id"/>
    <constraint exp="" desc="" field="guid"/>
    <constraint exp="" desc="" field="wrbversion"/>
    <constraint exp="" desc="" field="qualifierplace"/>
    <constraint exp="" desc="" field="wrbqualifier"/>
    <constraint exp="" desc="" field="wrbspecifier_1"/>
    <constraint exp="" desc="" field="wrbspecifier_2"/>
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
    <attributeEditorField name="wrbversion" verticalStretch="0" showLabel="1" index="2" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="qualifierplace" verticalStretch="0" showLabel="1" index="3" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="wrbqualifier" verticalStretch="0" showLabel="1" index="4" horizontalStretch="0">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer groupBox="1" name="Specifier" verticalStretch="0" visibilityExpressionEnabled="0" showLabel="1" type="GroupBox" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
        <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
      </labelStyle>
      <attributeEditorField name="wrbspecifier_1" verticalStretch="0" showLabel="1" index="5" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="wrbspecifier_2" verticalStretch="0" showLabel="1" index="6" horizontalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255,rgb:0,0,0,1" overrideLabelColor="0">
          <labelFont style="" bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" strikethrough="0" underline="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field name="guid" editable="1"/>
    <field name="guidkey" editable="1"/>
    <field name="id" editable="1"/>
    <field name="qualifierplace" editable="1"/>
    <field name="wrbqualifier" editable="1"/>
    <field name="wrbspecifier_1" editable="1"/>
    <field name="wrbspecifier_2" editable="1"/>
    <field name="wrbversion" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="guid"/>
    <field labelOnTop="0" name="guidkey"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="qualifierplace"/>
    <field labelOnTop="0" name="wrbqualifier"/>
    <field labelOnTop="0" name="wrbspecifier_1"/>
    <field labelOnTop="0" name="wrbspecifier_2"/>
    <field labelOnTop="0" name="wrbversion"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="guid" reuseLastValue="0"/>
    <field name="guidkey" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="qualifierplace" reuseLastValue="0"/>
    <field name="wrbqualifier" reuseLastValue="0"/>
    <field name="wrbspecifier_1" reuseLastValue="0"/>
    <field name="wrbspecifier_2" reuseLastValue="0"/>
    <field name="wrbversion" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>COALESCE( if( "wrbversion" = 'https://inspire.ec.europa.eu/codelist/WRBReferenceSoilGroupValue','2006',if( "wrbversion" = 'http://stats-class.fao.uniroma2.it/WRB/v2014/rsg.html','2014','2022')))&#xd;
|| ' '||&#xd;
COALESCE(if( "qualifierplace" = 'http://inspire.ec.europa.eu/codelist/WRBQualifierPlaceValue/prefix','P','S'))&#xd;
|| ' '||&#xd;
COALESCE(if ("wrbspecifier_1",regexp_substr(regexp_substr("wrbspecifier_1", '[^/]+$'), '[^#]+$'),''))&#xd;
|| ' '||&#xd;
COALESCE(if ("wrbspecifier_2",regexp_substr(regexp_substr("wrbspecifier_2", '[^/]+$'), '[^#]+$'),''))&#xd;
|| ' '||&#xd;
COALESCE(if ("wrbqualifier",regexp_substr(regexp_substr("wrbqualifier", '[^/]+$'), '[^#]+$'),''))&#xd;
&#xd;
</previewExpression>
  <layerGeometryType>4</layerGeometryType>
</qgis>
