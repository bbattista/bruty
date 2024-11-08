<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="LayerConfiguration|Symbology|Labeling|Actions" readOnly="0" version="3.28.3-Firenze" labelsEnabled="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <renderer-v2 symbollevels="0" type="RuleRenderer" forceraster="0" enableorderby="1" referencescale="-1">
    <rules key="{1b1645df-c77c-4f39-80b6-ae0e58b962e7}">
      <rule symbol="0" label="Combine Complete" filter="not attribute(@feature, 'combine_errors') AND (attribute(@feature, 'combine_newer_than_export') OR attribute(@feature, 'enc_newer_than_export'))" description="combine_code has a success code -- REMEMBER this has to be a lower symbol level than the Waiting symbology " key="{5b2673e9-21fe-480a-9c9c-4e8be4d35ca1}"/>
      <rule symbol="1" label="ENCs newer than Export" filter="attribute(@feature, 'export_complete') AND attribute(@feature, 'enc_newer_than_export')" key="{6bc095ea-5f6c-4100-9caa-89fef84283f6}"/>
      <rule symbol="2" label="Combine Failed" filter="attribute(@feature, 'combine_errors')" key="{229e815b-d9f1-42b3-89b5-15800b1f8820}"/>
      <rule symbol="3" label="Combining" filter="attribute(@feature, 'combining') > 0" key="{ab98925e-ce62-4acf-820d-cdd4bfad04fb}"/>
      <rule symbol="4" label="Combine Waiting" filter="attribute(@feature, 'combine_waiting') > 0" key="{85c743d7-d84b-437f-b815-38d89bc1a97b}"/>
      <rule symbol="5" label="Export Failed" filter="attribute(@feature, 'export_errors')" key="{f5835130-aef8-4ee2-b011-60846c38d2bf}"/>
      <rule symbol="6" label="Exporting" filter="attribute(@feature, 'exporting') > 0" key="{3271a311-bd88-46b3-9776-29b6eab64ebf}"/>
      <rule symbol="7" label="Export Waiting" filter="attribute(@feature, 'export_waiting') > 0" key="{75a19ae7-d33c-496b-8752-76e2ec29a477}"/>
      <rule symbol="8" label="Export Complete" filter="attribute(@feature, 'export_complete')" key="{62ff6119-ff97-4798-bf22-59c509df3242}"/>
      <rule symbol="9" label="Not Combined" filter="attribute(@feature, 'never_combined')" key="{8a9158c7-35fe-4cbd-bab3-4434ae539db6}"/>
    </rules>
    <symbols>
      <symbol name="0" is_animated="0" alpha="1" type="fill" force_rhr="0" frame_rate="10" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" locked="0" enabled="1" pass="0">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="51,160,44,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
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
      <symbol name="1" is_animated="0" alpha="1" type="fill" force_rhr="0" frame_rate="10" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="GradientFill" locked="0" enabled="1" pass="2">
          <Option type="Map">
            <Option value="0" name="angle" type="QString"/>
            <Option value="0,0,255,255" name="color" type="QString"/>
            <Option value="13,8,135,255" name="color1" type="QString"/>
            <Option value="240,249,33,255" name="color2" type="QString"/>
            <Option value="0" name="color_type" type="QString"/>
            <Option value="0" name="coordinate_mode" type="QString"/>
            <Option value="ccw" name="direction" type="QString"/>
            <Option value="0" name="discrete" type="QString"/>
            <Option value="30,142,14,255" name="gradient_color2" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="gradient" name="rampType" type="QString"/>
            <Option value="0,0" name="reference_point1" type="QString"/>
            <Option value="0" name="reference_point1_iscentroid" type="QString"/>
            <Option value="1,1" name="reference_point2" type="QString"/>
            <Option value="0" name="reference_point2_iscentroid" type="QString"/>
            <Option value="rgb" name="spec" type="QString"/>
            <Option value="0" name="spread" type="QString"/>
            <Option value="0.0196078;27,6,141,255;rgb;ccw:0.0392157;38,5,145,255;rgb;ccw:0.0588235;47,5,150,255;rgb;ccw:0.0784314;56,4,154,255;rgb;ccw:0.0980392;65,4,157,255;rgb;ccw:0.117647;73,3,160,255;rgb;ccw:0.137255;81,2,163,255;rgb;ccw:0.156863;89,1,165,255;rgb;ccw:0.176471;97,0,167,255;rgb;ccw:0.196078;105,0,168,255;rgb;ccw:0.215686;113,0,168,255;rgb;ccw:0.235294;120,1,168,255;rgb;ccw:0.254902;128,4,168,255;rgb;ccw:0.27451;135,7,166,255;rgb;ccw:0.294118;142,12,164,255;rgb;ccw:0.313725;149,17,161,255;rgb;ccw:0.333333;156,23,158,255;rgb;ccw:0.352941;162,29,154,255;rgb;ccw:0.372549;168,34,150,255;rgb;ccw:0.392157;174,40,146,255;rgb;ccw:0.411765;180,46,141,255;rgb;ccw:0.431373;186,51,136,255;rgb;ccw:0.45098;191,57,132,255;rgb;ccw:0.470588;196,62,127,255;rgb;ccw:0.490196;201,68,122,255;rgb;ccw:0.509804;205,74,118,255;rgb;ccw:0.529412;210,79,113,255;rgb;ccw:0.54902;214,85,109,255;rgb;ccw:0.568627;218,91,105,255;rgb;ccw:0.588235;222,97,100,255;rgb;ccw:0.607843;226,102,96,255;rgb;ccw:0.627451;230,108,92,255;rgb;ccw:0.647059;233,114,87,255;rgb;ccw:0.666667;237,121,83,255;rgb;ccw:0.686275;240,127,79,255;rgb;ccw:0.705882;243,133,75,255;rgb;ccw:0.72549;245,140,70,255;rgb;ccw:0.745098;247,147,66,255;rgb;ccw:0.764706;249,154,62,255;rgb;ccw:0.784314;251,161,57,255;rgb;ccw:0.803922;252,168,53,255;rgb;ccw:0.823529;253,175,49,255;rgb;ccw:0.843137;254,183,45,255;rgb;ccw:0.862745;254,190,42,255;rgb;ccw:0.882353;253,198,39,255;rgb;ccw:0.901961;252,206,37,255;rgb;ccw:0.921569;251,215,36,255;rgb;ccw:0.941176;248,223,37,255;rgb;ccw:0.960784;246,232,38,255;rgb;ccw:0.980392;243,240,39,255;rgb;ccw" name="stops" type="QString"/>
            <Option value="1" name="type" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleFill" locked="0" enabled="1" pass="0">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="247,247,247,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="0,0,0,255" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="0.36" name="outline_width" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="no" name="style" type="QString"/>
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
      <symbol name="2" is_animated="0" alpha="1" type="fill" force_rhr="0" frame_rate="10" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" locked="0" enabled="1" pass="5">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="200,0,3,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
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
      <symbol name="3" is_animated="0" alpha="1" type="fill" force_rhr="0" frame_rate="10" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" locked="0" enabled="1" pass="9">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="178,223,138,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
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
      <symbol name="4" is_animated="0" alpha="1" type="fill" force_rhr="0" frame_rate="10" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" locked="0" enabled="1" pass="8">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="255,158,23,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
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
      <symbol name="5" is_animated="0" alpha="1" type="fill" force_rhr="0" frame_rate="10" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" locked="0" enabled="1" pass="3">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="243,166,178,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
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
      <symbol name="6" is_animated="0" alpha="1" type="fill" force_rhr="0" frame_rate="10" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" locked="0" enabled="1" pass="5">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="84,170,241,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
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
      <symbol name="7" is_animated="0" alpha="1" type="fill" force_rhr="0" frame_rate="10" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" locked="0" enabled="1" pass="4">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="147,143,153,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
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
      <symbol name="8" is_animated="0" alpha="1" type="fill" force_rhr="0" frame_rate="10" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" locked="0" enabled="1" pass="1">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="8,8,232,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
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
      <symbol name="9" is_animated="0" alpha="1" type="fill" force_rhr="0" frame_rate="10" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" locked="0" enabled="1" pass="7">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="255,254,255,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
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
        <layer class="LinePatternFill" locked="0" enabled="1" pass="7">
          <Option type="Map">
            <Option value="45" name="angle" type="QString"/>
            <Option value="during_render" name="clip_mode" type="QString"/>
            <Option value="150,150,150,255" name="color" type="QString"/>
            <Option value="feature" name="coordinate_reference" type="QString"/>
            <Option value="4" name="distance" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="distance_map_unit_scale" type="QString"/>
            <Option value="MM" name="distance_unit" type="QString"/>
            <Option value="0.26" name="line_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="line_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="line_width_unit" type="QString"/>
            <Option value="0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@9@1" is_animated="0" alpha="1" type="line" force_rhr="0" frame_rate="10" clip_to_extent="1">
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer class="SimpleLine" locked="0" enabled="1" pass="0">
              <Option type="Map">
                <Option value="0" name="align_dash_pattern" type="QString"/>
                <Option value="square" name="capstyle" type="QString"/>
                <Option value="5;2" name="customdash" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
                <Option value="MM" name="customdash_unit" type="QString"/>
                <Option value="0" name="dash_pattern_offset" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
                <Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
                <Option value="0" name="draw_inside_polygon" type="QString"/>
                <Option value="bevel" name="joinstyle" type="QString"/>
                <Option value="150,150,150,255" name="line_color" type="QString"/>
                <Option value="solid" name="line_style" type="QString"/>
                <Option value="0.26" name="line_width" type="QString"/>
                <Option value="MM" name="line_width_unit" type="QString"/>
                <Option value="0" name="offset" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                <Option value="MM" name="offset_unit" type="QString"/>
                <Option value="0" name="ring_filter" type="QString"/>
                <Option value="0" name="trim_distance_end" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale" type="QString"/>
                <Option value="MM" name="trim_distance_end_unit" type="QString"/>
                <Option value="0" name="trim_distance_start" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale" type="QString"/>
                <Option value="MM" name="trim_distance_start_unit" type="QString"/>
                <Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
                <Option value="0" name="use_custom_dash" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
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
        </layer>
      </symbol>
    </symbols>
    <orderby>
      <orderByClause asc="1" nullsFirst="0">"tile_name"</orderByClause>
    </orderby>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style isExpression="0" useSubstitutions="0" forcedBold="0" multilineHeightUnit="Percentage" previewBkgrdColor="255,255,255,255" namedStyle="Bold" fontLetterSpacing="0" capitalization="0" fontUnderline="0" fontFamily="Open Sans" fontSize="10" fontWeight="75" allowHtml="0" textOrientation="horizontal" fontItalic="0" fontWordSpacing="0" fieldName="tile" forcedItalic="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" textColor="50,50,50,255" fontKerning="1" legendString="Aa" fontSizeUnit="Point" multilineHeight="1" textOpacity="1" blendMode="0" fontStrikeout="0">
        <families/>
        <text-buffer bufferBlendMode="0" bufferJoinStyle="128" bufferColor="250,250,250,255" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="0" bufferSize="1" bufferSizeUnits="MM" bufferNoFill="1"/>
        <text-mask maskSizeUnits="MM" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers="" maskJoinStyle="128" maskType="0" maskOpacity="1" maskSize="1.5"/>
        <background shapeSizeX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeSizeType="0" shapeSizeY="0" shapeOffsetY="0" shapeDraw="0" shapeRadiiUnit="Point" shapeBorderWidth="0" shapeType="0" shapeBlendMode="0" shapeRadiiY="0" shapeRotation="0" shapeSizeUnit="Point" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSVGFile="" shapeJoinStyle="64" shapeOffsetX="0" shapeFillColor="255,255,255,255" shapeOpacity="1" shapeOffsetUnit="Point" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeRadiiX="0" shapeBorderWidthUnit="Point">
          <symbol name="markerSymbol" is_animated="0" alpha="1" type="marker" force_rhr="0" frame_rate="10" clip_to_extent="1">
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer class="SimpleMarker" locked="0" enabled="1" pass="0">
              <Option type="Map">
                <Option value="0" name="angle" type="QString"/>
                <Option value="square" name="cap_style" type="QString"/>
                <Option value="190,207,80,255" name="color" type="QString"/>
                <Option value="1" name="horizontal_anchor_point" type="QString"/>
                <Option value="bevel" name="joinstyle" type="QString"/>
                <Option value="circle" name="name" type="QString"/>
                <Option value="0,0" name="offset" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                <Option value="MM" name="offset_unit" type="QString"/>
                <Option value="35,35,35,255" name="outline_color" type="QString"/>
                <Option value="solid" name="outline_style" type="QString"/>
                <Option value="0" name="outline_width" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                <Option value="MM" name="outline_width_unit" type="QString"/>
                <Option value="diameter" name="scale_method" type="QString"/>
                <Option value="2" name="size" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                <Option value="MM" name="size_unit" type="QString"/>
                <Option value="1" name="vertical_anchor_point" type="QString"/>
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
          <symbol name="fillSymbol" is_animated="0" alpha="1" type="fill" force_rhr="0" frame_rate="10" clip_to_extent="1">
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer class="SimpleFill" locked="0" enabled="1" pass="0">
              <Option type="Map">
                <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                <Option value="255,255,255,255" name="color" type="QString"/>
                <Option value="bevel" name="joinstyle" type="QString"/>
                <Option value="0,0" name="offset" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                <Option value="MM" name="offset_unit" type="QString"/>
                <Option value="128,128,128,255" name="outline_color" type="QString"/>
                <Option value="no" name="outline_style" type="QString"/>
                <Option value="0" name="outline_width" type="QString"/>
                <Option value="Point" name="outline_width_unit" type="QString"/>
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
        </background>
        <shadow shadowColor="0,0,0,255" shadowDraw="0" shadowUnder="0" shadowOffsetGlobal="1" shadowScale="100" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowRadiusUnit="MM" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowBlendMode="6"/>
        <dd_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format wrapChar="" multilineAlign="3" leftDirectionSymbol="&lt;" plussign="0" reverseDirectionSymbol="0" rightDirectionSymbol=">" placeDirectionSymbol="0" addDirectionSymbol="0" autoWrapLength="0" useMaxLineLengthForAutoWrap="1" formatNumbers="0" decimals="3"/>
      <placement repeatDistanceUnits="MM" rotationUnit="AngleDegrees" rotationAngle="0" polygonPlacementFlags="2" lineAnchorType="0" placement="0" offsetType="0" overrunDistanceUnit="MM" lineAnchorTextPoint="FollowPlacement" lineAnchorClipping="0" yOffset="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" fitInPolygonOnly="0" offsetUnits="MM" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" centroidWhole="0" geometryGeneratorEnabled="0" dist="0" quadOffset="4" priority="5" overrunDistance="0" maxCurvedCharAngleOut="-25" layerType="PolygonGeometry" xOffset="0" repeatDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" allowDegraded="0" lineAnchorPercent="0.5" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleIn="25" geometryGenerator="" overlapHandling="PreventOverlap" preserveRotation="1" geometryGeneratorType="PointGeometry"/>
      <rendering labelPerPart="0" zIndex="0" obstacleFactor="1" fontMinPixelSize="3" scaleVisibility="0" mergeLines="0" obstacle="1" limitNumLabels="0" minFeatureSize="0" drawLabels="1" scaleMin="0" maxNumLabels="2000" scaleMax="0" upsidedownLabels="0" unplacedVisibility="0" fontLimitPixelSize="0" fontMaxPixelSize="10000" obstacleType="1"/>
      <dd_properties>
        <Option type="Map">
          <Option value="" name="name" type="QString"/>
          <Option name="properties"/>
          <Option value="collection" name="type" type="QString"/>
        </Option>
      </dd_properties>
      <callout type="simple">
        <Option type="Map">
          <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
          <Option value="0" name="blendMode" type="int"/>
          <Option name="ddProperties" type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
          <Option value="false" name="drawToAllParts" type="bool"/>
          <Option value="0" name="enabled" type="QString"/>
          <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
          <Option value="&lt;symbol name=&quot;symbol&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot; frame_rate=&quot;10&quot; clip_to_extent=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; locked=&quot;0&quot; enabled=&quot;1&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
          <Option value="0" name="minLength" type="double"/>
          <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
          <Option value="MM" name="minLengthUnit" type="QString"/>
          <Option value="0" name="offsetFromAnchor" type="double"/>
          <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
          <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
          <Option value="0" name="offsetFromLabel" type="double"/>
          <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
          <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
        </Option>
      </callout>
    </settings>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <attributeactions>
    <defaultAction value="{d5ea2536-1039-4645-a609-6b45c0bb948a}" key="Canvas"/>
    <actionsetting name="Request Combine" type="1" notificationMessage="" shortTitle="Combine" id="{d5ea2536-1039-4645-a609-6b45c0bb948a}" icon="" action="from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;from qgis.PyQt.QtWidgets import QMessageBox&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = layer.fields().lookupField(&quot;request_combine&quot;)&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]&#xd;&#xa;try:    &#xd;&#xa;    with edit(layer):&#xd;&#xa;        for sid in selected_ids:&#xd;&#xa;            ft = layer.getFeature(sid)&#xd;&#xa;            name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;            show_error = False&#xd;&#xa;            if not ft.attribute(&quot;combine_running&quot;):&#xd;&#xa;                QgsMessageLog.logMessage(&quot;combine:&quot;+str(sid)+'  '+name)&#xd;&#xa;                try:&#xd;&#xa;                    layer.changeAttributeValue(sid, field, True)&#xd;&#xa;                except:&#xd;&#xa;                    show_error = True&#xd;&#xa;            else:&#xd;&#xa;                show_error = True&#xd;&#xa;            if show_error:&#xd;&#xa;                QgsMessageLog.logMessage(&quot;Can't request new combine until current run ends for:&quot;+str(sid)+'  '+name)&#xd;&#xa;                iface.messageBar().pushWarning(name,&quot; Can't request new combine until current run ends&quot;)&#xd;&#xa;except AssertionError:&#xd;&#xa;    QMessageBox.information(None, &quot;Layer already in edit mode&quot;, &quot;Can't request new combine if the layer is being edited.\nPlease toggle editing.&quot;)     &#xd;&#xa;    # iface.messageBar().pushCritical(&quot;Layer already in edit mode&quot;, &quot;Can't request new combine if the layer is being edited&quot;)&#xd;&#xa;    " isEnabledOnlyWhenEditable="0" capture="0">
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting name="Request Export" type="1" notificationMessage="" shortTitle="Export" id="{a5384bb4-deac-4f74-bb5a-19eba357e1b4}" icon="" action="from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;from qgis.PyQt.QtWidgets import QMessageBox&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = layer.fields().lookupField(&quot;request_export&quot;)&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;# QgsMessageLog.logMessage(&quot;export:&quot;+str(selected_ids))&#xd;&#xa;try:&#xd;&#xa;    with edit(layer):&#xd;&#xa;        for sid in selected_ids:&#xd;&#xa;            ft = layer.getFeature(sid)&#xd;&#xa;            name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;            show_error = False&#xd;&#xa;            if not ft.attribute(&quot;export_running&quot;):&#xd;&#xa;                QgsMessageLog.logMessage(&quot;export:&quot;+str(sid)+'  '+name)&#xd;&#xa;                try:&#xd;&#xa;                    layer.changeAttributeValue(sid, field, True)&#xd;&#xa;                except:&#xd;&#xa;                    show_error = True&#xd;&#xa;            # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;            else:&#xd;&#xa;                show_error = True&#xd;&#xa;            if show_error:&#xd;&#xa;                QgsMessageLog.logMessage(&quot;Can't request new export until current run ends for:&quot;+str(sid)+'  '+name)&#xd;&#xa;                iface.messageBar().pushWarning(name,&quot; Can't request new export until current run ends&quot;)&#xd;&#xa;except AssertionError:&#xd;&#xa;    QMessageBox.information(None, &quot;Layer already in edit mode&quot;, &quot;Can't request new export if the layer is being edited.\nPlease toggle edit mode&quot;)     &#xd;&#xa;    # iface.messageBar().pushCritical(&quot;Layer already in edit mode&quot;, &quot;Can't request new export if the layer is being edited&quot;)&#xd;&#xa;            " isEnabledOnlyWhenEditable="0" capture="0">
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting name="Open Warning Logs" type="1" notificationMessage="" shortTitle="Warning Logs" id="{8d165c7f-161b-49d2-b198-6262eab41633}" icon="" action="import subprocess&#xd;&#xa;from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;QgsMessageLog.logMessage(&quot;export:&quot;+str(selected_ids))&#xd;&#xa;for sid in selected_ids:&#xd;&#xa;    ft = layer.getFeature(sid)&#xd;&#xa;    name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;    # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;    # os.system('notepad '+ft.attribute('combine_warnings_log'))&#xd;&#xa;    for field in [&quot;combine_warnings_log&quot;, &quot;export_warnings_log&quot;]:&#xd;&#xa;        file_path=str(ft.attribute(field))&#xd;&#xa;        QgsMessageLog.logMessage(&quot;open:&quot;+str(selected_ids)+' from '+name+' open '+file_path)&#xd;&#xa;        if file_path and file_path.upper()!='NULL':&#xd;&#xa;            subprocess.Popen(['notepad',file_path])&#xd;&#xa;        else:&#xd;&#xa;            iface.messageBar().pushInfo(name,&quot; doesn't have a and entry for &quot; + field)&#xd;&#xa;       &#xd;&#xa;" isEnabledOnlyWhenEditable="0" capture="0">
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting name="Open Info Logs" type="1" notificationMessage="" shortTitle="Info Logs" id="{da0952b9-4856-41c3-9b05-4a6d928e1b58}" icon="" action="import subprocess&#xd;&#xa;from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;QgsMessageLog.logMessage(&quot;export:&quot;+str(selected_ids))&#xd;&#xa;for sid in selected_ids:&#xd;&#xa;    ft = layer.getFeature(sid)&#xd;&#xa;    name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;    # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;    # os.system('notepad '+ft.attribute('combine_warnings_log'))&#xd;&#xa;    for field in [&quot;combine_info_log&quot;, &quot;export_info_log&quot;]:&#xd;&#xa;        file_path=str(ft.attribute(field))&#xd;&#xa;        QgsMessageLog.logMessage(&quot;open:&quot;+str(selected_ids)+' from '+name+' open '+file_path)&#xd;&#xa;        if file_path and file_path.upper()!='NULL':&#xd;&#xa;            subprocess.Popen(['notepad',file_path])&#xd;&#xa;        else:&#xd;&#xa;            iface.messageBar().pushInfo(name,&quot; doesn't have an entry for &quot; + field)&#xd;&#xa;" isEnabledOnlyWhenEditable="0" capture="0">
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting name="Open Bruty db location" type="1" notificationMessage="" shortTitle="Bruty Directory" id="{cc3706f0-f94a-4cab-8fe2-81169f564e74}" icon="" action="import subprocess&#xd;&#xa;import platform&#xd;&#xa;&#xd;&#xa;from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = &quot;combine_data_location&quot;&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;QgsMessageLog.logMessage(&quot;export:&quot;+str(selected_ids))&#xd;&#xa;with edit(layer):&#xd;&#xa;    for sid in selected_ids:&#xd;&#xa;        ft = layer.getFeature(sid)&#xd;&#xa;        name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;        QgsMessageLog.logMessage(&quot;open:&quot;+str(selected_ids)+' from '+name+' open '+str(ft.attribute(field)))&#xd;&#xa;        # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;        # os.system('notepad '+ft.attribute('combine_warnings_log'))&#xd;&#xa;        data_path = str(ft.attribute(field))&#xd;&#xa;        if platform.system() == 'Windows':&#xd;&#xa;            data_path = data_path.replace(&quot;/&quot;, &quot;\\&quot;)&#xd;&#xa;        QgsMessageLog.logMessage(data_path)&#xd;&#xa;        subprocess.Popen(['explorer',data_path])        " isEnabledOnlyWhenEditable="0" capture="0">
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting name="Open Combine VRT Image" type="1" notificationMessage="" shortTitle="View Combine" id="{fae17ab6-115a-4fe0-9976-f54397f7d270}" icon="" action="import os&#xd;&#xa;from qgis.core import QgsRasterLayer, QgsMessageLog&#xd;&#xa;from qgis.utils import iface&#xd;&#xa;import glob&#xd;&#xa;from qgis.core import QgsVectorLayer, QgsProject&#xd;&#xa;active = iface.activeLayer()&#xd;&#xa;grp_name = r&quot;Bruty Combine VRTs&quot;&#xd;&#xa;exist = False&#xd;&#xa;root = QgsProject.instance().layerTreeRoot()&#xd;&#xa;for rgroup in root.findGroups():&#xd;&#xa;    if rgroup.name() == grp_name:&#xd;&#xa;        exist = True&#xd;&#xa;        group = rgroup&#xd;&#xa;        break&#xd;&#xa;if not exist:&#xd;&#xa;    group = root.insertGroup(0, grp_name)&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;for sid in selected_ids:&#xd;&#xa;    ft = layer.getFeature(sid)&#xd;&#xa;    name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;    layer_name = name+&quot; combine.vrt&quot;&#xd;&#xa;    QgsMessageLog.logMessage(&quot;Open VRT:&quot;+str(selected_ids)+' from '+name)&#xd;&#xa;    full_path = str(ft.attribute('combine_data_location')) + os.path.sep + &quot;combine.vrt&quot;&#xd;&#xa;    if ft.attribute('combine_code')&lt;=0:&#xd;&#xa;        existing_layers = QgsProject.instance().mapLayersByName(layer_name)&#xd;&#xa;        if not existing_layers:&#xd;&#xa;            if os.path.isfile(full_path):&#xd;&#xa;                lyr = QgsRasterLayer(full_path, layer_name)&#xd;&#xa;                QgsProject.instance().addMapLayer(lyr, False)&#xd;&#xa;                group.addLayer(lyr)&#xd;&#xa;            else:&#xd;&#xa;                QgsMessageLog.logMessage(&quot;VRT not found:&quot;+str(selected_ids)+' from '+name+ &quot; at &quot; + full_path)&#xd;&#xa;        else:&#xd;&#xa;            QgsMessageLog.logMessage(&quot;Already open VRT:&quot;+str(selected_ids)+' from '+name)&#xd;&#xa;    else:&#xd;&#xa;        QgsMessageLog.logMessage(&quot;Combine failed to complete successfully&quot;+str(selected_ids)+' from '+name)" isEnabledOnlyWhenEditable="0" capture="0">
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
  </attributeactions>
  <previewExpression>concat("production_branch","utm","hemisphere", ' ', "datum", ' ', "locality",' tile:',"tile",' ',"datatype",' ',if("for_navigation", '', 'not_nav'),' ',resolution,'m')</previewExpression>
  <layerGeometryType>2</layerGeometryType>
</qgis>
