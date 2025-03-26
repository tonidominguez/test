import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'weight_data_list_widget.dart' show WeightDataListWidget;
import 'package:flutter/material.dart';

class WeightDataListModel extends FlutterFlowModel<WeightDataListWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
  // Stores action output result for [Backend Call - API (Delete Weight)] action in Icon widget.
  ApiCallResponse? result;
  // Stores action output result for [Backend Call - API (Last Weight)] action in Icon widget.
  ApiCallResponse? apiLastWeight;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
