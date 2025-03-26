import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'weight_map_widget.dart' show WeightMapWidget;
import 'package:flutter/material.dart';

class WeightMapModel extends FlutterFlowModel<WeightMapWidget> {
  ///  Local state fields for this page.

  bool editable = false;

  bool extraField = true;

  FFUploadedFile? background;

  ///  State fields for stateful widgets in this page.

  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
