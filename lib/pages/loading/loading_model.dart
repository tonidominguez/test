import '/backend/api_requests/api_calls.dart';
import '/components/progress_bar/progress_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'loading_widget.dart' show LoadingWidget;
import 'package:flutter/material.dart';

class LoadingModel extends FlutterFlowModel<LoadingWidget> {
  ///  Local state fields for this page.

  double progressBar = 0.0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Check Session)] action in Loading widget.
  ApiCallResponse? apiCheckSession;
  // Model for progressBar component.
  late ProgressBarModel progressBarModel;

  @override
  void initState(BuildContext context) {
    progressBarModel = createModel(context, () => ProgressBarModel());
  }

  @override
  void dispose() {
    progressBarModel.dispose();
  }
}
