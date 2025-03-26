import '/backend/api_requests/api_calls.dart';
import '/components/custom_icon/custom_icon_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'mood_data_list_widget.dart' show MoodDataListWidget;
import 'package:flutter/material.dart';

class MoodDataListModel extends FlutterFlowModel<MoodDataListWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
  // Models for CustomIcon dynamic component.
  late FlutterFlowDynamicModels<CustomIconModel> customIconModels;
  // Stores action output result for [Backend Call - API (Delete Mood)] action in Icon widget.
  ApiCallResponse? apiDeleteMood;

  @override
  void initState(BuildContext context) {
    customIconModels = FlutterFlowDynamicModels(() => CustomIconModel());
  }

  @override
  void dispose() {
    paginatedDataTableController.dispose();
    customIconModels.dispose();
  }
}
