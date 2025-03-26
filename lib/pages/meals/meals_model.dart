import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'meals_widget.dart' show MealsWidget;
import 'package:flutter/material.dart';

class MealsModel extends FlutterFlowModel<MealsWidget> {
  ///  Local state fields for this page.

  int iconSelected = 0;

  ///  State fields for stateful widgets in this page.

  DateTime? datePicked;
  // State field(s) for breakfastDumping widget.
  bool? breakfastDumpingValue;
  // State field(s) for breakfastText widget.
  FocusNode? breakfastTextFocusNode;
  TextEditingController? breakfastTextTextController;
  String? Function(BuildContext, String?)? breakfastTextTextControllerValidator;
  // State field(s) for lunchDumping widget.
  bool? lunchDumpingValue;
  // State field(s) for lunchText widget.
  FocusNode? lunchTextFocusNode;
  TextEditingController? lunchTextTextController;
  String? Function(BuildContext, String?)? lunchTextTextControllerValidator;
  // State field(s) for dinnerDumping widget.
  bool? dinnerDumpingValue;
  // State field(s) for dinnerText widget.
  FocusNode? dinnerTextFocusNode;
  TextEditingController? dinnerTextTextController;
  String? Function(BuildContext, String?)? dinnerTextTextControllerValidator;
  // State field(s) for snacksDumping widget.
  bool? snacksDumpingValue;
  // State field(s) for snacksText widget.
  FocusNode? snacksTextFocusNode;
  TextEditingController? snacksTextTextController;
  String? Function(BuildContext, String?)? snacksTextTextControllerValidator;
  // Stores action output result for [Backend Call - API (Add or Update Meals)] action in saveBtn widget.
  ApiCallResponse? apiUpdateMeals;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    breakfastTextFocusNode?.dispose();
    breakfastTextTextController?.dispose();

    lunchTextFocusNode?.dispose();
    lunchTextTextController?.dispose();

    dinnerTextFocusNode?.dispose();
    dinnerTextTextController?.dispose();

    snacksTextFocusNode?.dispose();
    snacksTextTextController?.dispose();
  }
}
