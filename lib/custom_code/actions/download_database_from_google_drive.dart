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
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:googleapis/drive/v3.dart' as drive;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:googleapis_auth/auth_io.dart' as auth;

final GoogleSignIn _googleSignIn =
    GoogleSignIn(scopes: [drive.DriveApi.driveFileScope]);

Future<String> getDatabasePath() async {
  Directory documentsDirectory = await getApplicationDocumentsDirectory();
  String dbPath = path.join(documentsDirectory.path, 'bariatrica_app.db');
  return dbPath;
}

Future<void> downloadDatabaseFromGoogleDrive() async {
  final GoogleSignInAccount? account = await _googleSignIn.signIn();
  final GoogleSignInAuthentication auth = await account!.authentication;

  // Crear un cliente HTTP
  final http.Client httpClient = http.Client();

  // Obtener las credenciales de autenticación
  final credentials = await auth.accessToken;

  // Crear un cliente de autenticación
  final authClient = http.Client();

  // Crear un cliente de Google Drive
  final driveApi = drive.DriveApi(authClient);

  String dbFileName = "bariatrica_app.db";

  try {
    // Buscar el archivo de la base de datos en Google Drive
    drive.FileList fileList =
        await driveApi.files.list(q: "name = '$dbFileName'");
    if (fileList.files!.isNotEmpty) {
      drive.File driveFile = fileList.files!.first;

      // Convertir la URL de descarga a un objeto Uri
      Uri downloadUrl = Uri.parse(driveFile.webContentLink!);

      // Descargar el archivo de la base de datos desde Google Drive
      http.Response response = await http.get(downloadUrl);
      List<int> dbData = response.bodyBytes;

      // Guardar el archivo descargado localmente
      String dbPath = await getDatabasePath();
      await File(dbPath).writeAsBytes(dbData);

      print('Base de datos descargada desde Google Drive.');
    } else {
      print('No se encontró la base de datos en Google Drive.');
    }
  } catch (e) {
    print('Error al descargar la base de datos desde Google Drive: $e');
  } finally {
    httpClient.close(); // Cerrar el cliente HTTP para liberar recursos
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
