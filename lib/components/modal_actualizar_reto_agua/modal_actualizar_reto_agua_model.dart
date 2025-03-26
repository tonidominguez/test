import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_actualizar_reto_agua_widget.dart'
    show ModalActualizarRetoAguaWidget;
import 'package:flutter/material.dart';

class ModalActualizarRetoAguaModel
    extends FlutterFlowModel<ModalActualizarRetoAguaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for waterGoal widget.
  FocusNode? waterGoalFocusNode;
  TextEditingController? waterGoalTextController;
  String? Function(BuildContext, String?)? waterGoalTextControllerValidator;
  // Stores action output result for [Backend Call - API (Update Water Goal)] action in Button widget.
  ApiCallResponse? apiUpdateWaterGoal;
  // Stores action output result for [Custom Action - calculateIconVaso] action in Button widget.
  String? apiWaterPercent;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    waterGoalFocusNode?.dispose();
    waterGoalTextController?.dispose();
  }
}
