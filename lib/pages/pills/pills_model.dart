import '/components/pill_check/pill_check_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pills_widget.dart' show PillsWidget;
import 'package:flutter/material.dart';

class PillsModel extends FlutterFlowModel<PillsWidget> {
  ///  Local state fields for this page.

  String waterPercentToday = '0%';

  ///  State fields for stateful widgets in this page.

  // Models for pillCheck dynamic component.
  late FlutterFlowDynamicModels<PillCheckModel> pillCheckModels;

  @override
  void initState(BuildContext context) {
    pillCheckModels = FlutterFlowDynamicModels(() => PillCheckModel());
  }

  @override
  void dispose() {
    pillCheckModels.dispose();
  }
}
