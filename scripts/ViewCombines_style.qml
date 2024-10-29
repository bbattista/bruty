<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" version="3.38.1-Grenoble" styleCategories="LayerConfiguration|Symbology|Labeling|Actions" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <renderer-v2 forceraster="0" type="RuleRenderer" symbollevels="0" referencescale="-1" enableorderby="1">
    <rules key="{1b1645df-c77c-4f39-80b6-ae0e58b962e7}">
      <rule description="combine_code has a success code -- REMEMBER this has to be a lower symbol level than the Waiting symbology " filter="attribute(@feature, 'combine_code')&lt;=0" label="Combine Complete" key="{5b2673e9-21fe-480a-9c9c-4e8be4d35ca1}" symbol="0"/>
      <rule filter="attribute(@feature, 'combine_code') > 0 or attribute(@feature, 'combine_code') is NULL and attribute(@feature, 'combine_tries') >= 3" label="Combine Failed" key="{229e815b-d9f1-42b3-89b5-15800b1f8820}" symbol="1"/>
      <rule filter="attribute(@feature, 'combine_running') is True" label="Combining" key="{ab98925e-ce62-4acf-820d-cdd4bfad04fb}" symbol="2"/>
      <rule filter="if(attribute(@feature, 'datatype')='enc', attribute(@feature, 'enc_request_time'), attribute(@feature, 'combine_request_time')) > attribute(@feature, 'combine_start_time') or if(attribute(@feature, 'datatype')='enc', attribute(@feature, 'enc_request_time'), attribute(@feature, 'combine_request_time')) > attribute(@feature, 'combine_end_time') or (if(attribute(@feature, 'combine_request_time')='enc', attribute(@feature, 'enc_request_time'), attribute(@feature, 'combine_request_time')) is not NULL and (attribute(@feature, 'combine_start_time') is NULL or attribute(@feature, 'combine_end_time') is NULL))" label="Combine Waiting" key="{85c743d7-d84b-437f-b815-38d89bc1a97b}" symbol="3"/>
      <rule filter="attribute(@feature, 'export_code') > 0 or attribute(@feature, 'export_code') is NULL" label="Export Failed" key="{f5835130-aef8-4ee2-b011-60846c38d2bf}" symbol="4"/>
      <rule filter="attribute(@feature, 'export_running') is True" label="Exporting" key="{3271a311-bd88-46b3-9776-29b6eab64ebf}" symbol="5"/>
      <rule filter="attribute(@feature, 'export_request_time') > attribute(@feature, 'export_start_time') or attribute(@feature, 'export_request_time') > attribute(@feature, 'export_end_time') or (attribute(@feature, 'export_request_time') is not NULL and (attribute(@feature, 'export_start_time') is NULL or attribute(@feature, 'export_end_time') is NULL))" label="Export Waiting" key="{75a19ae7-d33c-496b-8752-76e2ec29a477}" symbol="6"/>
      <rule filter="attribute(@feature, 'export_code')&lt;=0 and (attribute(@feature, 'export_request_time') &lt;= attribute(@feature, 'export_start_time') and attribute(@feature, 'export_start_time') &lt;= attribute(@feature, 'export_end_time')) and (attribute(@feature, 'combine_end_time')&lt; attribute(@feature, 'export_end_time'))" label="Export Complete" key="{62ff6119-ff97-4798-bf22-59c509df3242}" symbol="7"/>
    </rules>
    <symbols>
      <symbol is_animated="0" force_rhr="0" type="fill" alpha="0.5" name="0" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{ad526a6a-dbc6-41c1-b1b6-1c589268d4f5}" locked="0" class="SimpleFill">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
            <Option value="133,182,111,255,rgb:0.52156862745098043,0.71372549019607845,0.43529411764705883,1" type="QString" name="color"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.26" type="QString" name="outline_width"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="solid" type="QString" name="style"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol is_animated="0" force_rhr="0" type="fill" alpha="1" name="1" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="6" enabled="1" id="{b2e31c56-6640-4b9b-9e09-3c8593876f1c}" locked="0" class="SimpleFill">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
            <Option value="200,0,3,255,rgb:0.78431372549019607,0,0.01176470588235294,1" type="QString" name="color"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.26" type="QString" name="outline_width"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="solid" type="QString" name="style"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol is_animated="0" force_rhr="0" type="fill" alpha="1" name="2" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="7" enabled="1" id="{fd150856-b6e6-4534-8491-b0567f37f573}" locked="0" class="SimpleFill">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
            <Option value="246,243,92,255,rgb:0.96470588235294119,0.95294117647058818,0.36078431372549019,1" type="QString" name="color"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.26" type="QString" name="outline_width"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="solid" type="QString" name="style"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol is_animated="0" force_rhr="0" type="fill" alpha="1" name="3" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="5" enabled="1" id="{b4e17c9e-1abd-415f-8c30-eb1e3db3ce31}" locked="0" class="SimpleFill">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
            <Option value="255,158,23,255,rgb:1,0.61960784313725492,0.09019607843137255,1" type="QString" name="color"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.26" type="QString" name="outline_width"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="solid" type="QString" name="style"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol is_animated="0" force_rhr="0" type="fill" alpha="1" name="4" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="2" enabled="1" id="{22d9bcbb-9ca1-4b62-9146-ed4fd2d6431d}" locked="0" class="SimpleFill">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
            <Option value="243,166,178,255,rgb:0.95294117647058818,0.65098039215686276,0.69803921568627447,1" type="QString" name="color"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.26" type="QString" name="outline_width"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="solid" type="QString" name="style"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol is_animated="0" force_rhr="0" type="fill" alpha="1" name="5" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="4" enabled="1" id="{6185eaed-3601-4f00-b263-64065c284dc5}" locked="0" class="SimpleFill">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
            <Option value="16,39,241,255,rgb:0.06274509803921569,0.15294117647058825,0.94509803921568625,1" type="QString" name="color"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.26" type="QString" name="outline_width"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="solid" type="QString" name="style"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol is_animated="0" force_rhr="0" type="fill" alpha="1" name="6" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="3" enabled="1" id="{bff19a11-bd94-40a6-ab13-f408ce9c0452}" locked="0" class="SimpleFill">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
            <Option value="147,143,153,255,rgb:0.57647058823529407,0.5607843137254902,0.59999999999999998,1" type="QString" name="color"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.26" type="QString" name="outline_width"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="solid" type="QString" name="style"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol is_animated="0" force_rhr="0" type="fill" alpha="1" name="7" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="1" enabled="1" id="{33c05751-f82f-4e01-aaaf-f48091991fff}" locked="0" class="SimpleFill">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
            <Option value="157,60,232,255,rgb:0.61568627450980395,0.23529411764705882,0.90980392156862744,1" type="QString" name="color"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.26" type="QString" name="outline_width"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="solid" type="QString" name="style"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <data-defined-properties>
      <Option type="Map">
        <Option value="" type="QString" name="name"/>
        <Option name="properties"/>
        <Option value="collection" type="QString" name="type"/>
      </Option>
    </data-defined-properties>
    <orderby>
      <orderByClause nullsFirst="0" asc="1">"tile_name"</orderByClause>
    </orderby>
  </renderer-v2>
  <selection mode="Default">
    <selectionColor invalid="1"/>
    <selectionSymbol>
      <symbol is_animated="0" force_rhr="0" type="fill" alpha="1" name="" clip_to_extent="1" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" enabled="1" id="{8617fc15-b1a4-47c5-ba35-2e1390675068}" locked="0" class="SimpleFill">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
            <Option value="0,0,255,255,rgb:0,0,1,1" type="QString" name="color"/>
            <Option value="bevel" type="QString" name="joinstyle"/>
            <Option value="0,0" type="QString" name="offset"/>
            <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
            <Option value="MM" type="QString" name="offset_unit"/>
            <Option value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1" type="QString" name="outline_color"/>
            <Option value="solid" type="QString" name="outline_style"/>
            <Option value="0.26" type="QString" name="outline_width"/>
            <Option value="MM" type="QString" name="outline_width_unit"/>
            <Option value="solid" type="QString" name="style"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </selectionSymbol>
  </selection>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style tabStopDistanceMapUnitScale="3x:0,0,0,0,0,0" tabStopDistance="80" fontFamily="Open Sans" fontSize="10" fontStrikeout="0" fontSizeUnit="Point" multilineHeight="1" fontWordSpacing="0" capitalization="0" forcedItalic="0" blendMode="0" fontKerning="1" fieldName="tile" namedStyle="" allowHtml="0" textOpacity="1" useSubstitutions="0" previewBkgrdColor="255,255,255,255,rgb:1,1,1,1" forcedBold="0" textOrientation="horizontal" tabStopDistanceUnit="Point" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontLetterSpacing="0" textColor="50,50,50,255,rgb:0.19607843137254902,0.19607843137254902,0.19607843137254902,1" isExpression="0" legendString="Aa" fontItalic="0" fontWeight="50" multilineHeightUnit="Percentage">
        <families/>
        <text-buffer bufferJoinStyle="128" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferOpacity="1" bufferDraw="0" bufferSizeUnits="MM" bufferColor="250,250,250,255,rgb:0.98039215686274506,0.98039215686274506,0.98039215686274506,1" bufferNoFill="1"/>
        <text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskType="0" maskSize="1.5" maskSize2="1.5" maskedSymbolLayers="" maskSizeUnits="MM" maskEnabled="0" maskOpacity="1"/>
        <background shapeBorderWidth="0" shapeSizeUnit="Point" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeType="0" shapeJoinStyle="64" shapeSVGFile="" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="Point" shapeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeBorderColor="128,128,128,255,rgb:0.50196078431372548,0.50196078431372548,0.50196078431372548,1" shapeRotation="0" shapeBorderWidthUnit="Point" shapeRadiiUnit="Point" shapeOffsetY="0" shapeDraw="0" shapeRotationType="0" shapeFillColor="255,255,255,255,rgb:1,1,1,1" shapeSizeX="0" shapeRadiiY="0" shapeOpacity="1">
          <symbol is_animated="0" force_rhr="0" type="marker" alpha="1" name="markerSymbol" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" id="" locked="0" class="SimpleMarker">
              <Option type="Map">
                <Option value="0" type="QString" name="angle"/>
                <Option value="square" type="QString" name="cap_style"/>
                <Option value="190,207,80,255,rgb:0.74509803921568629,0.81176470588235294,0.31372549019607843,1" type="QString" name="color"/>
                <Option value="1" type="QString" name="horizontal_anchor_point"/>
                <Option value="bevel" type="QString" name="joinstyle"/>
                <Option value="circle" type="QString" name="name"/>
                <Option value="0,0" type="QString" name="offset"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                <Option value="MM" type="QString" name="offset_unit"/>
                <Option value="35,35,35,255,rgb:0.13725490196078433,0.13725490196078433,0.13725490196078433,1" type="QString" name="outline_color"/>
                <Option value="solid" type="QString" name="outline_style"/>
                <Option value="0" type="QString" name="outline_width"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                <Option value="MM" type="QString" name="outline_width_unit"/>
                <Option value="diameter" type="QString" name="scale_method"/>
                <Option value="2" type="QString" name="size"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                <Option value="MM" type="QString" name="size_unit"/>
                <Option value="1" type="QString" name="vertical_anchor_point"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" type="QString" name="name"/>
                  <Option name="properties"/>
                  <Option value="collection" type="QString" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
          <symbol is_animated="0" force_rhr="0" type="fill" alpha="1" name="fillSymbol" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
            <layer pass="0" enabled="1" id="" locked="0" class="SimpleFill">
              <Option type="Map">
                <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                <Option value="255,255,255,255,rgb:1,1,1,1" type="QString" name="color"/>
                <Option value="bevel" type="QString" name="joinstyle"/>
                <Option value="0,0" type="QString" name="offset"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                <Option value="MM" type="QString" name="offset_unit"/>
                <Option value="128,128,128,255,rgb:0.50196078431372548,0.50196078431372548,0.50196078431372548,1" type="QString" name="outline_color"/>
                <Option value="no" type="QString" name="outline_style"/>
                <Option value="0" type="QString" name="outline_width"/>
                <Option value="Point" type="QString" name="outline_width_unit"/>
                <Option value="solid" type="QString" name="style"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" type="QString" name="name"/>
                  <Option name="properties"/>
                  <Option value="collection" type="QString" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </background>
        <shadow shadowScale="100" shadowOpacity="0.69999999999999996" shadowColor="0,0,0,255,rgb:0,0,0,1" shadowOffsetGlobal="1" shadowRadiusUnit="MM" shadowRadiusAlphaOnly="0" shadowDraw="0" shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0"/>
        <dd_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format placeDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" multilineAlign="3" addDirectionSymbol="0" leftDirectionSymbol="&lt;" reverseDirectionSymbol="0" decimals="3" formatNumbers="0" plussign="0" autoWrapLength="0" wrapChar="" rightDirectionSymbol=">"/>
      <placement maximumDistanceUnit="MM" rotationUnit="AngleDegrees" fitInPolygonOnly="0" lineAnchorClipping="0" lineAnchorTextPoint="FollowPlacement" layerType="PolygonGeometry" placement="0" lineAnchorType="0" overrunDistanceUnit="MM" preserveRotation="1" offsetUnits="MM" priority="5" polygonPlacementFlags="2" lineAnchorPercent="0.5" offsetType="0" geometryGenerator="" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" maxCurvedCharAngleOut="-25" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" maximumDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="0" overlapHandling="PreventOverlap" centroidInside="0" quadOffset="4" repeatDistance="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" maximumDistance="0" dist="0" repeatDistanceUnits="MM" xOffset="0" allowDegraded="0" distMapUnitScale="3x:0,0,0,0,0,0" rotationAngle="0" maxCurvedCharAngleIn="25" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" yOffset="0" overrunDistance="0" prioritization="PreferCloser" centroidWhole="0" placementFlags="10" geometryGeneratorType="PointGeometry"/>
      <rendering zIndex="0" scaleMin="0" mergeLines="0" unplacedVisibility="0" fontMaxPixelSize="10000" obstacleFactor="1" fontLimitPixelSize="0" limitNumLabels="0" obstacle="1" labelPerPart="0" scaleMax="0" upsidedownLabels="0" maxNumLabels="2000" scaleVisibility="0" fontMinPixelSize="3" obstacleType="1" minFeatureSize="0" drawLabels="1"/>
      <dd_properties>
        <Option type="Map">
          <Option value="" type="QString" name="name"/>
          <Option name="properties"/>
          <Option value="collection" type="QString" name="type"/>
        </Option>
      </dd_properties>
      <callout type="simple">
        <Option type="Map">
          <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
          <Option value="0" type="int" name="blendMode"/>
          <Option type="Map" name="ddProperties">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
          <Option value="false" type="bool" name="drawToAllParts"/>
          <Option value="0" type="QString" name="enabled"/>
          <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
          <Option value="&lt;symbol is_animated=&quot;0&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot; name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; enabled=&quot;1&quot; id=&quot;{116fb163-791f-4166-97f5-19cb24ae3650}&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255,rgb:0.23529411764705882,0.23529411764705882,0.23529411764705882,1&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
          <Option value="0" type="double" name="minLength"/>
          <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
          <Option value="MM" type="QString" name="minLengthUnit"/>
          <Option value="0" type="double" name="offsetFromAnchor"/>
          <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
          <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
          <Option value="0" type="double" name="offsetFromLabel"/>
          <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
          <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
        </Option>
      </callout>
    </settings>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <attributeactions>
    <defaultAction value="{fae17ab6-115a-4fe0-9976-f54397f7d270}" key="Canvas"/>
    <actionsetting action="from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = layer.fields().lookupField(&quot;request_combine&quot;)&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;with edit(layer):&#xd;&#xa;    for sid in selected_ids:&#xd;&#xa;        ft = layer.getFeature(sid)&#xd;&#xa;        name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;        if not ft.attribute(&quot;combine_running&quot;):&#xd;&#xa;            QgsMessageLog.logMessage(&quot;combine:&quot;+str(sid)+'  '+name)&#xd;&#xa;            layer.changeAttributeValue(sid, field, True)&#xd;&#xa;        else:&#xd;&#xa;            QgsMessageLog.logMessage(&quot;Can't request new combine until current run ends for:&quot;+str(sid)+'  '+name)&#xd;&#xa;            iface.messageBar().pushWarning(name,&quot; Can't request new combine until current run ends&quot;)&#xd;&#xa;" notificationMessage="" icon="" id="{d5ea2536-1039-4645-a609-6b45c0bb948a}" isEnabledOnlyWhenEditable="0" type="1" name="Request Combine" capture="0" shortTitle="Combine">
      <actionScope id="Feature"/>
      <actionScope id="Canvas"/>
      <actionScope id="Layer"/>
    </actionsetting>
    <actionsetting action="from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = layer.fields().lookupField(&quot;request_export&quot;)&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;# QgsMessageLog.logMessage(&quot;export:&quot;+str(selected_ids))&#xd;&#xa;with edit(layer):&#xd;&#xa;    for sid in selected_ids:&#xd;&#xa;        ft = layer.getFeature(sid)&#xd;&#xa;        name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;        if not ft.attribute(&quot;export_running&quot;):&#xd;&#xa;            QgsMessageLog.logMessage(&quot;export:&quot;+str(sid)+'  '+name)&#xd;&#xa;            layer.changeAttributeValue(sid, field, True)&#xd;&#xa;        # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;        else:&#xd;&#xa;            QgsMessageLog.logMessage(&quot;Can't request new export until current run ends for:&quot;+str(sid)+'  '+name)&#xd;&#xa;            iface.messageBar().pushWarning(name,&quot; Can't request new export until current run ends&quot;)&#xd;&#xa;" notificationMessage="" icon="" id="{a5384bb4-deac-4f74-bb5a-19eba357e1b4}" isEnabledOnlyWhenEditable="0" type="1" name="Request Export" capture="0" shortTitle="Export">
      <actionScope id="Feature"/>
      <actionScope id="Canvas"/>
      <actionScope id="Layer"/>
    </actionsetting>
    <actionsetting action="import subprocess&#xd;&#xa;from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = &quot;combine_warnings_log&quot;&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;QgsMessageLog.logMessage(&quot;export:&quot;+str(selected_ids))&#xd;&#xa;with edit(layer):&#xd;&#xa;    for sid in selected_ids:&#xd;&#xa;        ft = layer.getFeature(sid)&#xd;&#xa;        name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;        QgsMessageLog.logMessage(&quot;open:&quot;+str(selected_ids)+' from '+name+' open '+str(ft.attribute(field)))&#xd;&#xa;        # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;        # os.system('notepad '+ft.attribute('combine_warnings_log'))&#xd;&#xa;        subprocess.Popen(['notepad',str(ft.attribute(field))])        " notificationMessage="" icon="" id="{8d165c7f-161b-49d2-b198-6262eab41633}" isEnabledOnlyWhenEditable="0" type="1" name="Open Warnings Log" capture="0" shortTitle="Warnings">
      <actionScope id="Feature"/>
      <actionScope id="Canvas"/>
      <actionScope id="Layer"/>
    </actionsetting>
    <actionsetting action="import subprocess&#xd;&#xa;from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = &quot;combine_info_log&quot;&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;QgsMessageLog.logMessage(&quot;export:&quot;+str(selected_ids))&#xd;&#xa;with edit(layer):&#xd;&#xa;    for sid in selected_ids:&#xd;&#xa;        ft = layer.getFeature(sid)&#xd;&#xa;        name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;        QgsMessageLog.logMessage(&quot;open:&quot;+str(selected_ids)+' from '+name+' open '+str(ft.attribute(field)))&#xd;&#xa;        # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;        # os.system('notepad '+ft.attribute('combine_warnings_log'))&#xd;&#xa;        subprocess.Popen(['notepad',str(ft.attribute(field))])        " notificationMessage="" icon="" id="{da0952b9-4856-41c3-9b05-4a6d928e1b58}" isEnabledOnlyWhenEditable="0" type="1" name="Open Info Log" capture="0" shortTitle="Info">
      <actionScope id="Feature"/>
      <actionScope id="Canvas"/>
      <actionScope id="Layer"/>
    </actionsetting>
    <actionsetting action="import subprocess&#xd;&#xa;import platform&#xd;&#xa;&#xd;&#xa;from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = &quot;combine_data_location&quot;&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;QgsMessageLog.logMessage(&quot;export:&quot;+str(selected_ids))&#xd;&#xa;with edit(layer):&#xd;&#xa;    for sid in selected_ids:&#xd;&#xa;        ft = layer.getFeature(sid)&#xd;&#xa;        name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;        QgsMessageLog.logMessage(&quot;open:&quot;+str(selected_ids)+' from '+name+' open '+str(ft.attribute(field)))&#xd;&#xa;        # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;        # os.system('notepad '+ft.attribute('combine_warnings_log'))&#xd;&#xa;        data_path = str(ft.attribute(field))&#xd;&#xa;        if platform.system() == 'Windows':&#xd;&#xa;            data_path = data_path.replace(&quot;/&quot;, &quot;\\&quot;)&#xd;&#xa;        QgsMessageLog.logMessage(data_path)&#xd;&#xa;        subprocess.Popen(['explorer',data_path])        " notificationMessage="" icon="" id="{cc3706f0-f94a-4cab-8fe2-81169f564e74}" isEnabledOnlyWhenEditable="0" type="1" name="Open Bruty db location" capture="0" shortTitle="Bruty Directory">
      <actionScope id="Feature"/>
      <actionScope id="Canvas"/>
      <actionScope id="Layer"/>
    </actionsetting>
    <actionsetting action="import os&#xd;&#xa;from qgis.core import QgsRasterLayer, QgsMessageLog&#xd;&#xa;from qgis.utils import iface&#xd;&#xa;import glob&#xd;&#xa;from qgis.core import QgsVectorLayer, QgsProject&#xd;&#xa;active = iface.activeLayer()&#xd;&#xa;grp_name = r&quot;Bruty Combine VRTs&quot;&#xd;&#xa;exist = False&#xd;&#xa;root = QgsProject.instance().layerTreeRoot()&#xd;&#xa;for rgroup in root.findGroups():&#xd;&#xa;    if rgroup.name() == grp_name:&#xd;&#xa;        exist = True&#xd;&#xa;        group = rgroup&#xd;&#xa;        break&#xd;&#xa;if not exist:&#xd;&#xa;    group = root.insertGroup(0, grp_name)&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;for sid in selected_ids:&#xd;&#xa;    ft = layer.getFeature(sid)&#xd;&#xa;    name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;    layer_name = name+&quot; combine.vrt&quot;&#xd;&#xa;    QgsMessageLog.logMessage(&quot;Open VRT:&quot;+str(selected_ids)+' from '+name)&#xd;&#xa;    full_path = str(ft.attribute('combine_data_location')) + os.path.sep + &quot;combine.vrt&quot;&#xd;&#xa;    if ft.attribute('combine_code')&lt;=0:&#xd;&#xa;        existing_layers = QgsProject.instance().mapLayersByName(layer_name)&#xd;&#xa;        if not existing_layers:&#xd;&#xa;            if os.path.isfile(full_path):&#xd;&#xa;                lyr = QgsRasterLayer(full_path, layer_name)&#xd;&#xa;                QgsProject.instance().addMapLayer(lyr, False)&#xd;&#xa;                group.addLayer(lyr)&#xd;&#xa;            else:&#xd;&#xa;                QgsMessageLog.logMessage(&quot;VRT not found:&quot;+str(selected_ids)+' from '+name+ &quot; at &quot; + full_path)&#xd;&#xa;        else:&#xd;&#xa;            QgsMessageLog.logMessage(&quot;Already open VRT:&quot;+str(selected_ids)+' from '+name)&#xd;&#xa;    else:&#xd;&#xa;        QgsMessageLog.logMessage(&quot;Combine failed to complete successfully&quot;+str(selected_ids)+' from '+name)" notificationMessage="" icon="" id="{fae17ab6-115a-4fe0-9976-f54397f7d270}" isEnabledOnlyWhenEditable="0" type="1" name="Open Combine VRT Image" capture="0" shortTitle="View Combine">
      <actionScope id="Feature"/>
      <actionScope id="Canvas"/>
      <actionScope id="Layer"/>
    </actionsetting>
  </attributeactions>
  <previewExpression>concat("production_branch","utm","hemisphere", ' ', "datum", ' ', "locality",' tile:',"tile",' ',"datatype",' ',if("for_navigation", '', 'not_nav'),' ',resolution,'m')</previewExpression>
  <layerGeometryType>2</layerGeometryType>
</qgis>
