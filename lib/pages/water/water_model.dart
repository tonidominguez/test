import '/backend/api_requests/api_calls.dart';
import '/components/aviso_info_datos_usuario/aviso_info_datos_usuario_widget.dart';
import '/components/icono_vaso/icono_vaso_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'water_widget.dart' show WaterWidget;
import 'package:flutter/material.dart';

class WaterModel extends FlutterFlowModel<WaterWidget> {
  ///  Local state fields for this page.

  String waterPercentToday = '0%';

  ///  State fields for stateful widgets in this page.

  // Model for AvisoInfoDatosUsuario component.
  late AvisoInfoDatosUsuarioModel avisoInfoDatosUsuarioModel;
  // Model for icono_vaso component.
  late IconoVasoModel iconoVasoModel;
  // Stores action output result for [Backend Call - API (Add Water)] action in IconButton widget.
  ApiCallResponse? apiAddWater;
  // Stores action output result for [Custom Action - calculateIconVaso] action in IconButton widget.
  String? iconoVaso;

  @override
  void initState(BuildContext context) {
    avisoInfoDatosUsuarioModel =
        createModel(context, () => AvisoInfoDatosUsuarioModel());
    iconoVasoModel = createModel(context, () => IconoVasoModel());
  }

  @override
  void dispose() {
    avisoInfoDatosUsuarioModel.dispose();
    iconoVasoModel.dispose();
  }
}
