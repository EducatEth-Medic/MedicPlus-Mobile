import '/components/logo/logo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'app_bar_model.dart';
export 'app_bar_model.dart';

class AppBarWidget extends StatefulWidget {
  final VoidCallback? onMenuPressed;
  const AppBarWidget({super.key, this.onMenuPressed});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> with RouteAware {
  late AppBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DebugFlutterFlowModelContext.maybeOf(context)
        ?.parentModelCallback
        ?.call(_model);

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FlutterFlowIconButton(
          borderRadius: 60.0,
          buttonSize: 40.0,
          fillColor: Colors.white,
          icon: Icon(
            Icons.menu,
            color: FlutterFlowTheme.of(context).breaker600Color,
            size: 24.0,
          ),
          onPressed:  widget.onMenuPressed,
        ),
        wrapWithModel(
          model: _model.logoModel,
          updateCallback: () => safeSetState(() {}),
          child: Builder(builder: (_) {
            return DebugFlutterFlowModelContext(
              rootModel: _model.rootModel,
              child: LogoWidget(),
            );
          }),
        ),
        FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 60.0,
          buttonSize: 40.0,
          fillColor: Colors.white,
          icon: Icon(
            Icons.notifications_sharp,
            color: FlutterFlowTheme.of(context).breaker600Color,
            size: 24.0,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
      ],
    );
  }
}
