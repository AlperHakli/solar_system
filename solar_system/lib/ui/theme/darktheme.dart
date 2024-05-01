import 'package:flutter/material.dart';
import 'package:solar_system/colors.dart';

ThemeData darktheme = ThemeData(
  primaryColor: solar_text_color_dark,
    secondaryHeaderColor: system_text_color,
    colorScheme: const ColorScheme(brightness: Brightness.light,
        primary: Colors.grey,
        onPrimary: Colors.black,
        secondary: Colors.white24,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.redAccent,
        background: Colors.white24,
        onBackground: Colors.blue,
        surface: Colors.black,
        onSurface: Colors.grey));
