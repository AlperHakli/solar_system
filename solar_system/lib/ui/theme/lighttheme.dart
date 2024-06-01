import 'package:flutter/material.dart';
import 'package:solar_system/colors.dart';

ThemeData lighttheme = ThemeData(

  secondaryHeaderColor: system_text_color,
  primaryColor: solar_text_color,
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: primarygrey,
        onPrimary: Colors.black,
        secondary: Colors.white60,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.redAccent,
        background: bgcolorwhite,
        onBackground: onbgcolor,
        surface: Colors.black,
        onSurface: Colors.grey));
