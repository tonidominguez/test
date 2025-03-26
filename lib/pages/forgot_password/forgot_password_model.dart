import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'forgot_password_widget.dart' show ForgotPasswordWidget;
import 'package:flutter/material.dart';

class ForgotPasswordModel extends FlutterFlowModel<ForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailForgot widget.
  FocusNode? emailForgotFocusNode;
  TextEditingController? emailForgotTextController;
  String? Function(BuildContext, String?)? emailForgotTextControllerValidator;
  // Stores action output result for [Backend Call - API (Password Forgot)] action in Button-Login widget.
  ApiCallResponse? apiForgotPassword;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailForgotFocusNode?.dispose();
    emailForgotTextController?.dispose();
  }
}
