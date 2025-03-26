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

String calculateIconVaso(int waterPercent) {
  // return a string if app state value is less than 20
  if (waterPercent < 20) {
    return "vaso0";
  } else if (waterPercent >= 20 && waterPercent < 40) {
    return "vaso20";
  } else if (waterPercent >= 40 && waterPercent < 60) {
    return "vaso40";
  } else if (waterPercent >= 60 && waterPercent < 80) {
    return "vaso60";
  } else if (waterPercent >= 80 && waterPercent < 100) {
    return "vaso80";
  } else {
    return "vaso100";
  }
}
