import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_add_update_workout_widget.dart' show ModalAddUpdateWorkoutWidget;
import 'package:flutter/material.dart';

class ModalAddUpdateWorkoutModel
    extends FlutterFlowModel<ModalAddUpdateWorkoutWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for descriptionInput widget.
  FocusNode? descriptionInputFocusNode;
  TextEditingController? descriptionInputTextController;
  String? Function(BuildContext, String?)?
      descriptionInputTextControllerValidator;
  // State field(s) for durationInput widget.
  FocusNode? durationInputFocusNode;
  TextEditingController? durationInputTextController;
  String? Function(BuildContext, String?)? durationInputTextControllerValidator;
  // Stores action output result for [Backend Call - API (Add Workout)] action in Button widget.
  ApiCallResponse? apiInsert;
  // Stores action output result for [Backend Call - API (Update Workout)] action in Button widget.
  ApiCallResponse? apiUpdate;
  // Stores action output result for [Backend Call - API (Workout  TIME By Date)] action in Button widget.
  ApiCallResponse? apiTIme;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    descriptionInputFocusNode?.dispose();
    descriptionInputTextController?.dispose();

    durationInputFocusNode?.dispose();
    durationInputTextController?.dispose();
  }
}
