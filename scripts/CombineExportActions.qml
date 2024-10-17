<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.28.3-Firenze" styleCategories="Actions">
  <attributeactions>
    <defaultAction value="{d5ea2536-1039-4645-a609-6b45c0bb948a}" key="Canvas"/>
    <actionsetting action="from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = layer.fields().lookupField(&quot;request_combine&quot;)&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;with edit(layer):&#xd;&#xa;    for sid in selected_ids:&#xd;&#xa;        ft = layer.getFeature(sid)&#xd;&#xa;        name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;        QgsMessageLog.logMessage(&quot;combine:&quot;+str(selected_ids)+'  '+name)&#xd;&#xa;        layer.changeAttributeValue(sid, field, True)&#xd;&#xa;        # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;" capture="0" name="Request Combine" id="{d5ea2536-1039-4645-a609-6b45c0bb948a}" shortTitle="Combine" notificationMessage="" type="1" isEnabledOnlyWhenEditable="0" icon="">
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting action="from qgis.utils import iface&#xd;&#xa;from qgis.core import QgsMessageLog&#xd;&#xa;layer = QgsProject().instance().mapLayer(&quot;[%@layer_id%]&quot;)&#xd;&#xa;field = layer.fields().lookupField(&quot;request_export&quot;)&#xd;&#xa;if bool(&quot;[%$id%]&quot;):&#xd;&#xa;    selected_ids = [[%$id%]]&#xd;&#xa;else:&#xd;&#xa;    selected_ids = [feature.id() for feature in layer.selectedFeatures()]    &#xd;&#xa;QgsMessageLog.logMessage(&quot;export:&quot;+str(selected_ids))&#xd;&#xa;with edit(layer):&#xd;&#xa;    for sid in selected_ids:&#xd;&#xa;        ft = layer.getFeature(sid)&#xd;&#xa;        name = ft.attribute('production_branch')+str(ft.attribute('utm'))+ft.attribute('hemisphere')+'_tile'+str(ft.attribute('tile'))+'_'+ft.attribute('locality')+'_'+ft.attribute('datum')&#xd;&#xa;        QgsMessageLog.logMessage(&quot;combine:&quot;+str(selected_ids)+'  '+name)&#xd;&#xa;        layer.changeAttributeValue(sid, field, True)&#xd;&#xa;        # iface.messageBar().pushInfo(&quot;[%tile%]&quot;,&quot; combine requested&quot;)&#xd;&#xa;" capture="0" name="Request Export" id="{a5384bb4-deac-4f74-bb5a-19eba357e1b4}" shortTitle="Export" notificationMessage="" type="1" isEnabledOnlyWhenEditable="0" icon="">
      <actionScope id="Layer"/>
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
  </attributeactions>
  <layerGeometryType>2</layerGeometryType>
</qgis>
