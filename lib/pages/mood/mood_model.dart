import '/backend/api_requests/api_calls.dart';
import '/components/custom_icon/custom_icon_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'mood_widget.dart' show MoodWidget;
import 'package:flutter/material.dart';

class MoodModel extends FlutterFlowModel<MoodWidget> {
  ///  Local state fields for this page.

  int iconSelected = 0;

  ///  State fields for stateful widgets in this page.

  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (By Date)] action in Icon widget.
  ApiCallResponse? apiDaySelected;
  // Model for CustomIcon component.
  late CustomIconModel customIconModel1;
  // Model for CustomIcon component.
  late CustomIconModel customIconModel2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Add or Update Mood)] action in Button widget.
  ApiCallResponse? apiAddUpdate;

  @override
  void initState(BuildContext context) {
    customIconModel1 = createModel(context, () => CustomIconModel());
    customIconModel2 = createModel(context, () => CustomIconModel());
  }

  @override
  void dispose() {
    customIconModel1.dispose();
    customIconModel2.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
