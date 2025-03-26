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

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:icloud_storage/icloud_storage.dart';

Future<void> syncDatabaseWithiCloud() async {
  // Obtener la ruta de la base de datos local
  String dbPath = await getDatabasePath();
  File dbFile = File(dbPath);

  // Verificar si iCloud está disponible

  try {
    await ICloudStorage.upload(
      containerId: 'iCloud.com.targetbox.bariatrico',
      filePath: dbPath,
      destinationRelativePath: 'bariatrica_app.db',
      /*onProgress: (stream) {
        uploadProgressSub = stream.listen(
          (progress) => print('Upload File Progress: $progress'),
          onDone: () => print('Upload File Done'),
          onError: (err) => print('Upload File Error: $err'),
          cancelOnError: true,
        );
      },*/
    );
  } catch (e) {
    print('Error al sincronizar la base de datos con iCloud: $e');
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
