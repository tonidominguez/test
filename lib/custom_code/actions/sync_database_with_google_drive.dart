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

import 'package:path/path.dart' as path;
import 'dart:io';
import 'package:googleapis/drive/v3.dart' as drive;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

final GoogleSignIn _googleSignIn =
    GoogleSignIn.standard(scopes: [drive.DriveApi.driveFileScope]);

Future<void> syncDatabaseWithGoogleDrive() async {
  final GoogleSignInAccount? account = await _googleSignIn.signIn();
  final GoogleSignInAuthentication auth = await account!.authentication;

  // Crear un cliente http a partir de las credenciales de autenticación
  final httpClient = http.Client();
  final driveApi = drive.DriveApi(httpClient);

  String dbPath = await getDatabasePath();
  File dbFile = File(dbPath);

  var media = drive.Media(dbFile.openRead(), dbFile.lengthSync());
  var driveFile = drive.File();
  driveFile.name = "bariatrica_app.db";

  try {
    await driveApi.files.create(driveFile, uploadMedia: media);
    print('Base de datos sincronizada con Google Drive.');
  } catch (e) {
    print('Error al sincronizar la base de datos con Google Drive: $e');
  } finally {
    httpClient.close(); // Cerrar el cliente http para liberar recursos
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
