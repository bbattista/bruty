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
      <rule symbol="0" label="Combine Complete" filter="attribute(@feature, 'combine_code')&lt;=0" description="combine_code has a success code -- REMEMBER this has to be a lower symbol level than the Waiting symbology " key="{5b2673e9-21fe-480a-9c9c-4e8be4d35ca1}"/>
      <rule symbol="1" label="Combine Failed" filter="attribute(@feature, 'combine_code') > 0 or attribute(@feature, 'combine_code') is NULL and attribute(@feature, 'combine_tries') >= 3" key="{229e815b-d9f1-42b3-89b5-15800b1f8820}"/>
      <rule symbol="2" label="Combining" filter="attribute(@feature, 'combine_running') is True" key="{ab98925e-ce62-4acf-820d-cdd4bfad04fb}"/>
      <rule symbol="3" label="Combine Waiting" filter="if(attribute(@feature, 'datatype')='enc', attribute(@feature, 'enc_request_time'), attribute(@feature, 'combine_request_time')) > attribute(@feature, 'combine_start_time') or if(attribute(@feature, 'datatype')='enc', attribute(@feature, 'enc_request_time'), attribute(@feature, 'combine_request_time')) > attribute(@feature, 'combine_end_time') or (if(attribute(@feature, 'combine_request_time')='enc', attribute(@feature, 'enc_request_time'), attribute(@feature, 'combine_request_time')) is not NULL and (attribute(@feature, 'combine_start_time') is NULL or attribute(@feature, 'combine_end_time') is NULL))" key="{85c743d7-d84b-437f-b815-38d89bc1a97b}"/>
      <rule symbol="4" label="Export Failed" filter="attribute(@feature, 'export_code') > 0 or attribute(@feature, 'export_code') is NULL" key="{f5835130-aef8-4ee2-b011-60846c38d2bf}"/>
      <rule symbol="5" label="Exporting" filter="attribute(@feature, 'export_running') is True" key="{3271a311-bd88-46b3-9776-29b6eab64ebf}"/>
      <rule symbol="6" label="Export Waiting" filter="attribute(@feature, 'export_request_time') > attribute(@feature, 'export_start_time') or attribute(@feature, 'export_request_time') > attribute(@feature, 'export_end_time') or (attribute(@feature, 'export_request_time') is not NULL and (attribute(@feature, 'export_start_time') is NULL or attribute(@feature, 'export_end_time') is NULL))" key="{75a19ae7-d33c-496b-8752-76e2ec29a477}"/>
      <rule symbol="7" label="Export Complete" filter="attribute(@feature, 'export_code')&lt;=0 and (attribute(@feature, 'export_request_time') &lt;= attribute(@feature, 'export_start_time') and attribute(@feature, 'export_start_time') &lt;= attribute(@feature, 'export_end_time'))" key="{62ff6119-ff97-4798-bf22-59c509df3242}"/>
    </rules>
    <symbols>
      <symbol name="0" is_animated="0" alpha="0.5" type="fill" force_rhr="0" frame_rate="10" clip_to_extent="1">
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
            <Option value="133,182,111,255" name="color" type="QString"/>
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
        <layer class="SimpleFill" locked="0" enabled="1" pass="6">
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
      <symbol name="2" is_animated="0" alpha="1" type="fill" force_rhr="0" frame_rate="10" clip_to_extent="1">
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
            <Option value="246,243,92,255" name="color" type="QString"/>
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
        <layer class="SimpleFill" locked="0" enabled="1" pass="5">
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
      <symbol name="4" is_animated="0" alpha="1" type="fill" force_rhr="0" frame_rate="10" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" locked="0" enabled="1" pass="2">
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
      <symbol name="5" is_animated="0" alpha="1" type="fill" force_rhr="0" frame_rate="10" clip_to_extent="1">
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
            <Option value="16,39,241,255" name="color" type="QString"/>
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
        <layer class="SimpleFill" locked="0" enabled="1" pass="3">
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
      <symbol name="7" is_animated="0" alpha="1" type="fill" force_rhr="0" frame_rate="10" clip_to_extent="1">
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
            <Option value="157,60,232,255" name="color" type="QString"/>
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
    </symbols>
    <orderby>
      <orderByClause asc="1" nullsFirst="0">"tile_name"</orderByClause>
    </orderby>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style isExpression="1" useSubstitutions="0" forcedBold="0" multilineHeightUnit="Percentage" previewBkgrdColor="255,255,255,255" namedStyle="Bold Italic" fontLetterSpacing="0" capitalization="0" fontUnderline="0" fontFamily="Open Sans" fontSize="12" fontWeight="75" allowHtml="0" textOrientation="horizontal" fontItalic="1" fontWordSpacing="0" fieldName="concat(&quot;tile&quot;,'')" forcedItalic="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" textColor="50,50,50,255" fontKerning="1" legendString="Aa" fontSizeUnit="Point" multilineHeight="1" textOpacity="1" blendMode="0" fontStrikeout="0">
        <families/>
        <text-buffer bufferBlendMode="0" bufferJoinStyle="128" bufferColor="250,250,250,255" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="0" bufferSize="1" bufferSizeUnits="MM" bufferNoFill="1"/>
        <text-mask maskSizeUnits="MM" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers="" maskJoinStyle="128" maskType="0" maskOpacity="1" maskSize="0"/>
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
                <Option value="196,60,57,255" name="color" type="QString"/>
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
    <defaultAction value="{cc3706f0-f94a-4cab-8fe2-81169f564e74}" key="Canvas"/>
    <actionsetting name="Request Combine" type="1" notificationMessage="" shortTitle="Combine" id="{d5ea2536-1039-4645-a609-6b45c0bb948a}" icon="" action="from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = layer.fields().lookupField(&quot;request_combine&quot;)&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;with edit(layer):&#xd;&#xa;    for sid in selected_ids:&#xd;&#xa;        ft = layer.getFeature(sid)&#xd;&#xa;        name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;        QgsMessageLog.logMessage(&quot;combine:&quot;+str(selected_ids)+'  '+name)&#xd;&#xa;        layer.changeAttributeValue(sid, field, True)&#xd;&#xa;        # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;" isEnabledOnlyWhenEditable="0" capture="0">
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting name="Request Export" type="1" notificationMessage="" shortTitle="Export" id="{a5384bb4-deac-4f74-bb5a-19eba357e1b4}" icon="" action="from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = layer.fields().lookupField(&quot;request_export&quot;)&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;# QgsMessageLog.logMessage(&quot;export:&quot;+str(selected_ids))&#xd;&#xa;with edit(layer):&#xd;&#xa;    for sid in selected_ids:&#xd;&#xa;        ft = layer.getFeature(sid)&#xd;&#xa;        name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;        QgsMessageLog.logMessage(&quot;export:&quot;+str(selected_ids)+'  '+name)&#xd;&#xa;        layer.changeAttributeValue(sid, field, True)&#xd;&#xa;        # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;" isEnabledOnlyWhenEditable="0" capture="0">
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting name="Open Warnings Log" type="1" notificationMessage="" shortTitle="Warnings" id="{8d165c7f-161b-49d2-b198-6262eab41633}" icon="" action="import subprocess&#xd;&#xa;from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = &quot;combine_warnings_log&quot;&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;QgsMessageLog.logMessage(&quot;export:&quot;+str(selected_ids))&#xd;&#xa;with edit(layer):&#xd;&#xa;    for sid in selected_ids:&#xd;&#xa;        ft = layer.getFeature(sid)&#xd;&#xa;        name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;        QgsMessageLog.logMessage(&quot;open:&quot;+str(selected_ids)+' from '+name+' open '+str(ft.attribute(field)))&#xd;&#xa;        # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;        # os.system('notepad '+ft.attribute('combine_warnings_log'))&#xd;&#xa;        subprocess.Popen(['notepad',str(ft.attribute(field))])        " isEnabledOnlyWhenEditable="0" capture="0">
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting name="Open Info Log" type="1" notificationMessage="" shortTitle="Info" id="{da0952b9-4856-41c3-9b05-4a6d928e1b58}" icon="" action="import subprocess&#xd;&#xa;from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = &quot;combine_info_log&quot;&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;QgsMessageLog.logMessage(&quot;export:&quot;+str(selected_ids))&#xd;&#xa;with edit(layer):&#xd;&#xa;    for sid in selected_ids:&#xd;&#xa;        ft = layer.getFeature(sid)&#xd;&#xa;        name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;        QgsMessageLog.logMessage(&quot;open:&quot;+str(selected_ids)+' from '+name+' open '+str(ft.attribute(field)))&#xd;&#xa;        # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;        # os.system('notepad '+ft.attribute('combine_warnings_log'))&#xd;&#xa;        subprocess.Popen(['notepad',str(ft.attribute(field))])        " isEnabledOnlyWhenEditable="0" capture="0">
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
