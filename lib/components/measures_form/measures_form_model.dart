import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'measures_form_widget.dart' show MeasuresFormWidget;
import 'package:flutter/material.dart';

class MeasuresFormModel extends FlutterFlowModel<MeasuresFormWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for chest widget.
  FocusNode? chestFocusNode;
  TextEditingController? chestTextController;
  String? Function(BuildContext, String?)? chestTextControllerValidator;
  // State field(s) for arm widget.
  FocusNode? armFocusNode;
  TextEditingController? armTextController;
  String? Function(BuildContext, String?)? armTextControllerValidator;
  // State field(s) for waist widget.
  FocusNode? waistFocusNode;
  TextEditingController? waistTextController;
  String? Function(BuildContext, String?)? waistTextControllerValidator;
  // State field(s) for abdomen widget.
  FocusNode? abdomenFocusNode;
  TextEditingController? abdomenTextController;
  String? Function(BuildContext, String?)? abdomenTextControllerValidator;
  // State field(s) for hip widget.
  FocusNode? hipFocusNode;
  TextEditingController? hipTextController;
  String? Function(BuildContext, String?)? hipTextControllerValidator;
  // State field(s) for thigh widget.
  FocusNode? thighFocusNode;
  TextEditingController? thighTextController;
  String? Function(BuildContext, String?)? thighTextControllerValidator;
  // Stores action output result for [Backend Call - API (Update Measures)] action in Button widget.
  ApiCallResponse? apiUpdateMeasures;
  // Stores action output result for [Backend Call - API (Add Measures)] action in Button widget.
  ApiCallResponse? apiAddMeasures;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    chestFocusNode?.dispose();
    chestTextController?.dispose();

    armFocusNode?.dispose();
    armTextController?.dispose();

    waistFocusNode?.dispose();
    waistTextController?.dispose();

    abdomenFocusNode?.dispose();
    abdomenTextController?.dispose();

    hipFocusNode?.dispose();
    hipTextController?.dispose();

    thighFocusNode?.dispose();
    thighTextController?.dispose();
  }
}
