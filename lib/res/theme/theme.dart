import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    accentColor: Colors.white,
    primaryColor: Colors.limeAccent[700],
    backgroundColor: Colors.grey[900],
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    accentColor: Colors.black,
    primaryColor: Colors.limeAccent[700],
    backgroundColor: Colors.grey[900],
  );
}
