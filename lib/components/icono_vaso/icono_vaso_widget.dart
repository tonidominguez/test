import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'icono_vaso_model.dart';
export 'icono_vaso_model.dart';

class IconoVasoWidget extends StatefulWidget {
  const IconoVasoWidget({
    super.key,
    required this.icon,
  });

  final String? icon;

  @override
  State<IconoVasoWidget> createState() => _IconoVasoWidgetState();
}

class _IconoVasoWidgetState extends State<IconoVasoWidget> {
  late IconoVasoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconoVasoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: valueOrDefault<double>(
            widget.icon == 'vaso0' ? 1.0 : 0.0,
            0.0,
          ),
          child: Icon(
            FFIcons.kvaso0,
            color: FlutterFlowTheme.of(context).secondary,
            size: 120.0,
          ),
        ),
        Opacity(
          opacity: widget.icon == 'vaso20' ? 1.0 : 0.0,
          child: Icon(
            FFIcons.kvaso20,
            color: FlutterFlowTheme.of(context).secondary,
            size: 120.0,
          ),
        ),
        Opacity(
          opacity: widget.icon == 'vaso40' ? 1.0 : 0.0,
          child: Icon(
            FFIcons.kvaso40,
            color: FlutterFlowTheme.of(context).secondary,
            size: 120.0,
          ),
        ),
        Opacity(
          opacity: widget.icon == 'vaso60' ? 1.0 : 0.0,
          child: Icon(
            FFIcons.kvaso60,
            color: FlutterFlowTheme.of(context).secondary,
            size: 120.0,
          ),
        ),
        Opacity(
          opacity: widget.icon == 'vaso80' ? 1.0 : 0.0,
          child: Icon(
            FFIcons.kvaso80,
            color: FlutterFlowTheme.of(context).secondary,
            size: 120.0,
          ),
        ),
        Opacity(
          opacity: widget.icon == 'vaso100' ? 1.0 : 0.0,
          child: Icon(
            FFIcons.kvaso100,
            color: FlutterFlowTheme.of(context).secondary,
            size: 120.0,
          ),
        ),
      ],
    );
  }
}
