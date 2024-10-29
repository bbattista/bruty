<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.38.1-Grenoble" styleCategories="LayerConfiguration|Symbology|Labeling|Actions" readOnly="0" labelsEnabled="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <renderer-v2 symbollevels="0" referencescale="-1" forceraster="0" type="RuleRenderer" enableorderby="1">
    <rules key="{1b1645df-c77c-4f39-80b6-ae0e58b962e7}">
      <rule symbol="0" filter="attribute(@feature, 'combine_code')&lt;=0" description="combine_code has a success code -- REMEMBER this has to be a lower symbol level than the Waiting symbology " key="{5b2673e9-21fe-480a-9c9c-4e8be4d35ca1}" label="Combine Complete"/>
      <rule symbol="1" filter="attribute(@feature, 'combine_code') > 0 or attribute(@feature, 'combine_code') is NULL and attribute(@feature, 'combine_tries') >= 3" key="{229e815b-d9f1-42b3-89b5-15800b1f8820}" label="Combine Failed"/>
      <rule symbol="2" filter="attribute(@feature, 'combine_running') is True" key="{ab98925e-ce62-4acf-820d-cdd4bfad04fb}" label="Combining"/>
      <rule symbol="3" filter="if(attribute(@feature, 'datatype')='enc', attribute(@feature, 'enc_request_time'), attribute(@feature, 'combine_request_time')) > attribute(@feature, 'combine_start_time') or if(attribute(@feature, 'datatype')='enc', attribute(@feature, 'enc_request_time'), attribute(@feature, 'combine_request_time')) > attribute(@feature, 'combine_end_time') or (if(attribute(@feature, 'combine_request_time')='enc', attribute(@feature, 'enc_request_time'), attribute(@feature, 'combine_request_time')) is not NULL and (attribute(@feature, 'combine_start_time') is NULL or attribute(@feature, 'combine_end_time') is NULL))" key="{85c743d7-d84b-437f-b815-38d89bc1a97b}" label="Combine Waiting"/>
      <rule symbol="4" filter="attribute(@feature, 'export_code') > 0 or attribute(@feature, 'export_code') is NULL" key="{f5835130-aef8-4ee2-b011-60846c38d2bf}" label="Export Failed"/>
      <rule symbol="5" filter="attribute(@feature, 'export_running') is True" key="{3271a311-bd88-46b3-9776-29b6eab64ebf}" label="Exporting"/>
      <rule symbol="6" filter="attribute(@feature, 'export_request_time') > attribute(@feature, 'export_start_time') or attribute(@feature, 'export_request_time') > attribute(@feature, 'export_end_time') or (attribute(@feature, 'export_request_time') is not NULL and (attribute(@feature, 'export_start_time') is NULL or attribute(@feature, 'export_end_time') is NULL))" key="{75a19ae7-d33c-496b-8752-76e2ec29a477}" label="Export Waiting"/>
      <rule symbol="7" filter="attribute(@feature, 'export_code')&lt;=0 and (attribute(@feature, 'export_request_time') &lt;= attribute(@feature, 'export_start_time') and attribute(@feature, 'export_start_time') &lt;= attribute(@feature, 'export_end_time')) and (attribute(@feature, 'combine_end_time')&lt; attribute(@feature, 'export_end_time'))" key="{62ff6119-ff97-4798-bf22-59c509df3242}" label="Export Complete"/>
    </rules>
    <symbols>
      <symbol name="0" clip_to_extent="1" alpha="1" type="fill" is_animated="0" force_rhr="0" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" id="{d4268b3e-3709-4960-a011-fc2fe4ef612f}" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="51,160,44,255,rgb:0.20000000000000001,0.62745098039215685,0.17254901960784313,1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1"/>
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
      <symbol name="1" clip_to_extent="1" alpha="1" type="fill" is_animated="0" force_rhr="0" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="6" id="{d2848b9c-5314-4c8b-9eab-879ae0d0e37f}" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="200,0,3,255,rgb:0.78431372549019607,0,0.01176470588235294,1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1"/>
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
      <symbol name="2" clip_to_extent="1" alpha="1" type="fill" is_animated="0" force_rhr="0" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="7" id="{e41512e9-eaea-4097-ab0a-39ea3a1e01f1}" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="178,223,138,255,rgb:0.69803921568627447,0.87450980392156863,0.54117647058823526,1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1"/>
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
      <symbol name="3" clip_to_extent="1" alpha="1" type="fill" is_animated="0" force_rhr="0" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="5" id="{f9b058b4-35c6-4dbf-acb3-02a692e082b2}" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="255,158,23,255,rgb:1,0.61960784313725492,0.09019607843137255,1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1"/>
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
      <symbol name="4" clip_to_extent="1" alpha="1" type="fill" is_animated="0" force_rhr="0" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="2" id="{fe9037e0-72a7-4ff1-a44d-6fc0295cc3e6}" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="243,166,178,255,rgb:0.95294117647058818,0.65098039215686276,0.69803921568627447,1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1"/>
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
      <symbol name="5" clip_to_extent="1" alpha="1" type="fill" is_animated="0" force_rhr="0" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="4" id="{d0f83ed5-938d-4318-9bc9-8ad3fde85765}" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="16,39,241,255,rgb:0.06274509803921569,0.15294117647058825,0.94509803921568625,1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1"/>
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
      <symbol name="6" clip_to_extent="1" alpha="1" type="fill" is_animated="0" force_rhr="0" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="3" id="{0eeba130-be6e-4fa2-9ada-28ee367dee97}" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="147,143,153,255,rgb:0.57647058823529407,0.5607843137254902,0.59999999999999998,1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1"/>
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
      <symbol name="7" clip_to_extent="1" alpha="1" type="fill" is_animated="0" force_rhr="0" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="1" id="{9412d2c9-dc0b-49ed-a20b-8d3a3b454f85}" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="157,60,232,255,rgb:0.61568627450980395,0.23529411764705882,0.90980392156862744,1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1"/>
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
    <data-defined-properties>
      <Option type="Map">
        <Option name="name" type="QString" value=""/>
        <Option name="properties"/>
        <Option name="type" type="QString" value="collection"/>
      </Option>
    </data-defined-properties>
    <orderby>
      <orderByClause asc="1" nullsFirst="0">"tile_name"</orderByClause>
    </orderby>
  </renderer-v2>
  <selection mode="Default">
    <selectionColor invalid="1"/>
    <selectionSymbol>
      <symbol name="" clip_to_extent="1" alpha="1" type="fill" is_animated="0" force_rhr="0" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" id="{8617fc15-b1a4-47c5-ba35-2e1390675068}" enabled="1" class="SimpleFill" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="0,0,255,255,rgb:0,0,1,1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1"/>
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
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style fontWeight="75" tabStopDistanceMapUnitScale="3x:0,0,0,0,0,0" fontWordSpacing="0" capitalization="0" legendString="Aa" previewBkgrdColor="255,255,255,255,rgb:1,1,1,1" namedStyle="" fontKerning="1" fontFamily="Open Sans" fieldName="tile" isExpression="0" textOpacity="1" blendMode="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" multilineHeightUnit="Percentage" allowHtml="0" multilineHeight="1" fontStrikeout="0" forcedItalic="0" tabStopDistance="80" fontLetterSpacing="0" fontSize="10" textColor="50,50,50,255,rgb:0.19607843137254902,0.19607843137254902,0.19607843137254902,1" fontUnderline="0" tabStopDistanceUnit="Point" fontItalic="0" fontSizeUnit="Point" forcedBold="0" textOrientation="horizontal" useSubstitutions="0">
        <families/>
        <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferColor="250,250,250,255,rgb:0.98039215686274506,0.98039215686274506,0.98039215686274506,1" bufferOpacity="1" bufferSize="1" bufferJoinStyle="128" bufferBlendMode="0" bufferDraw="0" bufferSizeUnits="MM"/>
        <text-mask maskOpacity="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers="" maskEnabled="0" maskType="0" maskSize2="1.5" maskSizeUnits="MM" maskJoinStyle="128" maskSize="1.5"/>
        <background shapeOffsetUnit="Point" shapeFillColor="255,255,255,255,rgb:1,1,1,1" shapeOffsetX="0" shapeBorderWidthUnit="Point" shapeOffsetY="0" shapeBlendMode="0" shapeSVGFile="" shapeDraw="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSizeUnit="Point" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255,rgb:0.50196078431372548,0.50196078431372548,0.50196078431372548,1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeType="0" shapeRadiiUnit="Point" shapeRadiiY="0" shapeRotation="0" shapeSizeX="0" shapeType="0" shapeBorderWidth="0" shapeRadiiX="0" shapeRotationType="0" shapeSizeY="0">
          <symbol name="markerSymbol" clip_to_extent="1" alpha="1" type="marker" is_animated="0" force_rhr="0" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" id="" enabled="1" class="SimpleMarker" locked="0">
              <Option type="Map">
                <Option name="angle" type="QString" value="0"/>
                <Option name="cap_style" type="QString" value="square"/>
                <Option name="color" type="QString" value="190,207,80,255,rgb:0.74509803921568629,0.81176470588235294,0.31372549019607843,1"/>
                <Option name="horizontal_anchor_point" type="QString" value="1"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="name" type="QString" value="circle"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1"/>
                <Option name="outline_style" type="QString" value="solid"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="scale_method" type="QString" value="diameter"/>
                <Option name="size" type="QString" value="2"/>
                <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="size_unit" type="QString" value="MM"/>
                <Option name="vertical_anchor_point" type="QString" value="1"/>
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
          <symbol name="fillSymbol" clip_to_extent="1" alpha="1" type="fill" is_animated="0" force_rhr="0" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" id="" enabled="1" class="SimpleFill" locked="0">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="255,255,255,255,rgb:1,1,1,1"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="128,128,128,255,rgb:0.50196078431372548,0.50196078431372548,0.50196078431372548,1"/>
                <Option name="outline_style" type="QString" value="no"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="Point"/>
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
        </background>
        <shadow shadowDraw="0" shadowUnder="0" shadowRadius="1.5" shadowOffsetAngle="135" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowBlendMode="6" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowScale="100" shadowOffsetGlobal="1" shadowColor="0,0,0,255,rgb:0,0,0,1" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
        <dd_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format plussign="0" rightDirectionSymbol=">" multilineAlign="3" formatNumbers="0" decimals="3" reverseDirectionSymbol="0" wrapChar="" autoWrapLength="0" addDirectionSymbol="0" placeDirectionSymbol="0" leftDirectionSymbol="&lt;" useMaxLineLengthForAutoWrap="1"/>
      <placement placement="0" lineAnchorPercent="0.5" xOffset="0" priority="5" geometryGenerator="" maxCurvedCharAngleIn="25" maximumDistanceMapUnitScale="3x:0,0,0,0,0,0" maximumDistanceUnit="MM" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" offsetType="0" distUnits="MM" maxCurvedCharAngleOut="-25" overrunDistanceUnit="MM" placementFlags="10" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" maximumDistance="0" lineAnchorType="0" lineAnchorTextPoint="FollowPlacement" centroidInside="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overlapHandling="PreventOverlap" polygonPlacementFlags="2" dist="0" rotationAngle="0" repeatDistanceUnits="MM" yOffset="0" quadOffset="4" geometryGeneratorType="PointGeometry" distMapUnitScale="3x:0,0,0,0,0,0" layerType="PolygonGeometry" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" overrunDistance="0" fitInPolygonOnly="0" lineAnchorClipping="0" centroidWhole="0" prioritization="PreferCloser" geometryGeneratorEnabled="0" offsetUnits="MM" allowDegraded="0" rotationUnit="AngleDegrees"/>
      <rendering mergeLines="0" maxNumLabels="2000" minFeatureSize="0" upsidedownLabels="0" scaleMin="0" scaleMax="0" fontLimitPixelSize="0" obstacle="1" fontMinPixelSize="3" obstacleFactor="1" labelPerPart="0" obstacleType="1" unplacedVisibility="0" scaleVisibility="0" limitNumLabels="0" fontMaxPixelSize="10000" zIndex="0" drawLabels="1"/>
      <dd_properties>
        <Option type="Map">
          <Option name="name" type="QString" value=""/>
          <Option name="properties"/>
          <Option name="type" type="QString" value="collection"/>
        </Option>
      </dd_properties>
      <callout type="simple">
        <Option type="Map">
          <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
          <Option name="blendMode" type="int" value="0"/>
          <Option name="ddProperties" type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
          <Option name="drawToAllParts" type="bool" value="false"/>
          <Option name="enabled" type="QString" value="0"/>
          <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
          <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; type=&quot;line&quot; is_animated=&quot;0&quot; force_rhr=&quot;0&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; id=&quot;{0445ebac-d995-49da-8fd5-0fed7f457827}&quot; enabled=&quot;1&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255,rgb:0.23529411764705882,0.23529411764705882,0.23529411764705882,1&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
          <Option name="minLength" type="double" value="0"/>
          <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
          <Option name="minLengthUnit" type="QString" value="MM"/>
          <Option name="offsetFromAnchor" type="double" value="0"/>
          <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
          <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
          <Option name="offsetFromLabel" type="double" value="0"/>
          <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
          <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
        </Option>
      </callout>
    </settings>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <attributeactions>
    <defaultAction key="Canvas" value="{da0952b9-4856-41c3-9b05-4a6d928e1b58}"/>
    <actionsetting name="Request Combine" isEnabledOnlyWhenEditable="0" action="from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = layer.fields().lookupField(&quot;request_combine&quot;)&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;with edit(layer):&#xd;&#xa;    for sid in selected_ids:&#xd;&#xa;        ft = layer.getFeature(sid)&#xd;&#xa;        name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;        show_error = False&#xd;&#xa;        if not ft.attribute(&quot;combine_running&quot;):&#xd;&#xa;            QgsMessageLog.logMessage(&quot;combine:&quot;+str(sid)+'  '+name)&#xd;&#xa;            try:&#xd;&#xa;                layer.changeAttributeValue(sid, field, True)&#xd;&#xa;            except:&#xd;&#xa;                show_error = True&#xd;&#xa;        else:&#xd;&#xa;            show_error = True&#xd;&#xa;        if show_error:&#xd;&#xa;            QgsMessageLog.logMessage(&quot;Can't request new combine until current run ends for:&quot;+str(sid)+'  '+name)&#xd;&#xa;            iface.messageBar().pushWarning(name,&quot; Can't request new combine until current run ends&quot;)&#xd;&#xa;" id="{d5ea2536-1039-4645-a609-6b45c0bb948a}" icon="" capture="0" shortTitle="Combine" type="1" notificationMessage="">
      <actionScope id="Feature"/>
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
    </actionsetting>
    <actionsetting name="Request Export" isEnabledOnlyWhenEditable="0" action="from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = layer.fields().lookupField(&quot;request_export&quot;)&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;# QgsMessageLog.logMessage(&quot;export:&quot;+str(selected_ids))&#xd;&#xa;with edit(layer):&#xd;&#xa;    for sid in selected_ids:&#xd;&#xa;        ft = layer.getFeature(sid)&#xd;&#xa;        name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;        show_error = False&#xd;&#xa;        if not ft.attribute(&quot;export_running&quot;):&#xd;&#xa;            QgsMessageLog.logMessage(&quot;export:&quot;+str(sid)+'  '+name)&#xd;&#xa;            try:&#xd;&#xa;                layer.changeAttributeValue(sid, field, True)&#xd;&#xa;            except:&#xd;&#xa;                show_error = True&#xd;&#xa;        # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;        else:&#xd;&#xa;            show_error = True&#xd;&#xa;        if show_error:&#xd;&#xa;            QgsMessageLog.logMessage(&quot;Can't request new export until current run ends for:&quot;+str(sid)+'  '+name)&#xd;&#xa;            iface.messageBar().pushWarning(name,&quot; Can't request new export until current run ends&quot;)" id="{a5384bb4-deac-4f74-bb5a-19eba357e1b4}" icon="" capture="0" shortTitle="Export" type="1" notificationMessage="">
      <actionScope id="Feature"/>
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
    </actionsetting>
    <actionsetting name="Open Warnings Log" isEnabledOnlyWhenEditable="0" action="import subprocess&#xd;&#xa;from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = &quot;combine_warnings_log&quot;&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;QgsMessageLog.logMessage(&quot;export:&quot;+str(selected_ids))&#xd;&#xa;for sid in selected_ids:&#xd;&#xa;    ft = layer.getFeature(sid)&#xd;&#xa;    name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;    QgsMessageLog.logMessage(&quot;open:&quot;+str(selected_ids)+' from '+name+' open '+str(ft.attribute(field)))&#xd;&#xa;    # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;    # os.system('notepad '+ft.attribute('combine_warnings_log'))&#xd;&#xa;    file_path=str(ft.attribute(field))&#xd;&#xa;    if file_path and file_path.upper()!='NULL':&#xd;&#xa;        subprocess.Popen(['notepad',file_path])&#xd;&#xa;    else:&#xd;&#xa;        iface.messageBar().pushInfo(name,&quot; doesn't have a warnings log listed&quot;)&#xd;&#xa;       &#xd;&#xa;" id="{8d165c7f-161b-49d2-b198-6262eab41633}" icon="" capture="0" shortTitle="Warnings" type="1" notificationMessage="">
      <actionScope id="Feature"/>
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
    </actionsetting>
    <actionsetting name="Open Info Log" isEnabledOnlyWhenEditable="0" action="import subprocess&#xd;&#xa;from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = &quot;combine_info_log&quot;&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;QgsMessageLog.logMessage(&quot;export:&quot;+str(selected_ids))&#xd;&#xa;for sid in selected_ids:&#xd;&#xa;    ft = layer.getFeature(sid)&#xd;&#xa;    name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;    QgsMessageLog.logMessage(&quot;open:&quot;+str(selected_ids)+' from '+name+' open '+str(ft.attribute(field)))&#xd;&#xa;    # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;    # os.system('notepad '+ft.attribute('combine_warnings_log'))&#xd;&#xa;    file_path=str(ft.attribute(field))&#xd;&#xa;    if file_path and file_path.upper()!='NULL':&#xd;&#xa;        subprocess.Popen(['notepad',file_path])&#xd;&#xa;    else:&#xd;&#xa;        iface.messageBar().pushInfo(name,&quot; doesn't have a info log listed&quot;)" id="{da0952b9-4856-41c3-9b05-4a6d928e1b58}" icon="" capture="0" shortTitle="Info" type="1" notificationMessage="">
      <actionScope id="Feature"/>
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
    </actionsetting>
    <actionsetting name="Open Bruty db location" isEnabledOnlyWhenEditable="0" action="import subprocess&#xd;&#xa;import platform&#xd;&#xa;&#xd;&#xa;from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = &quot;combine_data_location&quot;&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;QgsMessageLog.logMessage(&quot;export:&quot;+str(selected_ids))&#xd;&#xa;with edit(layer):&#xd;&#xa;    for sid in selected_ids:&#xd;&#xa;        ft = layer.getFeature(sid)&#xd;&#xa;        name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;        QgsMessageLog.logMessage(&quot;open:&quot;+str(selected_ids)+' from '+name+' open '+str(ft.attribute(field)))&#xd;&#xa;        # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;        # os.system('notepad '+ft.attribute('combine_warnings_log'))&#xd;&#xa;        data_path = str(ft.attribute(field))&#xd;&#xa;        if platform.system() == 'Windows':&#xd;&#xa;            data_path = data_path.replace(&quot;/&quot;, &quot;\\&quot;)&#xd;&#xa;        QgsMessageLog.logMessage(data_path)&#xd;&#xa;        subprocess.Popen(['explorer',data_path])        " id="{cc3706f0-f94a-4cab-8fe2-81169f564e74}" icon="" capture="0" shortTitle="Bruty Directory" type="1" notificationMessage="">
      <actionScope id="Feature"/>
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
    </actionsetting>
    <actionsetting name="Open Combine VRT Image" isEnabledOnlyWhenEditable="0" action="import os&#xd;&#xa;from qgis.core import QgsRasterLayer, QgsMessageLog&#xd;&#xa;from qgis.utils import iface&#xd;&#xa;import glob&#xd;&#xa;from qgis.core import QgsVectorLayer, QgsProject&#xd;&#xa;active = iface.activeLayer()&#xd;&#xa;grp_name = r&quot;Bruty Combine VRTs&quot;&#xd;&#xa;exist = False&#xd;&#xa;root = QgsProject.instance().layerTreeRoot()&#xd;&#xa;for rgroup in root.findGroups():&#xd;&#xa;    if rgroup.name() == grp_name:&#xd;&#xa;        exist = True&#xd;&#xa;        group = rgroup&#xd;&#xa;        break&#xd;&#xa;if not exist:&#xd;&#xa;    group = root.insertGroup(0, grp_name)&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;for sid in selected_ids:&#xd;&#xa;    ft = layer.getFeature(sid)&#xd;&#xa;    name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;    layer_name = name+&quot; combine.vrt&quot;&#xd;&#xa;    QgsMessageLog.logMessage(&quot;Open VRT:&quot;+str(selected_ids)+' from '+name)&#xd;&#xa;    full_path = str(ft.attribute('combine_data_location')) + os.path.sep + &quot;combine.vrt&quot;&#xd;&#xa;    if ft.attribute('combine_code')&lt;=0:&#xd;&#xa;        existing_layers = QgsProject.instance().mapLayersByName(layer_name)&#xd;&#xa;        if not existing_layers:&#xd;&#xa;            if os.path.isfile(full_path):&#xd;&#xa;                lyr = QgsRasterLayer(full_path, layer_name)&#xd;&#xa;                QgsProject.instance().addMapLayer(lyr, False)&#xd;&#xa;                group.addLayer(lyr)&#xd;&#xa;            else:&#xd;&#xa;                QgsMessageLog.logMessage(&quot;VRT not found:&quot;+str(selected_ids)+' from '+name+ &quot; at &quot; + full_path)&#xd;&#xa;        else:&#xd;&#xa;            QgsMessageLog.logMessage(&quot;Already open VRT:&quot;+str(selected_ids)+' from '+name)&#xd;&#xa;    else:&#xd;&#xa;        QgsMessageLog.logMessage(&quot;Combine failed to complete successfully&quot;+str(selected_ids)+' from '+name)" id="{fae17ab6-115a-4fe0-9976-f54397f7d270}" icon="" capture="0" shortTitle="View Combine" type="1" notificationMessage="">
      <actionScope id="Feature"/>
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
    </actionsetting>
  </attributeactions>
  <previewExpression>concat("production_branch","utm","hemisphere", ' ', "datum", ' ', "locality",' tile:',"tile",' ',"datatype",' ',if("for_navigation", '', 'not_nav'),' ',resolution,'m')</previewExpression>
  <layerGeometryType>2</layerGeometryType>
</qgis>
