import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'measures_widget.dart' show MeasuresWidget;
import 'package:flutter/material.dart';

class MeasuresModel extends FlutterFlowModel<MeasuresWidget> {
  ///  Local state fields for this page.

  int? nowID = 0;

  int? beforeID = 0;

  double? diffChest = 0.0;

  double? diffArm = 0.0;

  double? diffWaist = 0.0;

  double? diffAbdomend = 0.0;

  double? diffHip = 0.0;

  double? diffThigh = 0.0;

  double? nowChest = 0.0;

  double? beforeChest = 0.0;

  double? nowArm = 0.0;

  double? beforeArm = 0.0;

  double? nowWaist = 0.0;

  double? beforeWaist = 0.0;

  double? nowAbdomen = 0.0;

  double? beforeAbdomen = 0.0;

  double? nowHip = 0.0;

  double? beforeHip = 0.0;

  double? nowThigh = 0.0;

  double? beforeThigh = 0.0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Measures By Id)] action in Measures widget.
  ApiCallResponse? apibeforeMesuresLoad;
  // Stores action output result for [Backend Call - API (Measures By Id)] action in Measures widget.
  ApiCallResponse? apinowMesuresLoad;
  // State field(s) for beforeSelect widget.
  int? beforeSelectValue;
  FormFieldController<int>? beforeSelectValueController;
  // Stores action output result for [Backend Call - API (Measures By Id)] action in beforeSelect widget.
  ApiCallResponse? apibeforeMesuresSelectBEFORE;
  // Stores action output result for [Backend Call - API (Measures By Id)] action in beforeSelect widget.
  ApiCallResponse? apinowMesuresSelectBEFORE;
  // State field(s) for nowSelect widget.
  int? nowSelectValue;
  FormFieldController<int>? nowSelectValueController;
  // Stores action output result for [Backend Call - API (Measures By Id)] action in nowSelect widget.
  ApiCallResponse? apiNowMesuresSelectNOW;
  // Stores action output result for [Backend Call - API (Measures By Id)] action in nowSelect widget.
  ApiCallResponse? apiBeforeMesuresSelectNOW;

  /// Query cache managers for this widget.

  final _measuresDataManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> measuresData({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _measuresDataManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMeasuresDataCache() => _measuresDataManager.clear();
  void clearMeasuresDataCacheKey(String? uniqueKey) =>
      _measuresDataManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// Dispose query cache managers for this widget.

    clearMeasuresDataCache();
  }
}
