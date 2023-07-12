
import 'package:flutter/material.dart';

class DarkTheme{
  static ThemeData getTheme(){
    return ThemeData(
      primaryColor: Colors.indigo,
      brightness: Brightness.dark
    );
  }
}