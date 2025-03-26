import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_weight_map_widget.dart' show ModalWeightMapWidget;
import 'package:flutter/material.dart';

class ModalWeightMapModel extends FlutterFlowModel<ModalWeightMapWidget> {
  ///  Local state fields for this component.

  FFUploadedFile? background;

  String? color1;

  String? color2;

  String? color3;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for mapTitle widget.
  FocusNode? mapTitleFocusNode;
  TextEditingController? mapTitleTextController;
  String? Function(BuildContext, String?)? mapTitleTextControllerValidator;
  // State field(s) for extraField widget.
  FocusNode? extraFieldFocusNode;
  TextEditingController? extraFieldTextController;
  String? Function(BuildContext, String?)? extraFieldTextControllerValidator;
  // State field(s) for extraValue widget.
  FocusNode? extraValueFocusNode;
  TextEditingController? extraValueTextController;
  String? Function(BuildContext, String?)? extraValueTextControllerValidator;
  // State field(s) for extraDiferrence widget.
  FocusNode? extraDiferrenceFocusNode;
  TextEditingController? extraDiferrenceTextController;
  String? Function(BuildContext, String?)?
      extraDiferrenceTextControllerValidator;
  // State field(s) for monthField1 widget.
  FocusNode? monthField1FocusNode;
  TextEditingController? monthField1TextController;
  String? Function(BuildContext, String?)? monthField1TextControllerValidator;
  // State field(s) for monthValue1 widget.
  FocusNode? monthValue1FocusNode;
  TextEditingController? monthValue1TextController;
  String? Function(BuildContext, String?)? monthValue1TextControllerValidator;
  // State field(s) for monthField2 widget.
  FocusNode? monthField2FocusNode;
  TextEditingController? monthField2TextController;
  String? Function(BuildContext, String?)? monthField2TextControllerValidator;
  // State field(s) for monthValue2 widget.
  FocusNode? monthValue2FocusNode;
  TextEditingController? monthValue2TextController;
  String? Function(BuildContext, String?)? monthValue2TextControllerValidator;
  // State field(s) for monthField3 widget.
  FocusNode? monthField3FocusNode;
  TextEditingController? monthField3TextController;
  String? Function(BuildContext, String?)? monthField3TextControllerValidator;
  // State field(s) for monthValue3 widget.
  FocusNode? monthValue3FocusNode;
  TextEditingController? monthValue3TextController;
  String? Function(BuildContext, String?)? monthValue3TextControllerValidator;
  // State field(s) for monthField4 widget.
  FocusNode? monthField4FocusNode;
  TextEditingController? monthField4TextController;
  String? Function(BuildContext, String?)? monthField4TextControllerValidator;
  // State field(s) for monthValue4 widget.
  FocusNode? monthValue4FocusNode;
  TextEditingController? monthValue4TextController;
  String? Function(BuildContext, String?)? monthValue4TextControllerValidator;
  // State field(s) for monthField5 widget.
  FocusNode? monthField5FocusNode;
  TextEditingController? monthField5TextController;
  String? Function(BuildContext, String?)? monthField5TextControllerValidator;
  // State field(s) for monthValue5 widget.
  FocusNode? monthValue5FocusNode;
  TextEditingController? monthValue5TextController;
  String? Function(BuildContext, String?)? monthValue5TextControllerValidator;
  // State field(s) for monthField6 widget.
  FocusNode? monthField6FocusNode;
  TextEditingController? monthField6TextController;
  String? Function(BuildContext, String?)? monthField6TextControllerValidator;
  // State field(s) for monthValue6 widget.
  FocusNode? monthValue6FocusNode;
  TextEditingController? monthValue6TextController;
  String? Function(BuildContext, String?)? monthValue6TextControllerValidator;
  // State field(s) for monthField7 widget.
  FocusNode? monthField7FocusNode;
  TextEditingController? monthField7TextController;
  String? Function(BuildContext, String?)? monthField7TextControllerValidator;
  // State field(s) for monthValue7 widget.
  FocusNode? monthValue7FocusNode;
  TextEditingController? monthValue7TextController;
  String? Function(BuildContext, String?)? monthValue7TextControllerValidator;
  // State field(s) for monthField8 widget.
  FocusNode? monthField8FocusNode;
  TextEditingController? monthField8TextController;
  String? Function(BuildContext, String?)? monthField8TextControllerValidator;
  // State field(s) for monthValue8 widget.
  FocusNode? monthValue8FocusNode;
  TextEditingController? monthValue8TextController;
  String? Function(BuildContext, String?)? monthValue8TextControllerValidator;
  // State field(s) for monthField9 widget.
  FocusNode? monthField9FocusNode;
  TextEditingController? monthField9TextController;
  String? Function(BuildContext, String?)? monthField9TextControllerValidator;
  // State field(s) for monthValue9 widget.
  FocusNode? monthValue9FocusNode;
  TextEditingController? monthValue9TextController;
  String? Function(BuildContext, String?)? monthValue9TextControllerValidator;
  // State field(s) for monthField10 widget.
  FocusNode? monthField10FocusNode;
  TextEditingController? monthField10TextController;
  String? Function(BuildContext, String?)? monthField10TextControllerValidator;
  // State field(s) for monthValue10 widget.
  FocusNode? monthValue10FocusNode;
  TextEditingController? monthValue10TextController;
  String? Function(BuildContext, String?)? monthValue10TextControllerValidator;
  // State field(s) for monthField11 widget.
  FocusNode? monthField11FocusNode;
  TextEditingController? monthField11TextController;
  String? Function(BuildContext, String?)? monthField11TextControllerValidator;
  // State field(s) for monthValue11 widget.
  FocusNode? monthValue11FocusNode;
  TextEditingController? monthValue11TextController;
  String? Function(BuildContext, String?)? monthValue11TextControllerValidator;
  // State field(s) for monthField12 widget.
  FocusNode? monthField12FocusNode;
  TextEditingController? monthField12TextController;
  String? Function(BuildContext, String?)? monthField12TextControllerValidator;
  // State field(s) for monthValue12 widget.
  FocusNode? monthValue12FocusNode;
  TextEditingController? monthValue12TextController;
  String? Function(BuildContext, String?)? monthValue12TextControllerValidator;
  Color? colorPicked1;
  Color? colorPicked2;
  Color? colorPicked3;
  // Stores action output result for [Backend Call - API (Update  or Create map)] action in Button widget.
  ApiCallResponse? apiUpdateCreate;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    mapTitleFocusNode?.dispose();
    mapTitleTextController?.dispose();

    extraFieldFocusNode?.dispose();
    extraFieldTextController?.dispose();

    extraValueFocusNode?.dispose();
    extraValueTextController?.dispose();

    extraDiferrenceFocusNode?.dispose();
    extraDiferrenceTextController?.dispose();

    monthField1FocusNode?.dispose();
    monthField1TextController?.dispose();

    monthValue1FocusNode?.dispose();
    monthValue1TextController?.dispose();

    monthField2FocusNode?.dispose();
    monthField2TextController?.dispose();

    monthValue2FocusNode?.dispose();
    monthValue2TextController?.dispose();

    monthField3FocusNode?.dispose();
    monthField3TextController?.dispose();

    monthValue3FocusNode?.dispose();
    monthValue3TextController?.dispose();

    monthField4FocusNode?.dispose();
    monthField4TextController?.dispose();

    monthValue4FocusNode?.dispose();
    monthValue4TextController?.dispose();

    monthField5FocusNode?.dispose();
    monthField5TextController?.dispose();

    monthValue5FocusNode?.dispose();
    monthValue5TextController?.dispose();

    monthField6FocusNode?.dispose();
    monthField6TextController?.dispose();

    monthValue6FocusNode?.dispose();
    monthValue6TextController?.dispose();

    monthField7FocusNode?.dispose();
    monthField7TextController?.dispose();

    monthValue7FocusNode?.dispose();
    monthValue7TextController?.dispose();

    monthField8FocusNode?.dispose();
    monthField8TextController?.dispose();

    monthValue8FocusNode?.dispose();
    monthValue8TextController?.dispose();

    monthField9FocusNode?.dispose();
    monthField9TextController?.dispose();

    monthValue9FocusNode?.dispose();
    monthValue9TextController?.dispose();

    monthField10FocusNode?.dispose();
    monthField10TextController?.dispose();

    monthValue10FocusNode?.dispose();
    monthValue10TextController?.dispose();

    monthField11FocusNode?.dispose();
    monthField11TextController?.dispose();

    monthValue11FocusNode?.dispose();
    monthValue11TextController?.dispose();

    monthField12FocusNode?.dispose();
    monthField12TextController?.dispose();

    monthValue12FocusNode?.dispose();
    monthValue12TextController?.dispose();
  }
}
