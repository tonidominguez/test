import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'measures_data_list_widget.dart' show MeasuresDataListWidget;
import 'package:flutter/material.dart';

class MeasuresDataListModel extends FlutterFlowModel<MeasuresDataListWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
  // Stores action output result for [Backend Call - API (Delete Measures)] action in Icon widget.
  ApiCallResponse? apiDelete;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
