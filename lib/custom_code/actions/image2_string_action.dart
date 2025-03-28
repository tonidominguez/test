// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:math' as math;

String? image2StringAction(FFUploadedFile? imageBytes) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  // convert image passed from image picker to a string
  String? base64Image;
  if (imageBytes != null && imageBytes.bytes != null) {
    base64Image = base64Encode(imageBytes.bytes!);
  }
  return base64Image;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
