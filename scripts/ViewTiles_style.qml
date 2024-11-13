<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" readOnly="0" version="3.28.3-Firenze" styleCategories="LayerConfiguration|Symbology|Labeling|Actions">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <renderer-v2 symbollevels="0" referencescale="-1" forceraster="0" enableorderby="1" type="RuleRenderer">
    <rules key="{1b1645df-c77c-4f39-80b6-ae0e58b962e7}">
      <rule description="combine_code has a success code -- REMEMBER this has to be a lower symbol level than the Waiting symbology " key="{5b2673e9-21fe-480a-9c9c-4e8be4d35ca1}" label="Combine Complete" symbol="0" filter="not attribute(@feature, 'combine_errors') AND attribute(@feature, 'combine_newer_than_export')"/>
      <rule key="{6bc095ea-5f6c-4100-9caa-89fef84283f6}" label="ENCs newer than Export" symbol="1" filter="attribute(@feature, 'export_complete') AND attribute(@feature, 'enc_newer_than_export')"/>
      <rule key="{229e815b-d9f1-42b3-89b5-15800b1f8820}" label="Combine Failed" symbol="2" filter="attribute(@feature, 'combine_errors')"/>
      <rule key="{ab98925e-ce62-4acf-820d-cdd4bfad04fb}" label="Combining" symbol="3" filter="attribute(@feature, 'combining') > 0"/>
      <rule key="{85c743d7-d84b-437f-b815-38d89bc1a97b}" label="Combine Waiting" symbol="4" filter="attribute(@feature, 'combine_waiting') > 0"/>
      <rule key="{f5835130-aef8-4ee2-b011-60846c38d2bf}" label="Export Failed" symbol="5" filter="attribute(@feature, 'export_errors')"/>
      <rule key="{3271a311-bd88-46b3-9776-29b6eab64ebf}" label="Exporting" symbol="6" filter="attribute(@feature, 'exporting') > 0"/>
      <rule key="{75a19ae7-d33c-496b-8752-76e2ec29a477}" label="Export Waiting" symbol="7" filter="attribute(@feature, 'export_waiting') > 0"/>
      <rule key="{62ff6119-ff97-4798-bf22-59c509df3242}" label="Export Complete" symbol="8" filter="attribute(@feature, 'export_complete')"/>
      <rule key="{8a9158c7-35fe-4cbd-bab3-4434ae539db6}" label="Not Combined" symbol="9" filter="attribute(@feature, 'never_combined')"/>
    </rules>
    <symbols>
      <symbol name="0" force_rhr="0" is_animated="0" alpha="1" clip_to_extent="1" type="fill" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer pass="3" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="color" value="51,160,44,255" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="offset" value="0,0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_color" value="35,35,35,255" type="QString"/>
            <Option name="outline_style" value="solid" type="QString"/>
            <Option name="outline_width" value="0.26" type="QString"/>
            <Option name="outline_width_unit" value="MM" type="QString"/>
            <Option name="style" value="solid" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="1" force_rhr="0" is_animated="0" alpha="1" clip_to_extent="1" type="fill" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer pass="1" enabled="1" class="GradientFill" locked="0">
          <Option type="Map">
            <Option name="angle" value="0" type="QString"/>
            <Option name="color" value="0,0,255,255" type="QString"/>
            <Option name="color1" value="13,8,135,255" type="QString"/>
            <Option name="color2" value="240,249,33,255" type="QString"/>
            <Option name="color_type" value="0" type="QString"/>
            <Option name="coordinate_mode" value="0" type="QString"/>
            <Option name="direction" value="ccw" type="QString"/>
            <Option name="discrete" value="0" type="QString"/>
            <Option name="gradient_color2" value="30,142,14,255" type="QString"/>
            <Option name="offset" value="0,0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="rampType" value="gradient" type="QString"/>
            <Option name="reference_point1" value="0.5,0" type="QString"/>
            <Option name="reference_point1_iscentroid" value="1" type="QString"/>
            <Option name="reference_point2" value="0.5,1" type="QString"/>
            <Option name="reference_point2_iscentroid" value="0" type="QString"/>
            <Option name="spec" value="rgb" type="QString"/>
            <Option name="spread" value="0" type="QString"/>
            <Option name="stops" value="0.0196078;27,6,141,255;rgb;ccw:0.0392157;38,5,145,255;rgb;ccw:0.0588235;47,5,150,255;rgb;ccw:0.0784314;56,4,154,255;rgb;ccw:0.0980392;65,4,157,255;rgb;ccw:0.117647;73,3,160,255;rgb;ccw:0.137255;81,2,163,255;rgb;ccw:0.156863;89,1,165,255;rgb;ccw:0.176471;97,0,167,255;rgb;ccw:0.196078;105,0,168,255;rgb;ccw:0.215686;113,0,168,255;rgb;ccw:0.235294;120,1,168,255;rgb;ccw:0.254902;128,4,168,255;rgb;ccw:0.27451;135,7,166,255;rgb;ccw:0.294118;142,12,164,255;rgb;ccw:0.313725;149,17,161,255;rgb;ccw:0.333333;156,23,158,255;rgb;ccw:0.352941;162,29,154,255;rgb;ccw:0.372549;168,34,150,255;rgb;ccw:0.392157;174,40,146,255;rgb;ccw:0.411765;180,46,141,255;rgb;ccw:0.431373;186,51,136,255;rgb;ccw:0.45098;191,57,132,255;rgb;ccw:0.470588;196,62,127,255;rgb;ccw:0.490196;201,68,122,255;rgb;ccw:0.509804;205,74,118,255;rgb;ccw:0.529412;210,79,113,255;rgb;ccw:0.54902;214,85,109,255;rgb;ccw:0.568627;218,91,105,255;rgb;ccw:0.588235;222,97,100,255;rgb;ccw:0.607843;226,102,96,255;rgb;ccw:0.627451;230,108,92,255;rgb;ccw:0.647059;233,114,87,255;rgb;ccw:0.666667;237,121,83,255;rgb;ccw:0.686275;240,127,79,255;rgb;ccw:0.705882;243,133,75,255;rgb;ccw:0.72549;245,140,70,255;rgb;ccw:0.745098;247,147,66,255;rgb;ccw:0.764706;249,154,62,255;rgb;ccw:0.784314;251,161,57,255;rgb;ccw:0.803922;252,168,53,255;rgb;ccw:0.823529;253,175,49,255;rgb;ccw:0.843137;254,183,45,255;rgb;ccw:0.862745;254,190,42,255;rgb;ccw:0.882353;253,198,39,255;rgb;ccw:0.901961;252,206,37,255;rgb;ccw:0.921569;251,215,36,255;rgb;ccw:0.941176;248,223,37,255;rgb;ccw:0.960784;246,232,38,255;rgb;ccw:0.980392;243,240,39,255;rgb;ccw" type="QString"/>
            <Option name="type" value="0" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer pass="0" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="color" value="247,247,247,255" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="offset" value="0,0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_color" value="0,0,0,255" type="QString"/>
            <Option name="outline_style" value="solid" type="QString"/>
            <Option name="outline_width" value="0.36" type="QString"/>
            <Option name="outline_width_unit" value="MM" type="QString"/>
            <Option name="style" value="no" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="2" force_rhr="0" is_animated="0" alpha="1" clip_to_extent="1" type="fill" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer pass="5" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="color" value="200,0,3,255" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="offset" value="0,0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_color" value="35,35,35,255" type="QString"/>
            <Option name="outline_style" value="solid" type="QString"/>
            <Option name="outline_width" value="0.26" type="QString"/>
            <Option name="outline_width_unit" value="MM" type="QString"/>
            <Option name="style" value="solid" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="3" force_rhr="0" is_animated="0" alpha="1" clip_to_extent="1" type="fill" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer pass="9" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="color" value="178,223,138,255" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="offset" value="0,0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_color" value="35,35,35,255" type="QString"/>
            <Option name="outline_style" value="solid" type="QString"/>
            <Option name="outline_width" value="0.26" type="QString"/>
            <Option name="outline_width_unit" value="MM" type="QString"/>
            <Option name="style" value="solid" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="4" force_rhr="0" is_animated="0" alpha="1" clip_to_extent="1" type="fill" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer pass="8" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="color" value="255,158,23,255" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="offset" value="0,0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_color" value="35,35,35,255" type="QString"/>
            <Option name="outline_style" value="solid" type="QString"/>
            <Option name="outline_width" value="0.26" type="QString"/>
            <Option name="outline_width_unit" value="MM" type="QString"/>
            <Option name="style" value="solid" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="5" force_rhr="0" is_animated="0" alpha="1" clip_to_extent="1" type="fill" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer pass="2" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="color" value="243,166,178,255" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="offset" value="0,0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_color" value="35,35,35,255" type="QString"/>
            <Option name="outline_style" value="solid" type="QString"/>
            <Option name="outline_width" value="0.26" type="QString"/>
            <Option name="outline_width_unit" value="MM" type="QString"/>
            <Option name="style" value="solid" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="6" force_rhr="0" is_animated="0" alpha="1" clip_to_extent="1" type="fill" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer pass="5" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="color" value="84,170,241,255" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="offset" value="0,0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_color" value="35,35,35,255" type="QString"/>
            <Option name="outline_style" value="solid" type="QString"/>
            <Option name="outline_width" value="0.26" type="QString"/>
            <Option name="outline_width_unit" value="MM" type="QString"/>
            <Option name="style" value="solid" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="7" force_rhr="0" is_animated="0" alpha="1" clip_to_extent="1" type="fill" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer pass="4" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="color" value="147,143,153,255" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="offset" value="0,0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_color" value="35,35,35,255" type="QString"/>
            <Option name="outline_style" value="solid" type="QString"/>
            <Option name="outline_width" value="0.26" type="QString"/>
            <Option name="outline_width_unit" value="MM" type="QString"/>
            <Option name="style" value="solid" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="8" force_rhr="0" is_animated="0" alpha="1" clip_to_extent="1" type="fill" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="color" value="8,8,232,255" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="offset" value="0,0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_color" value="35,35,35,255" type="QString"/>
            <Option name="outline_style" value="solid" type="QString"/>
            <Option name="outline_width" value="0.26" type="QString"/>
            <Option name="outline_width_unit" value="MM" type="QString"/>
            <Option name="style" value="solid" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="9" force_rhr="0" is_animated="0" alpha="1" clip_to_extent="1" type="fill" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer pass="7" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="color" value="255,254,255,255" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="offset" value="0,0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_color" value="35,35,35,255" type="QString"/>
            <Option name="outline_style" value="solid" type="QString"/>
            <Option name="outline_width" value="0.26" type="QString"/>
            <Option name="outline_width_unit" value="MM" type="QString"/>
            <Option name="style" value="solid" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer pass="7" enabled="1" class="LinePatternFill" locked="0">
          <Option type="Map">
            <Option name="angle" value="45" type="QString"/>
            <Option name="clip_mode" value="during_render" type="QString"/>
            <Option name="color" value="150,150,150,255" type="QString"/>
            <Option name="coordinate_reference" value="feature" type="QString"/>
            <Option name="distance" value="4" type="QString"/>
            <Option name="distance_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="distance_unit" value="MM" type="QString"/>
            <Option name="line_width" value="0.26" type="QString"/>
            <Option name="line_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="line_width_unit" value="MM" type="QString"/>
            <Option name="offset" value="0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="outline_width_unit" value="MM" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@9@1" force_rhr="0" is_animated="0" alpha="1" clip_to_extent="1" type="line" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" class="SimpleLine" locked="0">
              <Option type="Map">
                <Option name="align_dash_pattern" value="0" type="QString"/>
                <Option name="capstyle" value="square" type="QString"/>
                <Option name="customdash" value="5;2" type="QString"/>
                <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="customdash_unit" value="MM" type="QString"/>
                <Option name="dash_pattern_offset" value="0" type="QString"/>
                <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
                <Option name="draw_inside_polygon" value="0" type="QString"/>
                <Option name="joinstyle" value="bevel" type="QString"/>
                <Option name="line_color" value="150,150,150,255" type="QString"/>
                <Option name="line_style" value="solid" type="QString"/>
                <Option name="line_width" value="0.26" type="QString"/>
                <Option name="line_width_unit" value="MM" type="QString"/>
                <Option name="offset" value="0" type="QString"/>
                <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="offset_unit" value="MM" type="QString"/>
                <Option name="ring_filter" value="0" type="QString"/>
                <Option name="trim_distance_end" value="0" type="QString"/>
                <Option name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="trim_distance_end_unit" value="MM" type="QString"/>
                <Option name="trim_distance_start" value="0" type="QString"/>
                <Option name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="trim_distance_start_unit" value="MM" type="QString"/>
                <Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
                <Option name="use_custom_dash" value="0" type="QString"/>
                <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
    </symbols>
    <orderby>
      <orderByClause nullsFirst="0" asc="1">"tile_name"</orderByClause>
    </orderby>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style fontItalic="0" fontWeight="75" blendMode="0" textOrientation="horizontal" textColor="50,50,50,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontWordSpacing="0" multilineHeightUnit="Percentage" capitalization="0" previewBkgrdColor="255,255,255,255" textOpacity="1" legendString="Aa" fontLetterSpacing="0" fontSizeUnit="Point" isExpression="0" fontUnderline="0" useSubstitutions="0" namedStyle="Bold" forcedBold="0" fontStrikeout="0" multilineHeight="1" fieldName="tile" fontSize="10" allowHtml="0" forcedItalic="0" fontFamily="Open Sans" fontKerning="1">
        <families/>
        <text-buffer bufferSize="1" bufferBlendMode="0" bufferSizeUnits="MM" bufferOpacity="1" bufferColor="250,250,250,255" bufferNoFill="1" bufferJoinStyle="128" bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0"/>
        <text-mask maskType="0" maskEnabled="0" maskJoinStyle="128" maskSizeUnits="MM" maskSize="1.5" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskedSymbolLayers=""/>
        <background shapeFillColor="255,255,255,255" shapeOffsetY="0" shapeSVGFile="" shapeRadiiX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeOpacity="1" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="Point" shapeSizeType="0" shapeOffsetX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeType="0" shapeJoinStyle="64" shapeBorderWidthUnit="Point" shapeSizeUnit="Point" shapeRadiiUnit="Point" shapeSizeY="0" shapeRotationType="0" shapeDraw="0" shapeRotation="0" shapeBlendMode="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeRadiiY="0">
          <symbol name="markerSymbol" force_rhr="0" is_animated="0" alpha="1" clip_to_extent="1" type="marker" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" class="SimpleMarker" locked="0">
              <Option type="Map">
                <Option name="angle" value="0" type="QString"/>
                <Option name="cap_style" value="square" type="QString"/>
                <Option name="color" value="190,207,80,255" type="QString"/>
                <Option name="horizontal_anchor_point" value="1" type="QString"/>
                <Option name="joinstyle" value="bevel" type="QString"/>
                <Option name="name" value="circle" type="QString"/>
                <Option name="offset" value="0,0" type="QString"/>
                <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="offset_unit" value="MM" type="QString"/>
                <Option name="outline_color" value="35,35,35,255" type="QString"/>
                <Option name="outline_style" value="solid" type="QString"/>
                <Option name="outline_width" value="0" type="QString"/>
                <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="outline_width_unit" value="MM" type="QString"/>
                <Option name="scale_method" value="diameter" type="QString"/>
                <Option name="size" value="2" type="QString"/>
                <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="size_unit" value="MM" type="QString"/>
                <Option name="vertical_anchor_point" value="1" type="QString"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
          <symbol name="fillSymbol" force_rhr="0" is_animated="0" alpha="1" clip_to_extent="1" type="fill" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" class="SimpleFill" locked="0">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="color" value="255,255,255,255" type="QString"/>
                <Option name="joinstyle" value="bevel" type="QString"/>
                <Option name="offset" value="0,0" type="QString"/>
                <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="offset_unit" value="MM" type="QString"/>
                <Option name="outline_color" value="128,128,128,255" type="QString"/>
                <Option name="outline_style" value="no" type="QString"/>
                <Option name="outline_width" value="0" type="QString"/>
                <Option name="outline_width_unit" value="Point" type="QString"/>
                <Option name="style" value="solid" type="QString"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </background>
        <shadow shadowColor="0,0,0,255" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowUnder="0" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowBlendMode="6" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
        <dd_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format plussign="0" rightDirectionSymbol=">" reverseDirectionSymbol="0" leftDirectionSymbol="&lt;" decimals="3" wrapChar="" useMaxLineLengthForAutoWrap="1" multilineAlign="3" formatNumbers="0" autoWrapLength="0" addDirectionSymbol="0" placeDirectionSymbol="0"/>
      <placement xOffset="0" overrunDistanceUnit="MM" offsetType="0" rotationAngle="0" distUnits="MM" offsetUnits="MM" overlapHandling="PreventOverlap" maxCurvedCharAngleOut="-25" centroidInside="0" layerType="PolygonGeometry" repeatDistance="0" lineAnchorType="0" quadOffset="4" geometryGeneratorType="PointGeometry" centroidWhole="0" lineAnchorTextPoint="FollowPlacement" geometryGeneratorEnabled="0" geometryGenerator="" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" dist="0" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" allowDegraded="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" yOffset="0" polygonPlacementFlags="2" preserveRotation="1" priority="5" fitInPolygonOnly="0" lineAnchorPercent="0.5" distMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleIn="25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" placement="0"/>
      <rendering scaleVisibility="0" scaleMin="0" zIndex="0" minFeatureSize="0" obstacleType="1" drawLabels="1" mergeLines="0" fontLimitPixelSize="0" fontMaxPixelSize="10000" obstacleFactor="1" fontMinPixelSize="3" maxNumLabels="2000" labelPerPart="0" unplacedVisibility="0" scaleMax="0" obstacle="1" limitNumLabels="0" upsidedownLabels="0"/>
      <dd_properties>
        <Option type="Map">
          <Option name="name" value="" type="QString"/>
          <Option name="properties"/>
          <Option name="type" value="collection" type="QString"/>
        </Option>
      </dd_properties>
      <callout type="simple">
        <Option type="Map">
          <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
          <Option name="blendMode" value="0" type="int"/>
          <Option name="ddProperties" type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
          <Option name="drawToAllParts" value="false" type="bool"/>
          <Option name="enabled" value="0" type="QString"/>
          <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
          <Option name="lineSymbol" value="&lt;symbol name=&quot;symbol&quot; force_rhr=&quot;0&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; enabled=&quot;1&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
          <Option name="minLength" value="0" type="double"/>
          <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
          <Option name="minLengthUnit" value="MM" type="QString"/>
          <Option name="offsetFromAnchor" value="0" type="double"/>
          <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
          <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
          <Option name="offsetFromLabel" value="0" type="double"/>
          <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
          <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
        </Option>
      </callout>
    </settings>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <attributeactions>
    <defaultAction key="Canvas" value="{cc3706f0-f94a-4cab-8fe2-81169f564e74}"/>
    <actionsetting name="Request Combine" action="from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;from qgis.PyQt.QtWidgets import QMessageBox&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = layer.fields().lookupField(&quot;request_combine&quot;)&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]&#xd;&#xa;try:    &#xd;&#xa;    with edit(layer):&#xd;&#xa;        for sid in selected_ids:&#xd;&#xa;            ft = layer.getFeature(sid)&#xd;&#xa;            name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;            show_error = False&#xd;&#xa;            if not ft.attribute(&quot;combining&quot;):&#xd;&#xa;                QgsMessageLog.logMessage(&quot;combine:&quot;+str(sid)+'  '+name)&#xd;&#xa;                try:&#xd;&#xa;                    layer.changeAttributeValue(sid, field, True)&#xd;&#xa;                except:&#xd;&#xa;                    show_error = True&#xd;&#xa;            else:&#xd;&#xa;                show_error = True&#xd;&#xa;            if show_error:&#xd;&#xa;                QgsMessageLog.logMessage(&quot;Can't request new combine until current run ends for:&quot;+str(sid)+'  '+name)&#xd;&#xa;                iface.messageBar().pushWarning(name,&quot; Can't request new combine until current run ends&quot;)&#xd;&#xa;except AssertionError:&#xd;&#xa;    QMessageBox.information(None, &quot;Layer already in edit mode&quot;, &quot;Can't request new combine if the layer is being edited.\nPlease toggle editing.&quot;)&#xd;&#xa;    # iface.messageBar().pushCritical(&quot;Layer already in edit mode&quot;, &quot;Can't request new combine if the layer is being edited&quot;)&#xd;&#xa;except Exception as e:&#xd;&#xa;    QMessageBox.information(None, &quot;Error Requesting Combine&quot;, str(e))&#xd;&#xa;    " isEnabledOnlyWhenEditable="0" shortTitle="Combine" icon="" type="1" id="{d5ea2536-1039-4645-a609-6b45c0bb948a}" capture="0" notificationMessage="">
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting name="Request Export" action="from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;from qgis.PyQt.QtWidgets import QMessageBox&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = layer.fields().lookupField(&quot;request_export&quot;)&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;# QgsMessageLog.logMessage(&quot;export:&quot;+str(selected_ids))&#xd;&#xa;try:&#xd;&#xa;    with edit(layer):&#xd;&#xa;        for sid in selected_ids:&#xd;&#xa;            ft = layer.getFeature(sid)&#xd;&#xa;            name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;            show_error = False&#xd;&#xa;            if not ft.attribute(&quot;exporting&quot;):&#xd;&#xa;                QgsMessageLog.logMessage(&quot;export:&quot;+str(sid)+'  '+name)&#xd;&#xa;                try:&#xd;&#xa;                    layer.changeAttributeValue(sid, field, True)&#xd;&#xa;                except:&#xd;&#xa;                    show_error = True&#xd;&#xa;            # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;            else:&#xd;&#xa;                show_error = True&#xd;&#xa;            if show_error:&#xd;&#xa;                QgsMessageLog.logMessage(&quot;Can't request new export until current run ends for:&quot;+str(sid)+'  '+name)&#xd;&#xa;                iface.messageBar().pushWarning(name,&quot; Can't request new export until current run ends&quot;)&#xd;&#xa;except AssertionError:&#xd;&#xa;    QMessageBox.information(None, &quot;Layer already in edit mode&quot;, &quot;Can't request new export if the layer is being edited.\nPlease toggle edit mode&quot;)     &#xd;&#xa;    # iface.messageBar().pushCritical(&quot;Layer already in edit mode&quot;, &quot;Can't request new export if the layer is being edited&quot;)&#xd;&#xa;except Exception as e:&#xd;&#xa;    QMessageBox.information(None, &quot;Error Requesting Export&quot;, str(e))&#xd;&#xa;            " isEnabledOnlyWhenEditable="0" shortTitle="Export" icon="" type="1" id="{a5384bb4-deac-4f74-bb5a-19eba357e1b4}" capture="0" notificationMessage="">
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting name="Open Warning Logs" action="import subprocess&#xd;&#xa;from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;QgsMessageLog.logMessage(&quot;export:&quot;+str(selected_ids))&#xd;&#xa;for sid in selected_ids:&#xd;&#xa;    ft = layer.getFeature(sid)&#xd;&#xa;    name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;    # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;    # os.system('notepad '+ft.attribute('combine_warnings_log'))&#xd;&#xa;    for field in [&quot;combine_warnings&quot;, &quot;export_warnings&quot;]:&#xd;&#xa;        file_paths=str(ft.attribute(field))&#xd;&#xa;        QgsMessageLog.logMessage(&quot;open:&quot;+str(selected_ids)+' from '+name+' open '+file_paths)&#xd;&#xa;        QgsMessageLog.logMessage(' split '+str(file_paths.split(&quot;;&quot;)))&#xd;&#xa;        if not file_paths.replace(&quot;;&quot;, ''):&#xd;&#xa;            iface.messageBar().pushInfo(name,&quot; doesn't have an entry for &quot; + field)&#xd;&#xa;        else:&#xd;&#xa;            for file_path in file_paths.split(&quot;;&quot;):&#xd;&#xa;                if file_path and file_path.upper()!='NULL':&#xd;&#xa;                    subprocess.Popen(['notepad',file_path])&#xd;&#xa;       &#xd;&#xa;" isEnabledOnlyWhenEditable="0" shortTitle="Warning Logs" icon="" type="1" id="{8d165c7f-161b-49d2-b198-6262eab41633}" capture="0" notificationMessage="">
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting name="Open Qualifiied DB location" action="import subprocess&#xd;&#xa;import platform&#xd;&#xa;import re&#xd;&#xa;&#xd;&#xa;from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = &quot;qualified_data_locations&quot;&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;&#xd;&#xa;for sid in selected_ids:&#xd;&#xa;    ft = layer.getFeature(sid)&#xd;&#xa;    name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;    QgsMessageLog.logMessage(&quot;choosing from:&quot;+str(selected_ids)+' from '+name+' open '+str(ft.attribute(field)))&#xd;&#xa;    # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;    # os.system('notepad '+ft.attribute('combine_warnings_log'))&#xd;&#xa;    data_paths = str(ft.attribute(field))&#xd;&#xa;    if platform.system() == 'Windows':&#xd;&#xa;        data_paths = data_paths.replace(&quot;/&quot;, &quot;\\&quot;)&#xd;&#xa;    QgsMessageLog.logMessage(data_paths)&#xd;&#xa;    if not data_paths.replace(&quot;;&quot;, ''):&#xd;&#xa;        iface.messageBar().pushInfo(name,&quot; doesn't have an entry for &quot; + field)&#xd;&#xa;    else:&#xd;&#xa;        res_paths={}&#xd;&#xa;        for file_path in data_paths.split(&quot;;&quot;):&#xd;&#xa;            if file_path and file_path.upper()!='NULL':&#xd;&#xa;                try:&#xd;&#xa;                    res=int(re.search(&quot;_res(\d+)_&quot;, file_path).groups()[0])&#xd;&#xa;                except:&#xd;&#xa;                    res=99&#xd;&#xa;                finally:&#xd;&#xa;                    res_paths[res] = file_path&#xd;&#xa;        min_key = min(res_paths.keys())&#xd;&#xa;        show_path = res_paths[min_key]&#xd;&#xa;        QgsMessageLog.logMessage('explorer open--   '+show_path)&#xd;&#xa;        subprocess.Popen(['explorer',show_path])" isEnabledOnlyWhenEditable="0" shortTitle="Bruty Qualified Directory" icon="" type="1" id="{cc3706f0-f94a-4cab-8fe2-81169f564e74}" capture="0" notificationMessage="">
      <actionScope id="Canvas"/>
      <actionScope id="Layer"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting name="Open Qualified Combine VRT Image" action="import os&#xd;&#xa;from qgis.core import QgsRasterLayer, QgsMessageLog&#xd;&#xa;from qgis.utils import iface&#xd;&#xa;import glob&#xd;&#xa;from qgis.core import QgsVectorLayer, QgsProject&#xd;&#xa;active = iface.activeLayer()&#xd;&#xa;grp_name = r&quot;Bruty Combine VRTs&quot;&#xd;&#xa;exist = False&#xd;&#xa;root = QgsProject.instance().layerTreeRoot()&#xd;&#xa;for rgroup in root.findGroups():&#xd;&#xa;    if rgroup.name() == grp_name:&#xd;&#xa;        exist = True&#xd;&#xa;        group = rgroup&#xd;&#xa;        break&#xd;&#xa;if not exist:&#xd;&#xa;    group = root.insertGroup(0, grp_name)&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;for sid in selected_ids:&#xd;&#xa;    ft = layer.getFeature(sid)&#xd;&#xa;    name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;    QgsMessageLog.logMessage(&quot;Open VRT:&quot;+str(sid)+' from '+name)&#xd;&#xa;    if not ft.attribute('combine_errors'):&#xd;&#xa;        full_paths = str(ft.attribute('qualified_data_locations'))&#xd;&#xa;        res_paths={}&#xd;&#xa;        for file_path in full_paths.split(&quot;;&quot;):&#xd;&#xa;            if file_path and file_path.upper()!='NULL':&#xd;&#xa;                try:&#xd;&#xa;                    res=int(re.search(&quot;_res(\d+)_&quot;, file_path).groups()[0])&#xd;&#xa;                except:&#xd;&#xa;                    res=999&#xd;&#xa;                finally:&#xd;&#xa;                    res_paths[res] = file_path&#xd;&#xa;        min_key = min(res_paths.keys())&#xd;&#xa;        layer_name = name+&quot; &quot;+str(min_key)+&quot;m combine.vrt&quot;&#xd;&#xa;        existing_layers = QgsProject.instance().mapLayersByName(layer_name)&#xd;&#xa;        if not existing_layers:&#xd;&#xa;            show_path = res_paths[min_key] + os.path.sep + &quot;combine.vrt&quot;&#xd;&#xa;            if os.path.isfile(show_path):&#xd;&#xa;                lyr = QgsRasterLayer(show_path, layer_name)&#xd;&#xa;                QgsProject.instance().addMapLayer(lyr, False)&#xd;&#xa;                group.addLayer(lyr)&#xd;&#xa;            else:&#xd;&#xa;                QgsMessageLog.logMessage(&quot;VRT not found:&quot;+str(selected_ids)+' from '+name+ &quot; at &quot; + full_path)&#xd;&#xa;        else:&#xd;&#xa;            QgsMessageLog.logMessage(&quot;Already open VRT:&quot;+str(selected_ids)+' from '+name)&#xd;&#xa;    else:&#xd;&#xa;        QgsMessageLog.logMessage(&quot;Combine failed to complete successfully&quot;+str(selected_ids)+' from '+name)&#xd;&#xa;" isEnabledOnlyWhenEditable="0" shortTitle="View Qualified Combine" icon="" type="1" id="{fae17ab6-115a-4fe0-9976-f54397f7d270}" capture="0" notificationMessage="">
      <actionScope id="Canvas"/>
      <actionScope id="Layer"/>
      <actionScope id="Feature"/>
    </actionsetting>
  </attributeactions>
  <previewExpression>concat("production_branch","utm","hemisphere", ' ', "datum", ' ', "locality",' tile:',"tile",' ',"datatype")</previewExpression>
  <layerGeometryType>2</layerGeometryType>
</qgis>
