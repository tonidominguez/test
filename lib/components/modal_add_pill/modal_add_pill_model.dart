import '/flutter_flow/flutter_flow_util.dart';
import 'modal_add_pill_widget.dart' show ModalAddPillWidget;
import 'package:flutter/material.dart';

class ModalAddPillModel extends FlutterFlowModel<ModalAddPillWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for pillDataInput widget.
  FocusNode? pillDataInputFocusNode;
  TextEditingController? pillDataInputTextController;
  String? Function(BuildContext, String?)? pillDataInputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    pillDataInputFocusNode?.dispose();
    pillDataInputTextController?.dispose();
  }
}
