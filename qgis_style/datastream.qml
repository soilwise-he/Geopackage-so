<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.44.0-Solothurn" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Actions|Relations" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <renderer-v2 enableorderby="0" symbollevels="0" referencescale="-1" forceraster="0" type="singleSymbol">
    <symbols>
      <symbol force_rhr="0" frame_rate="10" clip_to_extent="1" name="0" is_animated="0" type="fill" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer id="{7f0b70e6-8da6-47ea-8a88-3181ed329ccb}" class="SimpleFill" locked="0" enabled="1" pass="0">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="133,182,111,255,rgb:0.5215686,0.7137255,0.4352941,1" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255,rgb:0.1372549,0.1372549,0.1372549,1" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="0.26" name="outline_width" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="solid" name="style" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
    <data-defined-properties>
      <Option type="Map">
        <Option value="" name="name" type="QString"/>
        <Option name="properties"/>
        <Option value="collection" name="type" type="QString"/>
      </Option>
    </data-defined-properties>
  </renderer-v2>
  <selection mode="Default">
    <selectionColor invalid="1"/>
    <selectionSymbol>
      <symbol force_rhr="0" frame_rate="10" clip_to_extent="1" name="" is_animated="0" type="fill" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer id="{a71490d4-95dd-43be-8147-23b7629c41f5}" class="SimpleFill" locked="0" enabled="1" pass="0">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="0,0,255,255,rgb:0,0,1,1" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255,rgb:0.1372549,0.1372549,0.1372549,1" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="0.26" name="outline_width" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="solid" name="style" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </selectionSymbol>
  </selection>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <referencedLayers>
    <relation id="observedproperty_datastream_6" name="observedproperty_datastream_6" dataSource="./SW_21.gpkg|layername=observedproperty" layerName="observedproperty" providerKey="ogr" referencingLayer="datastream_38f6b4da_7026_42b3_b36d_3cb5ad35fa5d" referencedLayer="observedproperty_f0fc863e_b80d_4fd4_87ad_e218b65dfabe" strength="Association" layerId="observedproperty_f0fc863e_b80d_4fd4_87ad_e218b65dfabe">
      <fieldRef referencingField="guid_observedproperty" referencedField="guid"/>
    </relation>
    <relation id="observingprocedure_datastream_5" name="observingprocedure_datastream_5" dataSource="./SW_21.gpkg|layername=observingprocedure" layerName="observingprocedure" providerKey="ogr" referencingLayer="datastream_38f6b4da_7026_42b3_b36d_3cb5ad35fa5d" referencedLayer="observingprocedure_6523f712_8a82_4123_ad3f_2a1c628cbcd4" strength="Association" layerId="observingprocedure_6523f712_8a82_4123_ad3f_2a1c628cbcd4">
      <fieldRef referencingField="guid_observingprocedure" referencedField="guid"/>
    </relation>
    <relation id="profileelement_datastream_2" name="profileelement_datastream_2" dataSource="./SW_21.gpkg|layername=profileelement" layerName="profileelement" providerKey="ogr" referencingLayer="datastream_38f6b4da_7026_42b3_b36d_3cb5ad35fa5d" referencedLayer="profileelement_94912eb0_69a6_4f78_a28e_7894952bc181" strength="Association" layerId="profileelement_94912eb0_69a6_4f78_a28e_7894952bc181">
      <fieldRef referencingField="guid_profileelement" referencedField="guid"/>
    </relation>
    <relation id="sensor_datastream_7" name="sensor_datastream_7" dataSource="./SW_21.gpkg|layername=sensor" layerName="sensor" providerKey="ogr" referencingLayer="datastream_38f6b4da_7026_42b3_b36d_3cb5ad35fa5d" referencedLayer="sensor_72a0d300_a2f1_4f5d_8136_1c011cef879e" strength="Association" layerId="sensor_72a0d300_a2f1_4f5d_8136_1c011cef879e">
      <fieldRef referencingField="guid_sensor" referencedField="guid"/>
    </relation>
    <relation id="soilderivedobject_datastream" name="soilderivedobject_datastream" dataSource="./SW_21.gpkg|layername=soilderivedobject" layerName="soilderivedobject" providerKey="ogr" referencingLayer="datastream_38f6b4da_7026_42b3_b36d_3cb5ad35fa5d" referencedLayer="soilderivedobject_4bc08aba_7b79_4815_9abb_1d51b420659b" strength="Association" layerId="soilderivedobject_4bc08aba_7b79_4815_9abb_1d51b420659b">
      <fieldRef referencingField="guid_soilderivedobject" referencedField="guid"/>
    </relation>
    <relation id="soilprofile_datastream_3" name="soilprofile_datastream_3" dataSource="./SW_21.gpkg|layername=soilprofile" layerName="soilprofile" providerKey="ogr" referencingLayer="datastream_38f6b4da_7026_42b3_b36d_3cb5ad35fa5d" referencedLayer="soilprofile_74d36ec1_9358_46be_8207_bcb134bb4e0d" strength="Association" layerId="soilprofile_74d36ec1_9358_46be_8207_bcb134bb4e0d">
      <fieldRef referencingField="guid_soilprofile" referencedField="guid"/>
    </relation>
    <relation id="soilsite_datastream_4" name="soilsite_datastream_4" dataSource="./SW_21.gpkg|layername=soilsite" layerName="soilsite" providerKey="ogr" referencingLayer="datastream_38f6b4da_7026_42b3_b36d_3cb5ad35fa5d" referencedLayer="soilsite_523bd55e_7e56_459b_ba63_7681210804e7" strength="Association" layerId="soilsite_523bd55e_7e56_459b_ba63_7681210804e7">
      <fieldRef referencingField="guid_soilsite" referencedField="guid"/>
    </relation>
    <relation id="thing_datastream_8" name="thing_datastream_8" dataSource="./SW_21.gpkg|layername=thing" layerName="thing" providerKey="ogr" referencingLayer="datastream_38f6b4da_7026_42b3_b36d_3cb5ad35fa5d" referencedLayer="thing_43cf0218_65cb_41df_b76d_56c8680aaf1c" strength="Association" layerId="thing_43cf0218_65cb_41df_b76d_56c8680aaf1c">
      <fieldRef referencingField="guid_thing" referencedField="guid"/>
    </relation>
    <relation id="unitofmeasure_datastream_9" name="unitofmeasure_datastream_9" dataSource="./SW_21.gpkg|layername=unitofmeasure" layerName="unitofmeasure" providerKey="ogr" referencingLayer="datastream_38f6b4da_7026_42b3_b36d_3cb5ad35fa5d" referencedLayer="unitofmeasure_9f91415c_0005_40d2_848e_5a01ccb0d1c9" strength="Association" layerId="unitofmeasure_9f91415c_0005_40d2_848e_5a01ccb0d1c9">
      <fieldRef referencingField="code_unitofmeasure" referencedField="code"/>
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
    <field name="name" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="definition" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="description" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="type" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="false" name="AllowNull" type="bool"/>
            <Option value="2" name="CompleterMatchFlags" type="int"/>
            <Option name="Description" type="invalid"/>
            <Option value="false" name="DisplayGroupName" type="bool"/>
            <Option value="&quot;collection&quot; IN('resultType') " name="FilterExpression" type="QString"/>
            <Option name="Group" type="invalid"/>
            <Option value="id" name="Key" type="QString"/>
            <Option value="codelist_9d9c12b3_fa86_4a58_a6ce_a6f7279b4b2e" name="Layer" type="QString"/>
            <Option value="codelist" name="LayerName" type="QString"/>
            <Option value="ogr" name="LayerProviderName" type="QString"/>
            <Option value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_21.gpkg|layername=codelist" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="false" name="OrderByDescending" type="bool"/>
            <Option value="false" name="OrderByField" type="bool"/>
            <Option value="id" name="OrderByFieldName" type="QString"/>
            <Option value="true" name="OrderByKey" type="bool"/>
            <Option value="false" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="label" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="codespace" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowMulti" type="bool"/>
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2" name="CompleterMatchFlags" type="int"/>
            <Option name="Description" type="invalid"/>
            <Option value="false" name="DisplayGroupName" type="bool"/>
            <Option value="&quot;collection&quot; IN('Category')" name="FilterExpression" type="QString"/>
            <Option name="Group" type="invalid"/>
            <Option value="id" name="Key" type="QString"/>
            <Option value="codelist_9d9c12b3_fa86_4a58_a6ce_a6f7279b4b2e" name="Layer" type="QString"/>
            <Option value="codelist" name="LayerName" type="QString"/>
            <Option value="ogr" name="LayerProviderName" type="QString"/>
            <Option value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_21.gpkg|layername=codelist" name="LayerSource" type="QString"/>
            <Option value="1" name="NofColumns" type="int"/>
            <Option value="false" name="OrderByDescending" type="bool"/>
            <Option value="false" name="OrderByField" type="bool"/>
            <Option value="id" name="OrderByFieldName" type="QString"/>
            <Option value="true" name="OrderByKey" type="bool"/>
            <Option value="false" name="OrderByValue" type="bool"/>
            <Option value="false" name="UseCompleter" type="bool"/>
            <Option value="label" name="Value" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="code_unitofmeasure" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="true" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_21.gpkg|layername=unitofmeasure" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="unitofmeasure_9f91415c_0005_40d2_848e_5a01ccb0d1c9" name="ReferencedLayerId" type="QString"/>
            <Option value="unitofmeasure" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="unitofmeasure_datastream_9" name="Relation" type="QString"/>
            <Option value="false" name="ShowForm" type="bool"/>
            <Option value="true" name="ShowOpenFormButton" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="value_min" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="value_max" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="phenomenontime_start" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="true" name="allow_null" type="bool"/>
            <Option value="true" name="calendar_popup" type="bool"/>
            <Option value="d MMM yyyy HH:mm:ss" name="display_format" type="QString"/>
            <Option value="yyyy-MM-dd HH:mm:ss" name="field_format" type="QString"/>
            <Option value="false" name="field_format_overwrite" type="bool"/>
            <Option value="false" name="field_iso_format" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="phenomenontime_end" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="true" name="allow_null" type="bool"/>
            <Option value="true" name="calendar_popup" type="bool"/>
            <Option value="d MMM yyyy HH:mm:ss" name="display_format" type="QString"/>
            <Option value="yyyy-MM-dd HH:mm:ss" name="field_format" type="QString"/>
            <Option value="false" name="field_format_overwrite" type="bool"/>
            <Option value="false" name="field_iso_format" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="resulttime_start" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="true" name="allow_null" type="bool"/>
            <Option value="true" name="calendar_popup" type="bool"/>
            <Option value="d MMM yyyy HH:mm:ss" name="display_format" type="QString"/>
            <Option value="yyyy-MM-dd HH:mm:ss" name="field_format" type="QString"/>
            <Option value="false" name="field_format_overwrite" type="bool"/>
            <Option value="false" name="field_iso_format" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="resulttime_end" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="true" name="allow_null" type="bool"/>
            <Option value="true" name="calendar_popup" type="bool"/>
            <Option value="d MMM yyyy HH:mm:ss" name="display_format" type="QString"/>
            <Option value="yyyy-MM-dd HH:mm:ss" name="field_format" type="QString"/>
            <Option value="false" name="field_format_overwrite" type="bool"/>
            <Option value="false" name="field_iso_format" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="properties" configurationFlags="NoFlag">
      <editWidget type="KeyValue">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="guid_thing" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="false" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=thing" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="thing_75af3248_c17c_426e_8a94_9ad91d6f9acf" name="ReferencedLayerId" type="QString"/>
            <Option value="thing" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="thing_datastream_8" name="Relation" type="QString"/>
            <Option value="false" name="ShowForm" type="bool"/>
            <Option value="true" name="ShowOpenFormButton" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_sensor" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="false" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=sensor" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="sensor_882086b2_0ca1_4e1e_92bd_1ed513943846" name="ReferencedLayerId" type="QString"/>
            <Option value="sensor" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="sensor_datastream_7" name="Relation" type="QString"/>
            <Option value="false" name="ShowForm" type="bool"/>
            <Option value="true" name="ShowOpenFormButton" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_observedproperty" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="false" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=observedproperty" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="observedproperty_ca40a68d_fb6f_4bc5_a570_06e1a6415064" name="ReferencedLayerId" type="QString"/>
            <Option value="observedproperty" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="observedproperty_datastream_6" name="Relation" type="QString"/>
            <Option value="false" name="ShowForm" type="bool"/>
            <Option value="true" name="ShowOpenFormButton" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_observingprocedure" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="true" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=observingprocedure" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="observingprocedure_1aae3844_6744_4f5a_9c0e_6b5f07ffea94" name="ReferencedLayerId" type="QString"/>
            <Option value="observingprocedure" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="observingprocedure_datastream_5" name="Relation" type="QString"/>
            <Option value="false" name="ShowForm" type="bool"/>
            <Option value="true" name="ShowOpenFormButton" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_soilsite" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="true" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=soilsite" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="soilsite_478dc2f4_41c8_48ca_959a_80cbce061ab3" name="ReferencedLayerId" type="QString"/>
            <Option value="soilsite" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="soilsite_datastream_4" name="Relation" type="QString"/>
            <Option value="false" name="ShowForm" type="bool"/>
            <Option value="true" name="ShowOpenFormButton" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_soilprofile" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="true" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=soilprofile" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="soilprofile_216eea7c_d015_4117_8c9f_df0b7692b5a7" name="ReferencedLayerId" type="QString"/>
            <Option value="soilprofile" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="soilprofile_datastream_3" name="Relation" type="QString"/>
            <Option value="false" name="ShowForm" type="bool"/>
            <Option value="true" name="ShowOpenFormButton" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_profileelement" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="true" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=profileelement" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="profileelement_c30e6a23_64c8_4588_a32e_c91c0209d0a3" name="ReferencedLayerId" type="QString"/>
            <Option value="profileelement" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="profileelement_datastream_2" name="Relation" type="QString"/>
            <Option value="false" name="ShowForm" type="bool"/>
            <Option value="true" name="ShowOpenFormButton" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_soilderivedobject" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option value="false" name="AllowAddFeatures" type="bool"/>
            <Option value="true" name="AllowNULL" type="bool"/>
            <Option value="true" name="FetchLimitActive" type="bool"/>
            <Option value="100" name="FetchLimitNumber" type="int"/>
            <Option value="false" name="MapIdentification" type="bool"/>
            <Option value="false" name="ReadOnly" type="bool"/>
            <Option value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=soilderivedobject" name="ReferencedLayerDataSource" type="QString"/>
            <Option value="soilderivedobject_360aac90_af34_468c_953d_c1813d5ee56a" name="ReferencedLayerId" type="QString"/>
            <Option value="soilderivedobject" name="ReferencedLayerName" type="QString"/>
            <Option value="ogr" name="ReferencedLayerProviderKey" type="QString"/>
            <Option value="soilderivedobject_datastream" name="Relation" type="QString"/>
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
    <alias name="Name" index="2" field="name"/>
    <alias name="Definition   " index="3" field="definition"/>
    <alias name="Description" index="4" field="description"/>
    <alias name="Type" index="5" field="type"/>
    <alias name="Codespace" index="6" field="codespace"/>
    <alias name="Unit Of Measure" index="7" field="code_unitofmeasure"/>
    <alias name="Min (optional)" index="8" field="value_min"/>
    <alias name="Max (optional)" index="9" field="value_max"/>
    <alias name="Start of Phenomenon" index="10" field="phenomenontime_start"/>
    <alias name="End of Phenomenon (mandatory)" index="11" field="phenomenontime_end"/>
    <alias name="Result Time Start" index="12" field="resulttime_start"/>
    <alias name="Result Time End  (mandatory)" index="13" field="resulttime_end"/>
    <alias name="Properties" index="14" field="properties"/>
    <alias name="Thing" index="15" field="guid_thing"/>
    <alias name="Sensor" index="16" field="guid_sensor"/>
    <alias name="Observed Property" index="17" field="guid_observedproperty"/>
    <alias name="Observing Procedure" index="18" field="guid_observingprocedure"/>
    <alias name="Soil Site" index="19" field="guid_soilsite"/>
    <alias name="Soil Profile" index="20" field="guid_soilprofile"/>
    <alias name="Profile Element" index="21" field="guid_profileelement"/>
    <alias name="Soil Derived Object" index="22" field="guid_soilderivedobject"/>
  </aliases>
  <defaults>
    <default field="id" applyOnUpdate="0" expression=""/>
    <default field="guid" applyOnUpdate="0" expression=""/>
    <default field="name" applyOnUpdate="0" expression=""/>
    <default field="definition" applyOnUpdate="0" expression=""/>
    <default field="description" applyOnUpdate="0" expression=""/>
    <default field="type" applyOnUpdate="0" expression=""/>
    <default field="codespace" applyOnUpdate="1" expression="&#xd;&#xa;CASE &#xd;&#xa;  WHEN &quot;type&quot; IN ('Quantity','Boolean','Count','Text') THEN NULL&#xd;&#xa;  ELSE &quot;codespace&quot;&#xd;&#xa;END&#xd;&#xa;"/>
    <default field="code_unitofmeasure" applyOnUpdate="1" expression="CASE &#xd;&#xa;  WHEN &quot;type&quot; IN ('Category','Boolean','Count','Text') THEN NULL&#xd;&#xa;  ELSE &quot;code_unitofmeasure&quot;&#xd;&#xa;END&#xd;&#xa;"/>
    <default field="value_min" applyOnUpdate="1" expression="CASE &#xd;&#xa;  WHEN &quot;type&quot; IN ('Category','Boolean','Text') THEN NULL&#xd;&#xa;  ELSE &quot;value_min&quot;&#xd;&#xa;END&#xd;&#xa;"/>
    <default field="value_max" applyOnUpdate="1" expression="CASE &#xd;&#xa;  WHEN &quot;type&quot; IN ('Category','Boolean','Text') THEN NULL&#xd;&#xa;  ELSE &quot;value_max&quot;&#xd;&#xa;END&#xd;&#xa;"/>
    <default field="phenomenontime_start" applyOnUpdate="0" expression=""/>
    <default field="phenomenontime_end" applyOnUpdate="0" expression=""/>
    <default field="resulttime_start" applyOnUpdate="0" expression=""/>
    <default field="resulttime_end" applyOnUpdate="0" expression=""/>
    <default field="properties" applyOnUpdate="0" expression=""/>
    <default field="guid_thing" applyOnUpdate="0" expression=""/>
    <default field="guid_sensor" applyOnUpdate="0" expression=""/>
    <default field="guid_observedproperty" applyOnUpdate="0" expression=""/>
    <default field="guid_observingprocedure" applyOnUpdate="0" expression=""/>
    <default field="guid_soilsite" applyOnUpdate="0" expression=""/>
    <default field="guid_soilprofile" applyOnUpdate="0" expression=""/>
    <default field="guid_profileelement" applyOnUpdate="0" expression=""/>
    <default field="guid_soilderivedobject" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint field="id" notnull_strength="1" unique_strength="1" constraints="3" exp_strength="0"/>
    <constraint field="guid" notnull_strength="0" unique_strength="1" constraints="2" exp_strength="0"/>
    <constraint field="name" notnull_strength="1" unique_strength="0" constraints="1" exp_strength="0"/>
    <constraint field="definition" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="description" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="type" notnull_strength="1" unique_strength="0" constraints="1" exp_strength="0"/>
    <constraint field="codespace" notnull_strength="0" unique_strength="0" constraints="4" exp_strength="2"/>
    <constraint field="code_unitofmeasure" notnull_strength="0" unique_strength="0" constraints="4" exp_strength="2"/>
    <constraint field="value_min" notnull_strength="0" unique_strength="0" constraints="4" exp_strength="2"/>
    <constraint field="value_max" notnull_strength="0" unique_strength="0" constraints="4" exp_strength="2"/>
    <constraint field="phenomenontime_start" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="phenomenontime_end" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="resulttime_start" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="resulttime_end" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="properties" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="guid_thing" notnull_strength="1" unique_strength="0" constraints="1" exp_strength="0"/>
    <constraint field="guid_sensor" notnull_strength="1" unique_strength="0" constraints="1" exp_strength="0"/>
    <constraint field="guid_observedproperty" notnull_strength="1" unique_strength="0" constraints="1" exp_strength="0"/>
    <constraint field="guid_observingprocedure" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="guid_soilsite" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="guid_soilprofile" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="guid_profileelement" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="guid_soilderivedobject" notnull_strength="0" unique_strength="0" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="id" desc=""/>
    <constraint exp="" field="guid" desc=""/>
    <constraint exp="" field="name" desc=""/>
    <constraint exp="" field="definition" desc=""/>
    <constraint exp="" field="description" desc=""/>
    <constraint exp="" field="type" desc=""/>
    <constraint exp="CASE &#xd;&#xa;  WHEN &quot;type&quot; IN ('Quantity','Boolean','Count','Text') THEN NULL&#xd;&#xa;  ELSE &quot;codespace&quot;&#xd;&#xa;END&#xd;&#xa;" field="codespace" desc=""/>
    <constraint exp="CASE &#xd;&#xa;  WHEN &quot;type&quot; IN ('Category','Boolean','Count','Text') THEN NULL&#xd;&#xa;  ELSE &quot;code_unitofmeasure&quot;&#xd;&#xa;END" field="code_unitofmeasure" desc=""/>
    <constraint exp="CASE &#xd;&#xa;  WHEN &quot;type&quot; IN ('Category','Boolean','Text') THEN NULL&#xd;&#xa;  ELSE &quot;value_min&quot;&#xd;&#xa;END&#xd;&#xa;" field="value_min" desc="Optional field‑level validation check; failure does not block insert/update"/>
    <constraint exp="CASE &#xd;&#xa;  WHEN &quot;type&quot; IN ('Category','Boolean','Text') THEN NULL&#xd;&#xa;  ELSE &quot;value_max&quot;&#xd;&#xa;END&#xd;&#xa;" field="value_max" desc="Optional field‑level validation check; failure does not block insert/update"/>
    <constraint exp="" field="phenomenontime_start" desc=""/>
    <constraint exp="" field="phenomenontime_end" desc=""/>
    <constraint exp="" field="resulttime_start" desc=""/>
    <constraint exp="" field="resulttime_end" desc=""/>
    <constraint exp="" field="properties" desc=""/>
    <constraint exp="" field="guid_thing" desc=""/>
    <constraint exp="" field="guid_sensor" desc=""/>
    <constraint exp="" field="guid_observedproperty" desc=""/>
    <constraint exp="" field="guid_observingprocedure" desc=""/>
    <constraint exp="" field="guid_soilsite" desc=""/>
    <constraint exp="" field="guid_soilprofile" desc=""/>
    <constraint exp="" field="guid_profileelement" desc=""/>
    <constraint exp="" field="guid_soilderivedobject" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
    <actionsetting isEnabledOnlyWhenEditable="0" action="[%definition%]" id="{48dbe2ff-cae4-4548-b815-723f73677ab4}" name="Search on web based on attribute's value" shortTitle="Go to Page" icon="" capture="0" type="5" notificationMessage="">
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
  </attributeactions>
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
    <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
      <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
    </labelStyle>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="ID" groupBox="1" collapsed="1" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorField verticalStretch="0" name="id" index="0" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField verticalStretch="0" name="guid" index="1" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField verticalStretch="0" name="name" index="2" showLabel="1" horizontalStretch="0">
      <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="Definition" groupBox="0" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" type="Row" showLabel="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorField verticalStretch="0" name="definition" index="3" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorAction verticalStretch="0" name="{48dbe2ff-cae4-4548-b815-723f73677ab4}" showLabel="1" ActionUUID="{48dbe2ff-cae4-4548-b815-723f73677ab4}" horizontalStretch="0">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorAction>
    </attributeEditorContainer>
    <attributeEditorField verticalStretch="0" name="description" index="4" showLabel="1" horizontalStretch="0">
      <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="Result Type" groupBox="1" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorField verticalStretch="0" name="type" index="5" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="1" name="" groupBox="0" collapsed="0" visibilityExpression="  &quot;type&quot; = 'Quantity'" collapsedExpressionEnabled="0" type="Row" showLabel="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
        <attributeEditorField verticalStretch="0" name="code_unitofmeasure" index="7" showLabel="1" horizontalStretch="0">
          <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField verticalStretch="0" name="value_min" index="8" showLabel="1" horizontalStretch="0">
          <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField verticalStretch="0" name="value_max" index="9" showLabel="1" horizontalStretch="0">
          <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
      <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="1" name="" groupBox="0" collapsed="0" visibilityExpression="  &quot;type&quot; = 'Category'" collapsedExpressionEnabled="0" type="Row" showLabel="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
        <attributeEditorField verticalStretch="0" name="codespace" index="6" showLabel="1" horizontalStretch="0">
          <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
      <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="1" name="" groupBox="0" collapsed="0" visibilityExpression="  &quot;type&quot; = 'Boolean'" collapsedExpressionEnabled="0" type="Row" showLabel="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorContainer>
      <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="1" name="" groupBox="0" collapsed="0" visibilityExpression="  &quot;type&quot; = 'Count'" collapsedExpressionEnabled="0" type="Row" showLabel="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
        <attributeEditorField verticalStretch="0" name="value_min" index="8" showLabel="1" horizontalStretch="0">
          <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField verticalStretch="0" name="value_max" index="9" showLabel="1" horizontalStretch="0">
          <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="Phenomenon Time" groupBox="1" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorField verticalStretch="0" name="phenomenontime_start" index="10" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="1" name="End" groupBox="0" collapsed="0" visibilityExpression=" &quot;phenomenontime_start&quot; is not NULL" collapsedExpressionEnabled="0" type="Row" showLabel="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
        <attributeEditorField verticalStretch="0" name="phenomenontime_end" index="11" showLabel="1" horizontalStretch="0">
          <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="Result Time" groupBox="1" collapsed="0" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorField verticalStretch="0" name="resulttime_start" index="12" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="1" name="End" groupBox="0" collapsed="0" visibilityExpression=" &quot;resulttime_start&quot; is not NULL" collapsedExpressionEnabled="0" type="Row" showLabel="0" horizontalStretch="0" columnCount="1" collapsedExpression="">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
        <attributeEditorField verticalStretch="0" name="resulttime_end" index="13" showLabel="1" horizontalStretch="0">
          <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="Properties" groupBox="1" collapsed="1" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorField verticalStretch="0" name="properties" index="14" showLabel="0" horizontalStretch="0">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="Feature" groupBox="1" collapsed="1" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorField verticalStretch="0" name="guid_soilsite" index="19" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField verticalStretch="0" name="guid_soilprofile" index="20" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField verticalStretch="0" name="guid_profileelement" index="21" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField verticalStretch="0" name="guid_soilderivedobject" index="22" showLabel="1" horizontalStretch="0">
        <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField verticalStretch="0" name="guid_thing" index="15" showLabel="1" horizontalStretch="0">
      <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField verticalStretch="0" name="guid_sensor" index="16" showLabel="1" horizontalStretch="0">
      <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField verticalStretch="0" name="guid_observedproperty" index="17" showLabel="1" horizontalStretch="0">
      <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField verticalStretch="0" name="guid_observingprocedure" index="18" showLabel="1" horizontalStretch="0">
      <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer verticalStretch="0" visibilityExpressionEnabled="0" name="Observation" groupBox="1" collapsed="1" visibilityExpression="" collapsedExpressionEnabled="0" type="GroupBox" showLabel="1" horizontalStretch="0" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont bold="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" underline="0" strikethrough="0" style=""/>
      </labelStyle>
      <attributeEditorRelation verticalStretch="0" relationWidgetTypeId="relation_editor" nmRelationId="" name="datastream_observation" relation="datastream_observation" forceSuppressFormPopup="0" showLabel="0" horizontalStretch="0" label="">
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
  </attributeEditorForm>
  <editable>
    <field name="code_unitofmeasure" editable="1"/>
    <field name="codespace" editable="1"/>
    <field name="definition" editable="1"/>
    <field name="description" editable="1"/>
    <field name="guid" editable="0"/>
    <field name="guid_observedproperty" editable="1"/>
    <field name="guid_observingprocedure" editable="1"/>
    <field name="guid_profileelement" editable="1"/>
    <field name="guid_sensor" editable="1"/>
    <field name="guid_soilderivedobject" editable="1"/>
    <field name="guid_soilprofile" editable="1"/>
    <field name="guid_soilsite" editable="1"/>
    <field name="guid_thing" editable="1"/>
    <field name="guidkey" editable="1"/>
    <field name="id" editable="0"/>
    <field name="idobservedproperty" editable="1"/>
    <field name="idobservingprocedure" editable="1"/>
    <field name="idprofileelement" editable="1"/>
    <field name="idsensor" editable="1"/>
    <field name="idsoilderivedobject" editable="1"/>
    <field name="idsoilprofile" editable="1"/>
    <field name="idsoilsite" editable="1"/>
    <field name="idthing" editable="1"/>
    <field name="iduom" editable="1"/>
    <field name="name" editable="1"/>
    <field name="phenomenontime_end" editable="1"/>
    <field name="phenomenontime_start" editable="1"/>
    <field name="properties" editable="1"/>
    <field name="resulttime_end" editable="1"/>
    <field name="resulttime_start" editable="1"/>
    <field name="type" editable="1"/>
    <field name="value_max" editable="1"/>
    <field name="value_min" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="code_unitofmeasure" labelOnTop="0"/>
    <field name="codespace" labelOnTop="0"/>
    <field name="definition" labelOnTop="0"/>
    <field name="description" labelOnTop="0"/>
    <field name="guid" labelOnTop="0"/>
    <field name="guid_observedproperty" labelOnTop="0"/>
    <field name="guid_observingprocedure" labelOnTop="0"/>
    <field name="guid_profileelement" labelOnTop="0"/>
    <field name="guid_sensor" labelOnTop="0"/>
    <field name="guid_soilderivedobject" labelOnTop="0"/>
    <field name="guid_soilprofile" labelOnTop="0"/>
    <field name="guid_soilsite" labelOnTop="0"/>
    <field name="guid_thing" labelOnTop="0"/>
    <field name="guidkey" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="idobservedproperty" labelOnTop="0"/>
    <field name="idobservingprocedure" labelOnTop="0"/>
    <field name="idprofileelement" labelOnTop="0"/>
    <field name="idsensor" labelOnTop="0"/>
    <field name="idsoilderivedobject" labelOnTop="0"/>
    <field name="idsoilprofile" labelOnTop="0"/>
    <field name="idsoilsite" labelOnTop="0"/>
    <field name="idthing" labelOnTop="0"/>
    <field name="iduom" labelOnTop="0"/>
    <field name="name" labelOnTop="0"/>
    <field name="phenomenontime_end" labelOnTop="0"/>
    <field name="phenomenontime_start" labelOnTop="0"/>
    <field name="properties" labelOnTop="0"/>
    <field name="resulttime_end" labelOnTop="0"/>
    <field name="resulttime_start" labelOnTop="0"/>
    <field name="type" labelOnTop="0"/>
    <field name="value_max" labelOnTop="0"/>
    <field name="value_min" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="code_unitofmeasure" reuseLastValue="0"/>
    <field name="codespace" reuseLastValue="0"/>
    <field name="definition" reuseLastValue="0"/>
    <field name="description" reuseLastValue="0"/>
    <field name="guid" reuseLastValue="0"/>
    <field name="guid_observedproperty" reuseLastValue="0"/>
    <field name="guid_observingprocedure" reuseLastValue="0"/>
    <field name="guid_profileelement" reuseLastValue="0"/>
    <field name="guid_sensor" reuseLastValue="0"/>
    <field name="guid_soilderivedobject" reuseLastValue="0"/>
    <field name="guid_soilprofile" reuseLastValue="0"/>
    <field name="guid_soilsite" reuseLastValue="0"/>
    <field name="guid_thing" reuseLastValue="0"/>
    <field name="guidkey" reuseLastValue="0"/>
    <field name="id" reuseLastValue="0"/>
    <field name="idobservedproperty" reuseLastValue="0"/>
    <field name="idobservingprocedure" reuseLastValue="0"/>
    <field name="idprofileelement" reuseLastValue="0"/>
    <field name="idsensor" reuseLastValue="0"/>
    <field name="idsoilderivedobject" reuseLastValue="0"/>
    <field name="idsoilprofile" reuseLastValue="0"/>
    <field name="idsoilsite" reuseLastValue="0"/>
    <field name="idthing" reuseLastValue="0"/>
    <field name="iduom" reuseLastValue="0"/>
    <field name="name" reuseLastValue="0"/>
    <field name="phenomenontime_end" reuseLastValue="0"/>
    <field name="phenomenontime_start" reuseLastValue="0"/>
    <field name="properties" reuseLastValue="0"/>
    <field name="resulttime_end" reuseLastValue="0"/>
    <field name="resulttime_start" reuseLastValue="0"/>
    <field name="type" reuseLastValue="0"/>
    <field name="value_max" reuseLastValue="0"/>
    <field name="value_min" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets>
    <widget name="datastream_observation">
      <config type="Map">
        <Option value="false" name="force-suppress-popup" type="bool"/>
        <Option value="" name="nm-rel" type="QString"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"name"</previewExpression>
  <layerGeometryType>2</layerGeometryType>
</qgis>
