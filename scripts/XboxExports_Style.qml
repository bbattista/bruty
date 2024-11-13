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
      <rule key="{5b2673e9-21fe-480a-9c9c-4e8be4d35ca1}" label="Complete" symbol="0" filter="attribute(@feature, 'navigation') and attribute(@feature, 'internal') and attribute(@feature, 'public')"/>
      <rule key="{229e815b-d9f1-42b3-89b5-15800b1f8820}" label="Failed" symbol="1" filter="not(attribute(@feature, 'navigation') and attribute(@feature, 'internal') and attribute(@feature, 'public'))"/>
    </rules>
    <symbols>
      <symbol name="0" force_rhr="0" is_animated="0" alpha="0.5" clip_to_extent="1" type="fill" frame_rate="10">
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
            <Option name="color" value="133,182,111,255" type="QString"/>
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
        <layer pass="0" enabled="1" class="SimpleFill" locked="0">
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
    </symbols>
    <orderby>
      <orderByClause nullsFirst="0" asc="1">"tile_name"</orderByClause>
    </orderby>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style fontItalic="0" fontWeight="50" blendMode="0" textOrientation="horizontal" textColor="50,50,50,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontWordSpacing="0" multilineHeightUnit="Percentage" capitalization="0" previewBkgrdColor="255,255,255,255" textOpacity="1" legendString="Aa" fontLetterSpacing="0" fontSizeUnit="Point" isExpression="0" fontUnderline="0" useSubstitutions="0" namedStyle="Regular" forcedBold="0" fontStrikeout="0" multilineHeight="1" fieldName="tile" fontSize="10" allowHtml="0" forcedItalic="0" fontFamily="Open Sans" fontKerning="1">
        <families/>
        <text-buffer bufferSize="1" bufferBlendMode="0" bufferSizeUnits="MM" bufferOpacity="1" bufferColor="250,250,250,255" bufferNoFill="1" bufferJoinStyle="128" bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0"/>
        <text-mask maskType="0" maskEnabled="0" maskJoinStyle="128" maskSizeUnits="MM" maskSize="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskedSymbolLayers=""/>
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
                <Option name="color" value="133,182,111,255" type="QString"/>
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
    <defaultAction key="Canvas" value="{edaf6d57-9177-42b7-af69-1bfb79fe2171}"/>
    <actionsetting name="Open Bruty export" action="import os&#xd;&#xa;from qgis.core import QgsRasterLayer&#xd;&#xa;from qgis.utils import iface&#xd;&#xa;import glob&#xd;&#xa;from qgis.core import QgsVectorLayer, QgsProject&#xd;&#xa;active = iface.activeLayer()&#xd;&#xa;grp_name = r&quot;Bruty &quot;+active.name()+&quot; Exports&quot;&#xd;&#xa;exist = False&#xd;&#xa;root = QgsProject.instance().layerTreeRoot()&#xd;&#xa;for rgroup in root.findGroups():&#xd;&#xa;    if rgroup.name() == grp_name:&#xd;&#xa;        exist = True&#xd;&#xa;        group = rgroup&#xd;&#xa;        break&#xd;&#xa;if not exist:&#xd;&#xa;    group = root.insertGroup(0, grp_name)&#xd;&#xa;bag = r&quot;[%data_location%]&quot;&#xd;&#xa;base = os.path.basename(bag)&#xd;&#xa;layers = QgsProject.instance().mapLayersByName(base)&#xd;&#xa;if not layers:&#xd;&#xa;    if os.path.isfile(bag):&#xd;&#xa;        lyr = QgsRasterLayer(bag, base)&#xd;&#xa;        QgsProject.instance().addMapLayer(lyr, False)&#xd;&#xa;        group.addLayer(lyr)" isEnabledOnlyWhenEditable="0" shortTitle="Open Bruty export" icon="" type="1" id="{edaf6d57-9177-42b7-af69-1bfb79fe2171}" capture="0" notificationMessage="">
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting name="Approve XBox Tile" action="from qgis.utils import iface&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = layer.fields().lookupField(&quot;approved&quot;)&#xd;&#xa;with edit(layer):&#xd;&#xa;    current = layer.getFeature([%$id%]).attribute(field)&#xd;&#xa;    layer.changeAttributeValue([%$id%], field, not current)&#xd;&#xa;    iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; Approved&quot;)" isEnabledOnlyWhenEditable="0" shortTitle="Approve XBox Tile" icon="" type="1" id="{5b3f83c1-8d92-4311-990e-98260bed5132}" capture="0" notificationMessage="">
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
  </attributeactions>
  <previewExpression>concat("production_branch","utm","hemisphere", ' ', "datum", ' ', "locality",' tile:',"tile",' ',"datatype",' ',if("for_navigation", '', 'not_nav'),' ',resolution,'m')</previewExpression>
  <layerGeometryType>2</layerGeometryType>
</qgis>
