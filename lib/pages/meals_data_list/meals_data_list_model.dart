import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'meals_data_list_widget.dart' show MealsDataListWidget;
import 'package:flutter/material.dart';

class MealsDataListModel extends FlutterFlowModel<MealsDataListWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
  // Stores action output result for [Backend Call - API (Delete Meals)] action in Icon widget.
  ApiCallResponse? apiDeleteMeal;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
