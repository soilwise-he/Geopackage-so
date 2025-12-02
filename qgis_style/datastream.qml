<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis readOnly="0" version="3.44.0-Solothurn" styleCategories="LayerConfiguration|Symbology|Fields|Forms|Actions|Relations">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <renderer-v2 type="singleSymbol" forceraster="0" enableorderby="0" referencescale="-1" symbollevels="0">
    <symbols>
      <symbol name="0" force_rhr="0" frame_rate="10" type="fill" alpha="1" is_animated="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer id="{7f0b70e6-8da6-47ea-8a88-3181ed329ccb}" enabled="1" locked="0" class="SimpleFill" pass="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="133,182,111,255,rgb:0.5215686,0.7137255,0.4352941,1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.1372549,0.1372549,0.1372549,1"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0.26"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
    <data-defined-properties>
      <Option type="Map">
        <Option name="name" type="QString" value=""/>
        <Option name="properties"/>
        <Option name="type" type="QString" value="collection"/>
      </Option>
    </data-defined-properties>
  </renderer-v2>
  <selection mode="Default">
    <selectionColor invalid="1"/>
    <selectionSymbol>
      <symbol name="" force_rhr="0" frame_rate="10" type="fill" alpha="1" is_animated="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer id="{a71490d4-95dd-43be-8147-23b7629c41f5}" enabled="1" locked="0" class="SimpleFill" pass="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="0,0,255,255,rgb:0,0,1,1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.1372549,0.1372549,0.1372549,1"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0.26"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </selectionSymbol>
  </selection>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <referencedLayers>
    <relation id="observedproperty_datastream_6" name="observedproperty_datastream_6" providerKey="ogr" layerName="observedproperty" strength="Association" dataSource="./SW_15.gpkg|layername=observedproperty" layerId="observedproperty_312aa990_cf51_4640_bbaa_d1fe7ab3d04a" referencingLayer="datastream_d1fcb085_7d78_487a_abd5_e78d6e00f2bb" referencedLayer="observedproperty_312aa990_cf51_4640_bbaa_d1fe7ab3d04a">
      <fieldRef referencingField="guid_observedproperty" referencedField="guid"/>
    </relation>
    <relation id="observingprocedure_datastream_5" name="observingprocedure_datastream_5" providerKey="ogr" layerName="observingprocedure" strength="Association" dataSource="./SW_15.gpkg|layername=observingprocedure" layerId="observingprocedure_e62041a8_914c_4525_84f2_79abbbb5999e" referencingLayer="datastream_d1fcb085_7d78_487a_abd5_e78d6e00f2bb" referencedLayer="observingprocedure_e62041a8_914c_4525_84f2_79abbbb5999e">
      <fieldRef referencingField="guid_observingprocedure" referencedField="guid"/>
    </relation>
    <relation id="profileelement_datastream_2" name="profileelement_datastream_2" providerKey="ogr" layerName="profileelement" strength="Association" dataSource="./SW_15.gpkg|layername=profileelement" layerId="profileelement_b2d20b62_1ce2_48cf_bb25_b89977036735" referencingLayer="datastream_d1fcb085_7d78_487a_abd5_e78d6e00f2bb" referencedLayer="profileelement_b2d20b62_1ce2_48cf_bb25_b89977036735">
      <fieldRef referencingField="guid_profileelement" referencedField="guid"/>
    </relation>
    <relation id="sensor_datastream_7" name="sensor_datastream_7" providerKey="ogr" layerName="sensor" strength="Association" dataSource="./SW_15.gpkg|layername=sensor" layerId="sensor_d0442955_b1fb_45d4_a8b2_aa99e71e0da9" referencingLayer="datastream_d1fcb085_7d78_487a_abd5_e78d6e00f2bb" referencedLayer="sensor_d0442955_b1fb_45d4_a8b2_aa99e71e0da9">
      <fieldRef referencingField="guid_sensor" referencedField="guid"/>
    </relation>
    <relation id="soilderivedobject_datastream" name="soilderivedobject_datastream" providerKey="ogr" layerName="soilderivedobject" strength="Association" dataSource="./SW_15.gpkg|layername=soilderivedobject" layerId="soilderivedobject_3b15523b_c10c_4932_8282_15e772159f6c" referencingLayer="datastream_d1fcb085_7d78_487a_abd5_e78d6e00f2bb" referencedLayer="soilderivedobject_3b15523b_c10c_4932_8282_15e772159f6c">
      <fieldRef referencingField="guid_soilderivedobject" referencedField="guid"/>
    </relation>
    <relation id="soilprofile_datastream_3" name="soilprofile_datastream_3" providerKey="ogr" layerName="soilprofile" strength="Association" dataSource="./SW_15.gpkg|layername=soilprofile" layerId="soilprofile_e216584c_29f6_4f76_97a2_e0af9b478016" referencingLayer="datastream_d1fcb085_7d78_487a_abd5_e78d6e00f2bb" referencedLayer="soilprofile_e216584c_29f6_4f76_97a2_e0af9b478016">
      <fieldRef referencingField="guid_soilprofile" referencedField="guid"/>
    </relation>
    <relation id="soilsite_datastream_4" name="soilsite_datastream_4" providerKey="ogr" layerName="soilsite" strength="Association" dataSource="./SW_15.gpkg|layername=soilsite" layerId="soilsite_5d0c90d6_52aa_48cc_a4db_40b96424714a" referencingLayer="datastream_d1fcb085_7d78_487a_abd5_e78d6e00f2bb" referencedLayer="soilsite_5d0c90d6_52aa_48cc_a4db_40b96424714a">
      <fieldRef referencingField="guid_soilsite" referencedField="guid"/>
    </relation>
    <relation id="thing_datastream_8" name="thing_datastream_8" providerKey="ogr" layerName="thing" strength="Association" dataSource="./SW_15.gpkg|layername=thing" layerId="thing_1d13e5c5_8331_4b91_aaa7_3dcd92ccde81" referencingLayer="datastream_d1fcb085_7d78_487a_abd5_e78d6e00f2bb" referencedLayer="thing_1d13e5c5_8331_4b91_aaa7_3dcd92ccde81">
      <fieldRef referencingField="guid_thing" referencedField="guid"/>
    </relation>
    <relation id="unitofmeasure_datastream_9" name="unitofmeasure_datastream_9" providerKey="ogr" layerName="unitofmeasure" strength="Association" dataSource="./SW_15.gpkg|layername=unitofmeasure" layerId="unitofmeasure_3fd95dd6_fab0_4ef6_a02f_459e761f6105" referencingLayer="datastream_d1fcb085_7d78_487a_abd5_e78d6e00f2bb" referencedLayer="unitofmeasure_3fd95dd6_fab0_4ef6_a02f_459e761f6105">
      <fieldRef referencingField="code_unitofmeasure" referencedField="code"/>
    </relation>
  </referencedLayers>
  <fieldConfiguration>
    <field name="id" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="name" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="definition" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="description" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="type" configurationFlags="NoFlag">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" type="bool" value="false"/>
            <Option name="AllowNull" type="bool" value="false"/>
            <Option name="CompleterMatchFlags" type="int" value="2"/>
            <Option name="Description" type="invalid"/>
            <Option name="DisplayGroupName" type="bool" value="false"/>
            <Option name="FilterExpression" type="QString" value="&quot;collection&quot; IN('resultType') "/>
            <Option name="Group" type="invalid"/>
            <Option name="Key" type="QString" value="id"/>
            <Option name="Layer" type="QString" value="codelist_f18d81cb_1e12_49ac_bec5_56641613bb71"/>
            <Option name="LayerName" type="QString" value="codelist"/>
            <Option name="LayerProviderName" type="QString" value="ogr"/>
            <Option name="LayerSource" type="QString" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_14.gpkg|layername=codelist"/>
            <Option name="NofColumns" type="int" value="1"/>
            <Option name="OrderByDescending" type="bool" value="false"/>
            <Option name="OrderByField" type="bool" value="false"/>
            <Option name="OrderByFieldName" type="QString" value="id"/>
            <Option name="OrderByKey" type="bool" value="true"/>
            <Option name="OrderByValue" type="bool" value="false"/>
            <Option name="UseCompleter" type="bool" value="false"/>
            <Option name="Value" type="QString" value="label"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="codespace" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="code_unitofmeasure" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" type="bool" value="false"/>
            <Option name="AllowNULL" type="bool" value="true"/>
            <Option name="FetchLimitActive" type="bool" value="true"/>
            <Option name="FetchLimitNumber" type="int" value="100"/>
            <Option name="MapIdentification" type="bool" value="false"/>
            <Option name="ReadOnly" type="bool" value="false"/>
            <Option name="ReferencedLayerDataSource" type="QString" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=unitofmeasure"/>
            <Option name="ReferencedLayerId" type="QString" value="unitofmeasure_3fd95dd6_fab0_4ef6_a02f_459e761f6105"/>
            <Option name="ReferencedLayerName" type="QString" value="unitofmeasure"/>
            <Option name="ReferencedLayerProviderKey" type="QString" value="ogr"/>
            <Option name="Relation" type="QString" value="unitofmeasure_datastream_9"/>
            <Option name="ShowForm" type="bool" value="false"/>
            <Option name="ShowOpenFormButton" type="bool" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="value_min" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="value_max" configurationFlags="NoFlag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="phenomenontime_start" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" type="bool" value="true"/>
            <Option name="calendar_popup" type="bool" value="true"/>
            <Option name="display_format" type="QString" value="d MMM yyyy HH:mm:ss"/>
            <Option name="field_format" type="QString" value="yyyy-MM-dd HH:mm:ss"/>
            <Option name="field_format_overwrite" type="bool" value="false"/>
            <Option name="field_iso_format" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="phenomenontime_end" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" type="bool" value="true"/>
            <Option name="calendar_popup" type="bool" value="true"/>
            <Option name="display_format" type="QString" value="d MMM yyyy HH:mm:ss"/>
            <Option name="field_format" type="QString" value="yyyy-MM-dd HH:mm:ss"/>
            <Option name="field_format_overwrite" type="bool" value="false"/>
            <Option name="field_iso_format" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="resulttime_start" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" type="bool" value="true"/>
            <Option name="calendar_popup" type="bool" value="true"/>
            <Option name="display_format" type="QString" value="d MMM yyyy HH:mm:ss"/>
            <Option name="field_format" type="QString" value="yyyy-MM-dd HH:mm:ss"/>
            <Option name="field_format_overwrite" type="bool" value="false"/>
            <Option name="field_iso_format" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="resulttime_end" configurationFlags="NoFlag">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" type="bool" value="true"/>
            <Option name="calendar_popup" type="bool" value="true"/>
            <Option name="display_format" type="QString" value="d MMM yyyy HH:mm:ss"/>
            <Option name="field_format" type="QString" value="yyyy-MM-dd HH:mm:ss"/>
            <Option name="field_format_overwrite" type="bool" value="false"/>
            <Option name="field_iso_format" type="bool" value="false"/>
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
            <Option name="AllowAddFeatures" type="bool" value="false"/>
            <Option name="AllowNULL" type="bool" value="false"/>
            <Option name="FetchLimitActive" type="bool" value="true"/>
            <Option name="FetchLimitNumber" type="int" value="100"/>
            <Option name="MapIdentification" type="bool" value="false"/>
            <Option name="ReadOnly" type="bool" value="false"/>
            <Option name="ReferencedLayerDataSource" type="QString" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=thing"/>
            <Option name="ReferencedLayerId" type="QString" value="thing_75af3248_c17c_426e_8a94_9ad91d6f9acf"/>
            <Option name="ReferencedLayerName" type="QString" value="thing"/>
            <Option name="ReferencedLayerProviderKey" type="QString" value="ogr"/>
            <Option name="Relation" type="QString" value="thing_datastream_8"/>
            <Option name="ShowForm" type="bool" value="false"/>
            <Option name="ShowOpenFormButton" type="bool" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_sensor" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" type="bool" value="false"/>
            <Option name="AllowNULL" type="bool" value="false"/>
            <Option name="FetchLimitActive" type="bool" value="true"/>
            <Option name="FetchLimitNumber" type="int" value="100"/>
            <Option name="MapIdentification" type="bool" value="false"/>
            <Option name="ReadOnly" type="bool" value="false"/>
            <Option name="ReferencedLayerDataSource" type="QString" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=sensor"/>
            <Option name="ReferencedLayerId" type="QString" value="sensor_882086b2_0ca1_4e1e_92bd_1ed513943846"/>
            <Option name="ReferencedLayerName" type="QString" value="sensor"/>
            <Option name="ReferencedLayerProviderKey" type="QString" value="ogr"/>
            <Option name="Relation" type="QString" value="sensor_datastream_7"/>
            <Option name="ShowForm" type="bool" value="false"/>
            <Option name="ShowOpenFormButton" type="bool" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_observedproperty" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" type="bool" value="false"/>
            <Option name="AllowNULL" type="bool" value="false"/>
            <Option name="FetchLimitActive" type="bool" value="true"/>
            <Option name="FetchLimitNumber" type="int" value="100"/>
            <Option name="MapIdentification" type="bool" value="false"/>
            <Option name="ReadOnly" type="bool" value="false"/>
            <Option name="ReferencedLayerDataSource" type="QString" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=observedproperty"/>
            <Option name="ReferencedLayerId" type="QString" value="observedproperty_ca40a68d_fb6f_4bc5_a570_06e1a6415064"/>
            <Option name="ReferencedLayerName" type="QString" value="observedproperty"/>
            <Option name="ReferencedLayerProviderKey" type="QString" value="ogr"/>
            <Option name="Relation" type="QString" value="observedproperty_datastream_6"/>
            <Option name="ShowForm" type="bool" value="false"/>
            <Option name="ShowOpenFormButton" type="bool" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_observingprocedure" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" type="bool" value="false"/>
            <Option name="AllowNULL" type="bool" value="true"/>
            <Option name="FetchLimitActive" type="bool" value="true"/>
            <Option name="FetchLimitNumber" type="int" value="100"/>
            <Option name="MapIdentification" type="bool" value="false"/>
            <Option name="ReadOnly" type="bool" value="false"/>
            <Option name="ReferencedLayerDataSource" type="QString" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=observingprocedure"/>
            <Option name="ReferencedLayerId" type="QString" value="observingprocedure_1aae3844_6744_4f5a_9c0e_6b5f07ffea94"/>
            <Option name="ReferencedLayerName" type="QString" value="observingprocedure"/>
            <Option name="ReferencedLayerProviderKey" type="QString" value="ogr"/>
            <Option name="Relation" type="QString" value="observingprocedure_datastream_5"/>
            <Option name="ShowForm" type="bool" value="false"/>
            <Option name="ShowOpenFormButton" type="bool" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_soilsite" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" type="bool" value="false"/>
            <Option name="AllowNULL" type="bool" value="true"/>
            <Option name="FetchLimitActive" type="bool" value="true"/>
            <Option name="FetchLimitNumber" type="int" value="100"/>
            <Option name="MapIdentification" type="bool" value="false"/>
            <Option name="ReadOnly" type="bool" value="false"/>
            <Option name="ReferencedLayerDataSource" type="QString" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=soilsite"/>
            <Option name="ReferencedLayerId" type="QString" value="soilsite_478dc2f4_41c8_48ca_959a_80cbce061ab3"/>
            <Option name="ReferencedLayerName" type="QString" value="soilsite"/>
            <Option name="ReferencedLayerProviderKey" type="QString" value="ogr"/>
            <Option name="Relation" type="QString" value="soilsite_datastream_4"/>
            <Option name="ShowForm" type="bool" value="false"/>
            <Option name="ShowOpenFormButton" type="bool" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_soilprofile" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" type="bool" value="false"/>
            <Option name="AllowNULL" type="bool" value="true"/>
            <Option name="FetchLimitActive" type="bool" value="true"/>
            <Option name="FetchLimitNumber" type="int" value="100"/>
            <Option name="MapIdentification" type="bool" value="false"/>
            <Option name="ReadOnly" type="bool" value="false"/>
            <Option name="ReferencedLayerDataSource" type="QString" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=soilprofile"/>
            <Option name="ReferencedLayerId" type="QString" value="soilprofile_216eea7c_d015_4117_8c9f_df0b7692b5a7"/>
            <Option name="ReferencedLayerName" type="QString" value="soilprofile"/>
            <Option name="ReferencedLayerProviderKey" type="QString" value="ogr"/>
            <Option name="Relation" type="QString" value="soilprofile_datastream_3"/>
            <Option name="ShowForm" type="bool" value="false"/>
            <Option name="ShowOpenFormButton" type="bool" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_profileelement" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" type="bool" value="false"/>
            <Option name="AllowNULL" type="bool" value="true"/>
            <Option name="FetchLimitActive" type="bool" value="true"/>
            <Option name="FetchLimitNumber" type="int" value="100"/>
            <Option name="MapIdentification" type="bool" value="false"/>
            <Option name="ReadOnly" type="bool" value="false"/>
            <Option name="ReferencedLayerDataSource" type="QString" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=profileelement"/>
            <Option name="ReferencedLayerId" type="QString" value="profileelement_c30e6a23_64c8_4588_a32e_c91c0209d0a3"/>
            <Option name="ReferencedLayerName" type="QString" value="profileelement"/>
            <Option name="ReferencedLayerProviderKey" type="QString" value="ogr"/>
            <Option name="Relation" type="QString" value="profileelement_datastream_2"/>
            <Option name="ShowForm" type="bool" value="false"/>
            <Option name="ShowOpenFormButton" type="bool" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="guid_soilderivedobject" configurationFlags="NoFlag">
      <editWidget type="RelationReference">
        <config>
          <Option type="Map">
            <Option name="AllowAddFeatures" type="bool" value="false"/>
            <Option name="AllowNULL" type="bool" value="true"/>
            <Option name="FetchLimitActive" type="bool" value="true"/>
            <Option name="FetchLimitNumber" type="int" value="100"/>
            <Option name="MapIdentification" type="bool" value="false"/>
            <Option name="ReadOnly" type="bool" value="false"/>
            <Option name="ReferencedLayerDataSource" type="QString" value="C:/Users/andrea.lachi/OneDrive - CREA/Documenti/Geopackage_SoilWise/materiale_lavoro/geopackage/SW_15.gpkg|layername=soilderivedobject"/>
            <Option name="ReferencedLayerId" type="QString" value="soilderivedobject_360aac90_af34_468c_953d_c1813d5ee56a"/>
            <Option name="ReferencedLayerName" type="QString" value="soilderivedobject"/>
            <Option name="ReferencedLayerProviderKey" type="QString" value="ogr"/>
            <Option name="Relation" type="QString" value="soilderivedobject_datastream"/>
            <Option name="ShowForm" type="bool" value="false"/>
            <Option name="ShowOpenFormButton" type="bool" value="true"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="id" index="0"/>
    <alias name="" field="guid" index="1"/>
    <alias name="Name" field="name" index="2"/>
    <alias name="Definition   " field="definition" index="3"/>
    <alias name="Description" field="description" index="4"/>
    <alias name="Type" field="type" index="5"/>
    <alias name="Codespace" field="codespace" index="6"/>
    <alias name="Unit Of Measure" field="code_unitofmeasure" index="7"/>
    <alias name="Min" field="value_min" index="8"/>
    <alias name="Max" field="value_max" index="9"/>
    <alias name="Start of Phenomenon" field="phenomenontime_start" index="10"/>
    <alias name="End of Phenomenon (mandatory)" field="phenomenontime_end" index="11"/>
    <alias name="Result Time Start" field="resulttime_start" index="12"/>
    <alias name="Result Time End  (mandatory)" field="resulttime_end" index="13"/>
    <alias name="Properties" field="properties" index="14"/>
    <alias name="Thing" field="guid_thing" index="15"/>
    <alias name="Sensor" field="guid_sensor" index="16"/>
    <alias name="Observed Property" field="guid_observedproperty" index="17"/>
    <alias name="Observing Procedure" field="guid_observingprocedure" index="18"/>
    <alias name="Soil Site" field="guid_soilsite" index="19"/>
    <alias name="Soil Profile" field="guid_soilprofile" index="20"/>
    <alias name="Profile Element" field="guid_profileelement" index="21"/>
    <alias name="Soil Derived Object" field="guid_soilderivedobject" index="22"/>
  </aliases>
  <defaults>
    <default applyOnUpdate="0" expression="" field="id"/>
    <default applyOnUpdate="0" expression="" field="guid"/>
    <default applyOnUpdate="0" expression="" field="name"/>
    <default applyOnUpdate="0" expression="" field="definition"/>
    <default applyOnUpdate="0" expression="" field="description"/>
    <default applyOnUpdate="0" expression="" field="type"/>
    <default applyOnUpdate="0" expression="" field="codespace"/>
    <default applyOnUpdate="0" expression="" field="code_unitofmeasure"/>
    <default applyOnUpdate="0" expression="" field="value_min"/>
    <default applyOnUpdate="0" expression="" field="value_max"/>
    <default applyOnUpdate="0" expression="" field="phenomenontime_start"/>
    <default applyOnUpdate="0" expression="" field="phenomenontime_end"/>
    <default applyOnUpdate="0" expression="" field="resulttime_start"/>
    <default applyOnUpdate="0" expression="" field="resulttime_end"/>
    <default applyOnUpdate="0" expression="" field="properties"/>
    <default applyOnUpdate="0" expression="" field="guid_thing"/>
    <default applyOnUpdate="0" expression="" field="guid_sensor"/>
    <default applyOnUpdate="0" expression="" field="guid_observedproperty"/>
    <default applyOnUpdate="0" expression="" field="guid_observingprocedure"/>
    <default applyOnUpdate="0" expression="" field="guid_soilsite"/>
    <default applyOnUpdate="0" expression="" field="guid_soilprofile"/>
    <default applyOnUpdate="0" expression="" field="guid_profileelement"/>
    <default applyOnUpdate="0" expression="" field="guid_soilderivedobject"/>
  </defaults>
  <constraints>
    <constraint constraints="3" exp_strength="0" field="id" unique_strength="1" notnull_strength="1"/>
    <constraint constraints="2" exp_strength="0" field="guid" unique_strength="1" notnull_strength="0"/>
    <constraint constraints="1" exp_strength="0" field="name" unique_strength="0" notnull_strength="1"/>
    <constraint constraints="0" exp_strength="0" field="definition" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="description" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="1" exp_strength="0" field="type" unique_strength="0" notnull_strength="1"/>
    <constraint constraints="0" exp_strength="0" field="codespace" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="code_unitofmeasure" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="value_min" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="value_max" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="phenomenontime_start" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="phenomenontime_end" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="resulttime_start" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="resulttime_end" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="properties" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="1" exp_strength="0" field="guid_thing" unique_strength="0" notnull_strength="1"/>
    <constraint constraints="1" exp_strength="0" field="guid_sensor" unique_strength="0" notnull_strength="1"/>
    <constraint constraints="1" exp_strength="0" field="guid_observedproperty" unique_strength="0" notnull_strength="1"/>
    <constraint constraints="0" exp_strength="0" field="guid_observingprocedure" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="guid_soilsite" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="guid_soilprofile" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="guid_profileelement" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="guid_soilderivedobject" unique_strength="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="id"/>
    <constraint desc="" exp="" field="guid"/>
    <constraint desc="" exp="" field="name"/>
    <constraint desc="" exp="" field="definition"/>
    <constraint desc="" exp="" field="description"/>
    <constraint desc="" exp="" field="type"/>
    <constraint desc="" exp="" field="codespace"/>
    <constraint desc="" exp="" field="code_unitofmeasure"/>
    <constraint desc="" exp="" field="value_min"/>
    <constraint desc="" exp="" field="value_max"/>
    <constraint desc="" exp="" field="phenomenontime_start"/>
    <constraint desc="" exp="" field="phenomenontime_end"/>
    <constraint desc="" exp="" field="resulttime_start"/>
    <constraint desc="" exp="" field="resulttime_end"/>
    <constraint desc="" exp="" field="properties"/>
    <constraint desc="" exp="" field="guid_thing"/>
    <constraint desc="" exp="" field="guid_sensor"/>
    <constraint desc="" exp="" field="guid_observedproperty"/>
    <constraint desc="" exp="" field="guid_observingprocedure"/>
    <constraint desc="" exp="" field="guid_soilsite"/>
    <constraint desc="" exp="" field="guid_soilprofile"/>
    <constraint desc="" exp="" field="guid_profileelement"/>
    <constraint desc="" exp="" field="guid_soilderivedobject"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
    <actionsetting name="Search on web based on attribute's value" id="{48dbe2ff-cae4-4548-b815-723f73677ab4}" type="5" shortTitle="Go to Page" icon="" capture="0" action="[%definition%]" notificationMessage="" isEnabledOnlyWhenEditable="0">
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
    <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
      <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
    </labelStyle>
    <attributeEditorContainer name="ID" collapsed="1" showLabel="1" collapsedExpression="" type="GroupBox" horizontalStretch="0" visibilityExpressionEnabled="0" verticalStretch="0" visibilityExpression="" collapsedExpressionEnabled="0" columnCount="1" groupBox="1">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
      <attributeEditorField name="id" showLabel="1" horizontalStretch="0" verticalStretch="0" index="0">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="guid" showLabel="1" horizontalStretch="0" verticalStretch="0" index="1">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField name="name" showLabel="1" horizontalStretch="0" verticalStretch="0" index="2">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer name="Definition" collapsed="0" showLabel="0" collapsedExpression="" type="Row" horizontalStretch="0" visibilityExpressionEnabled="0" verticalStretch="0" visibilityExpression="" collapsedExpressionEnabled="0" columnCount="1" groupBox="0">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
      <attributeEditorField name="definition" showLabel="1" horizontalStretch="0" verticalStretch="0" index="3">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorAction ActionUUID="{48dbe2ff-cae4-4548-b815-723f73677ab4}" name="{48dbe2ff-cae4-4548-b815-723f73677ab4}" showLabel="1" horizontalStretch="0" verticalStretch="0">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorAction>
    </attributeEditorContainer>
    <attributeEditorField name="description" showLabel="1" horizontalStretch="0" verticalStretch="0" index="4">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer name="Result Type" collapsed="0" showLabel="1" collapsedExpression="" type="GroupBox" horizontalStretch="0" visibilityExpressionEnabled="0" verticalStretch="0" visibilityExpression="" collapsedExpressionEnabled="0" columnCount="1" groupBox="1">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
      <attributeEditorField name="type" showLabel="1" horizontalStretch="0" verticalStretch="0" index="5">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorContainer name="" collapsed="0" showLabel="0" collapsedExpression="" type="Row" horizontalStretch="0" visibilityExpressionEnabled="1" verticalStretch="0" visibilityExpression="  &quot;type&quot; = 'Quantity'" collapsedExpressionEnabled="0" columnCount="1" groupBox="0">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
        <attributeEditorField name="code_unitofmeasure" showLabel="1" horizontalStretch="0" verticalStretch="0" index="7">
          <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
            <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="value_min" showLabel="1" horizontalStretch="0" verticalStretch="0" index="8">
          <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
            <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="value_max" showLabel="1" horizontalStretch="0" verticalStretch="0" index="9">
          <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
            <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
      <attributeEditorContainer name="" collapsed="0" showLabel="0" collapsedExpression="" type="Row" horizontalStretch="0" visibilityExpressionEnabled="1" verticalStretch="0" visibilityExpression="  &quot;type&quot; = 'Category'" collapsedExpressionEnabled="0" columnCount="1" groupBox="0">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
        <attributeEditorField name="codespace" showLabel="1" horizontalStretch="0" verticalStretch="0" index="6">
          <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
            <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
      <attributeEditorContainer name="" collapsed="0" showLabel="0" collapsedExpression="" type="Row" horizontalStretch="0" visibilityExpressionEnabled="1" verticalStretch="0" visibilityExpression="  &quot;type&quot; = 'Boolean'" collapsedExpressionEnabled="0" columnCount="1" groupBox="0">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorContainer>
      <attributeEditorContainer name="" collapsed="0" showLabel="0" collapsedExpression="" type="Row" horizontalStretch="0" visibilityExpressionEnabled="1" verticalStretch="0" visibilityExpression="  &quot;type&quot; = 'Count'" collapsedExpressionEnabled="0" columnCount="1" groupBox="0">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
        <attributeEditorField name="value_min" showLabel="1" horizontalStretch="0" verticalStretch="0" index="8">
          <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
            <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="value_max" showLabel="1" horizontalStretch="0" verticalStretch="0" index="9">
          <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
            <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="Phenomenon Time" collapsed="0" showLabel="1" collapsedExpression="" type="GroupBox" horizontalStretch="0" visibilityExpressionEnabled="0" verticalStretch="0" visibilityExpression="" collapsedExpressionEnabled="0" columnCount="1" groupBox="1">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
      <attributeEditorField name="phenomenontime_start" showLabel="1" horizontalStretch="0" verticalStretch="0" index="10">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorContainer name="End" collapsed="0" showLabel="0" collapsedExpression="" type="Row" horizontalStretch="0" visibilityExpressionEnabled="1" verticalStretch="0" visibilityExpression=" &quot;phenomenontime_start&quot; is not NULL" collapsedExpressionEnabled="0" columnCount="1" groupBox="0">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
        <attributeEditorField name="phenomenontime_end" showLabel="1" horizontalStretch="0" verticalStretch="0" index="11">
          <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
            <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="Result Time" collapsed="0" showLabel="1" collapsedExpression="" type="GroupBox" horizontalStretch="0" visibilityExpressionEnabled="0" verticalStretch="0" visibilityExpression="" collapsedExpressionEnabled="0" columnCount="1" groupBox="1">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
      <attributeEditorField name="resulttime_start" showLabel="1" horizontalStretch="0" verticalStretch="0" index="12">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorContainer name="End" collapsed="0" showLabel="0" collapsedExpression="" type="Row" horizontalStretch="0" visibilityExpressionEnabled="1" verticalStretch="0" visibilityExpression=" &quot;resulttime_start&quot; is not NULL" collapsedExpressionEnabled="0" columnCount="1" groupBox="0">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
        <attributeEditorField name="resulttime_end" showLabel="1" horizontalStretch="0" verticalStretch="0" index="13">
          <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
            <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="Properties" collapsed="1" showLabel="1" collapsedExpression="" type="GroupBox" horizontalStretch="0" visibilityExpressionEnabled="0" verticalStretch="0" visibilityExpression="" collapsedExpressionEnabled="0" columnCount="1" groupBox="1">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
      <attributeEditorField name="properties" showLabel="0" horizontalStretch="0" verticalStretch="0" index="14">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer name="Feature" collapsed="1" showLabel="1" collapsedExpression="" type="GroupBox" horizontalStretch="0" visibilityExpressionEnabled="0" verticalStretch="0" visibilityExpression="" collapsedExpressionEnabled="0" columnCount="1" groupBox="1">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
      <attributeEditorField name="guid_soilsite" showLabel="1" horizontalStretch="0" verticalStretch="0" index="19">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="guid_soilprofile" showLabel="1" horizontalStretch="0" verticalStretch="0" index="20">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="guid_profileelement" showLabel="1" horizontalStretch="0" verticalStretch="0" index="21">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="guid_soilderivedobject" showLabel="1" horizontalStretch="0" verticalStretch="0" index="22">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorField name="guid_thing" showLabel="1" horizontalStretch="0" verticalStretch="0" index="15">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="guid_sensor" showLabel="1" horizontalStretch="0" verticalStretch="0" index="16">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="guid_observedproperty" showLabel="1" horizontalStretch="0" verticalStretch="0" index="17">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorField name="guid_observingprocedure" showLabel="1" horizontalStretch="0" verticalStretch="0" index="18">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
    </attributeEditorField>
    <attributeEditorContainer name="Observation" collapsed="1" showLabel="1" collapsedExpression="" type="GroupBox" horizontalStretch="0" visibilityExpressionEnabled="0" verticalStretch="0" visibilityExpression="" collapsedExpressionEnabled="0" columnCount="1" groupBox="1">
      <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
        <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
      </labelStyle>
      <attributeEditorRelation relation="datastream_observation" name="datastream_observation" showLabel="0" label="" forceSuppressFormPopup="0" horizontalStretch="0" verticalStretch="0" nmRelationId="" relationWidgetTypeId="relation_editor">
        <labelStyle overrideLabelFont="0" labelColor="" overrideLabelColor="0">
          <labelFont strikethrough="0" style="" underline="0" italic="0" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0" bold="0"/>
        </labelStyle>
        <editor_configuration type="Map">
          <Option name="allow_add_child_feature_with_no_geometry" type="bool" value="false"/>
          <Option name="buttons" type="QString" value="AllButtons"/>
          <Option name="filter_expression" type="invalid"/>
          <Option name="show_first_feature" type="bool" value="true"/>
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
        <Option name="force-suppress-popup" type="bool" value="false"/>
        <Option name="nm-rel" type="QString" value=""/>
      </config>
    </widget>
  </widgets>
  <previewExpression>"name"</previewExpression>
  <layerGeometryType>2</layerGeometryType>
</qgis>
