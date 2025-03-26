import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'workout_widget.dart' show WorkoutWidget;
import 'package:flutter/material.dart';

class WorkoutModel extends FlutterFlowModel<WorkoutWidget> {
  ///  Local state fields for this page.

  int workoutTimeVariable = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Delete Workout)] action in Icon widget.
  ApiCallResponse? apiDelete;
  // Stores action output result for [Backend Call - API (Workout  TIME By Date)] action in Icon widget.
  ApiCallResponse? apiTime;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
