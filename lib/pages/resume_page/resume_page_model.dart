import '/components/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'resume_page_widget.dart' show ResumePageWidget;
import 'package:flutter/material.dart';

class ResumePageModel extends FlutterFlowModel<ResumePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for appBar component.
  late AppBarModel appBarModel;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
  }
}
