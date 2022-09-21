import 'package:flutter/material.dart';

const fontFamily = 'Poppins';

var themeLight = ThemeData(
  primaryColorLight: Colors.tealAccent,
  brightness: Brightness.light,
  primaryColor: Colors.teal,
  highlightColor: Colors.black,
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  backgroundColor: Colors.white,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal).copyWith(
    secondary: Colors.black,
    brightness: Brightness.light,
  ),
);

var themeDark = ThemeData(
  brightness: Brightness.dark,
  primaryColorDark: Colors.teal,
  primaryColor: Colors.teal,
  highlightColor: Colors.teal,
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  backgroundColor: Colors.grey[800],
  scaffoldBackgroundColor: Colors.black,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal).copyWith(
    secondary: Colors.teal,
    brightness: Brightness.dark,
  ),
);
