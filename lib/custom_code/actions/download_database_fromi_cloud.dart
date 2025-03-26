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

Future<void> downloadDatabaseFromiCloud() async {
  // Verificar si iCloud está disponible
  bool isICloudAvailable =
      await MethodChannel('flutter_icloud').invokeMethod('isAvailable');

  if (isICloudAvailable) {
    try {
      // Descargar la base de datos desde iCloud
      String sourcePath =
          'Documents/bariatrica_app.db'; // Ruta dentro del contenedor iCloud
      String destinationPath =
          await getDatabasePath(); // Ruta local de la base de datos

      await MethodChannel('flutter_icloud').invokeMethod('copyFileFromICloud', {
        'sourcePath': sourcePath,
        'destinationPath': destinationPath,
      });

      print('Base de datos descargada desde iCloud.');
    } catch (e) {
      print('Error al descargar la base de datos desde iCloud: $e');
    }
  } else {
    print('iCloud no está disponible en este dispositivo.');
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
