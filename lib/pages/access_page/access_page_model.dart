import '/components/access/access_widget.dart';
import '/components/app_bar/app_bar_widget.dart';
import '/components/notifications/notifications_widget.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'access_page_widget.dart' show AccessPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccessPageModel extends FlutterFlowModel<AccessPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for appBar component.
  late AppBarModel appBarModel;
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // Model for notifications component.
  late NotificationsModel notificationsModel;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    sideNavModel = createModel(context, () => SideNavModel());
    notificationsModel = createModel(context, () => NotificationsModel());

    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    appBarModel.dispose();
    sideNavModel.dispose();
    notificationsModel.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          'appBarModel (appBar)': appBarModel?.toWidgetClassDebugData(),
          'sideNavModel (sideNav)': sideNavModel?.toWidgetClassDebugData(),
          'notificationsModel (notifications)':
              notificationsModel?.toWidgetClassDebugData(),
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/mediplus-cnsocs/tab=uiBuilder&page=AccessPage',
        searchReference: 'reference=OgpBY2Nlc3NQYWdlUAFaCkFjY2Vzc1BhZ2U=',
        widgetClassName: 'AccessPage',
      );
}
