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

import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

Future<String> getDatabasePath() async {
  Directory documentsDirectory = await getApplicationDocumentsDirectory();
  String dbPath = path.join(documentsDirectory.path, 'bariatrica_app.db');
  return dbPath;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
