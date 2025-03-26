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

import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:io';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';

// Define una referencia global al objeto que deseas capturar
GlobalKey globalKey = GlobalKey();

Future<String?> captureAndSaveScreen(String identifier) async {
  try {
    // Encuentra el objeto RenderRepaintBoundary del widget raíz utilizando la referencia global
    RenderRepaintBoundary boundary =
        globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;

    // Convierte el widget a una imagen
    ui.Image image = await boundary.toImage(pixelRatio: 3.0);

    // Convierte la imagen a datos de bytes en formato PNG
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    if (byteData == null) {
      print('Error al convertir la imagen');
      return null;
    }
    Uint8List pngBytes = byteData.buffer.asUint8List();

    // Guarda la imagen temporalmente en el dispositivo
    final tempDir = await getTemporaryDirectory();
    final tempFile = File('${tempDir.path}/$identifier.png');
    await tempFile.writeAsBytes(pngBytes);

    // Devuelve la ruta de la imagen guardada
    return tempFile.path;
  } catch (e) {
    print('Error al guardar la imagen: $e');
    return null;
  }
}
