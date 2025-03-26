import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  Local state fields for this page.

  String? surgeryDateVariable;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for firstNameInput widget.
  FocusNode? firstNameInputFocusNode;
  TextEditingController? firstNameInputTextController;
  String? Function(BuildContext, String?)?
      firstNameInputTextControllerValidator;
  // State field(s) for lastNameInput widget.
  FocusNode? lastNameInputFocusNode;
  TextEditingController? lastNameInputTextController;
  String? Function(BuildContext, String?)? lastNameInputTextControllerValidator;
  // State field(s) for unitOptions widget.
  FormFieldController<List<String>>? unitOptionsValueController;
  String? get unitOptionsValue =>
      unitOptionsValueController?.value?.firstOrNull;
  set unitOptionsValue(String? val) =>
      unitOptionsValueController?.value = val != null ? [val] : [];
  // State field(s) for weightInitInput widget.
  FocusNode? weightInitInputFocusNode;
  TextEditingController? weightInitInputTextController;
  String? Function(BuildContext, String?)?
      weightInitInputTextControllerValidator;
  // State field(s) for heightInput widget.
  FocusNode? heightInputFocusNode;
  TextEditingController? heightInputTextController;
  String? Function(BuildContext, String?)? heightInputTextControllerValidator;
  // State field(s) for weightGoalInput widget.
  FocusNode? weightGoalInputFocusNode;
  TextEditingController? weightGoalInputTextController;
  String? Function(BuildContext, String?)?
      weightGoalInputTextControllerValidator;
  // Stores action output result for [Custom Action - convertInput2Double] action in Button widget.
  double? valuePesoInicial;
  // Stores action output result for [Custom Action - convertInput2Double] action in Button widget.
  double? valuePesoObjetivo;
  // Stores action output result for [Custom Action - convertInput2Double] action in Button widget.
  double? valueAltura;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    firstNameInputFocusNode?.dispose();
    firstNameInputTextController?.dispose();

    lastNameInputFocusNode?.dispose();
    lastNameInputTextController?.dispose();

    weightInitInputFocusNode?.dispose();
    weightInitInputTextController?.dispose();

    heightInputFocusNode?.dispose();
    heightInputTextController?.dispose();

    weightGoalInputFocusNode?.dispose();
    weightGoalInputTextController?.dispose();
  }
}
