import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'aviso_info_datos_usuario_model.dart';
export 'aviso_info_datos_usuario_model.dart';

class AvisoInfoDatosUsuarioWidget extends StatefulWidget {
  const AvisoInfoDatosUsuarioWidget({
    super.key,
    required this.infoText,
    required this.showBtn,
  });

  final String? infoText;
  final bool? showBtn;

  @override
  State<AvisoInfoDatosUsuarioWidget> createState() =>
      _AvisoInfoDatosUsuarioWidgetState();
}

class _AvisoInfoDatosUsuarioWidgetState
    extends State<AvisoInfoDatosUsuarioWidget> {
  late AvisoInfoDatosUsuarioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvisoInfoDatosUsuarioModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(),
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Color(0xFFFFE300),
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(6.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.infoText,
                        'empty',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Roboto',
                            color: Colors.black,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                if (widget.showBtn ?? true)
                  FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(ProfileWidget.routeName);
                    },
                    text: FFLocalizations.of(context).getText(
                      'p4awklur' /* Ir a Perfil */,
                    ),
                    icon: FaIcon(
                      FontAwesomeIcons.userAlt,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
