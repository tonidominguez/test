import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

String? substractDays(
  int? days,
  String? customFormat,
) {
  // a function to substract days and return custom format
  if (days == null) return null;

  final now = DateTime.now();
  final newDate = now.subtract(Duration(days: days));
  final formatter = DateFormat(customFormat);
  return formatter.format(newDate);
}

DateTime? string2Date(String? value) {
  // convert string to date format
  if (value == null) {
    return null;
  }
  try {
    return DateFormat('yyyy-MM-dd').parse(value);
  } catch (e) {
    return null;
  }
}

double calcultateIMC(
  double weight,
  double height,
  String weightUnit,
  String heightUnit,
) {
  double bmi;

  // Convertir las medidas a unidades métricas para el cálculo del IMC
  double weightInKg =
      weightUnit.toLowerCase() == 'lb' ? weight * 0.453592 : weight;
  double heightInM =
      heightUnit.toLowerCase() == 'in' ? height * 0.0254 : height / 100;

  // Calcular el IMC
  bmi = weightInKg / (heightInM * heightInM);
  return bmi;
}

String? convertDateTime2Date(DateTime date) {
  // convert date time to date
  String formattedDate = DateFormat('yyyy-MM-dd').format(date);
  return formattedDate;
}

String? image2String(FFUploadedFile? imageBytes) {
  // convert image passed from image picker to a string
  String? base64Image;
  if (imageBytes != null && imageBytes.bytes != null) {
    base64Image = base64Encode(imageBytes.bytes!);
  }
  return base64Image;
}

FFUploadedFile? string2Image(String? imageString) {
  // base64 to uploaded file
  if (imageString == null) {
    return null;
  }
  final bytes = base64.decode(imageString);
  return FFUploadedFile(
    bytes: bytes, // Asigna los bytes decodificados a la propiedad bytes
    name: 'image.jpg',
  );
}

double? diffNumbers(
  double? valor1,
  double? valor2,
) {
  if (valor1 == null || valor2 == null) {
    return null;
  }

  if (valor1 == 0 || valor2 == 0) {
    return 0;
  }

  return double.parse((valor1 - valor2).toStringAsFixed(1));
}

String color2String(Color color) {
  String alphaHex = color.alpha.toRadixString(16).padLeft(2, '0');
  String redHex = color.red.toRadixString(16).padLeft(2, '0');
  String greenHex = color.green.toRadixString(16).padLeft(2, '0');
  String blueHex = color.blue.toRadixString(16).padLeft(2, '0');

  return '#$alphaHex$redHex$greenHex$blueHex';
}

Color? string2Color(String colorString) {
  if (colorString.isEmpty) return null;
  try {
    colorString = colorString.replaceAll('#', ''); // Eliminar '#' de la cadena
    int intValue = int.parse(colorString, radix: 16);
    if (colorString.length == 6) {
      // Si la cadena tiene solo valores RGB, agregamos el valor alfa predeterminado (0xFF)
      intValue += 0xFF000000; // Añadir valor alfa predeterminado (0xFF)
    }
    return Color(intValue);
  } catch (e) {
    print('Error al convertir el color: $e');
    return null;
  }
}

double substract2numbers(
  double number1,
  double number2,
) {
  // susbtract 2 numbers and round 2 decimals
  return double.parse((number1 - number2).toStringAsFixed(1));
}

double? convertInputForm2Double(String value) {
  return double.parse(value.replaceAll(',', '.'));
}

String? date2String(DateTime? date) {
  // convert date to string
  if (date == null) {
    return null;
  }
  final formatter = DateFormat('yyyy-MM-dd');
  return formatter.format(date);
}

double string2Double(String value) {
  // convert string to double
  double? result = double.tryParse(value);
  return result ?? 0.0;
}

String? int2string(int? value) {
  // convert int value to string
  return value?.toString();
}

int calculatePercent(
  int valueTotal,
  int valueActual,
) {
  // calculate percent from 2 values
  int percent = ((valueActual / valueTotal) * 100).round();
  return percent;
}

bool? integer2boolean(int? value) {
  // convert to boolean, if integer is 1 return true
  if (value == 1) {
    return true;
  } else {
    return false;
  }
}

String convertDoubleComma2Point(String value) {
  return value.replaceAll(',', '.');
}
