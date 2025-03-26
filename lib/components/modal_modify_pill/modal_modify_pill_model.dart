import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_modify_pill_widget.dart' show ModalModifyPillWidget;
import 'package:flutter/material.dart';

class ModalModifyPillModel extends FlutterFlowModel<ModalModifyPillWidget> {
  ///  Local state fields for this component.

  int? id;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for pillUpdateName widget.
  FocusNode? pillUpdateNameFocusNode;
  TextEditingController? pillUpdateNameTextController;
  String? Function(BuildContext, String?)?
      pillUpdateNameTextControllerValidator;
  // Stores action output result for [Backend Call - API (Update Pill)] action in Button widget.
  ApiCallResponse? apiUpdate;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    pillUpdateNameFocusNode?.dispose();
    pillUpdateNameTextController?.dispose();
  }
}
