import '/components/aviso_info_datos_usuario/aviso_info_datos_usuario_widget.dart';
import '/components/component_i_m_c/component_i_m_c_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'weight_widget.dart' show WeightWidget;
import 'package:flutter/material.dart';

class WeightModel extends FlutterFlowModel<WeightWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AvisoInfoDatosUsuario component.
  late AvisoInfoDatosUsuarioModel avisoInfoDatosUsuarioModel;
  // Model for componentIMC component.
  late ComponentIMCModel componentIMCModel1;
  // Model for componentIMC component.
  late ComponentIMCModel componentIMCModel2;
  // Model for componentIMC component.
  late ComponentIMCModel componentIMCModel3;

  @override
  void initState(BuildContext context) {
    avisoInfoDatosUsuarioModel =
        createModel(context, () => AvisoInfoDatosUsuarioModel());
    componentIMCModel1 = createModel(context, () => ComponentIMCModel());
    componentIMCModel2 = createModel(context, () => ComponentIMCModel());
    componentIMCModel3 = createModel(context, () => ComponentIMCModel());
  }

  @override
  void dispose() {
    avisoInfoDatosUsuarioModel.dispose();
    componentIMCModel1.dispose();
    componentIMCModel2.dispose();
    componentIMCModel3.dispose();
  }
}
