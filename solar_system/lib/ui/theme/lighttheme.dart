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
        onSecondary: dark_grey,
        error: Colors.red,
        onError: Colors.redAccent,
        background: bgcolor2,
        onBackground: onbgcolor,
        surface: galaxytipiconcolor,
        onSurface: Colors.grey));
