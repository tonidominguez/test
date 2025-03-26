import '/flutter_flow/flutter_flow_util.dart';
import 'modal_add_peso_widget.dart' show ModalAddPesoWidget;
import 'package:flutter/material.dart';

class ModalAddPesoModel extends FlutterFlowModel<ModalAddPesoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for weightDataInput widget.
  FocusNode? weightDataInputFocusNode;
  TextEditingController? weightDataInputTextController;
  String? Function(BuildContext, String?)?
      weightDataInputTextControllerValidator;
  String? _weightDataInputTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'd73kiami' /* Valor incorrecto */,
      );
    }

    if (!RegExp('^\\d*\\,?.?\\d*\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // Stores action output result for [Custom Action - convertInput2Double] action in Button widget.
  double? value;

  @override
  void initState(BuildContext context) {
    weightDataInputTextControllerValidator =
        _weightDataInputTextControllerValidator;
  }

  @override
  void dispose() {
    weightDataInputFocusNode?.dispose();
    weightDataInputTextController?.dispose();
  }
}
