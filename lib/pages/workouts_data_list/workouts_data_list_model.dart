import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'workouts_data_list_widget.dart' show WorkoutsDataListWidget;
import 'package:flutter/material.dart';

class WorkoutsDataListModel extends FlutterFlowModel<WorkoutsDataListWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
  // Stores action output result for [Backend Call - API (Workout  TIME By Date)] action in Icon widget.
  ApiCallResponse? apiTIME;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
