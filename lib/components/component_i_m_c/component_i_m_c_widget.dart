import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'component_i_m_c_model.dart';
export 'component_i_m_c_model.dart';

class ComponentIMCWidget extends StatefulWidget {
  const ComponentIMCWidget({
    super.key,
    required this.valueIMC,
  });

  final double? valueIMC;

  @override
  State<ComponentIMCWidget> createState() => _ComponentIMCWidgetState();
}

class _ComponentIMCWidgetState extends State<ComponentIMCWidget> {
  late ComponentIMCModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentIMCModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24.0),
      child: Container(
        width: 120.0,
        height: 25.0,
        constraints: BoxConstraints(
          minWidth: 100.0,
          maxWidth: 200.0,
        ),
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            () {
              if (widget.valueIMC! < 18.5) {
                return FlutterFlowTheme.of(context).imc1;
              } else if ((widget.valueIMC! >= 18.5) &&
                  (widget.valueIMC! <= 24.9)) {
                return FlutterFlowTheme.of(context).imc2;
              } else if ((widget.valueIMC! >= 25.0) &&
                  (widget.valueIMC! <= 29.9)) {
                return FlutterFlowTheme.of(context).imc3;
              } else if ((widget.valueIMC! >= 30.0) &&
                  (widget.valueIMC! <= 34.9)) {
                return FlutterFlowTheme.of(context).imc4;
              } else if ((widget.valueIMC! >= 35.0) &&
                  (widget.valueIMC! <= 39.9)) {
                return FlutterFlowTheme.of(context).imc5;
              } else {
                return FlutterFlowTheme.of(context).imc6;
              }
            }(),
            FlutterFlowTheme.of(context).secondaryText,
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(24.0),
          shape: BoxShape.rectangle,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: AutoSizeText(
                () {
                  if (widget.valueIMC! < 18.5) {
                    return 'Bajo peso';
                  } else if ((widget.valueIMC! >= 18.5) &&
                      (widget.valueIMC! <= 24.9)) {
                    return 'Saludable';
                  } else if ((widget.valueIMC! >= 25.0) &&
                      (widget.valueIMC! <= 29.9)) {
                    return 'Sobrepeso';
                  } else if ((widget.valueIMC! >= 30.0) &&
                      (widget.valueIMC! <= 34.9)) {
                    return 'Obesidad clase I';
                  } else if ((widget.valueIMC! >= 35.0) &&
                      (widget.valueIMC! <= 39.9)) {
                    return 'Obesidad clase II';
                  } else {
                    return 'Obesidad clase III';
                  }
                }(),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Roboto',
                      color: Colors.black,
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
