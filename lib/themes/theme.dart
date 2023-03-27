import 'package:firebase/themes/text_field_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{

  AppTheme._();
  static ThemeData LightTheme = ThemeData(
    inputDecorationTheme: TextformFieldTheme.lightInputDecorationTheme,

  );
  static ThemeData DarkTheme = ThemeData(
      brightness: Brightness.dark,
      inputDecorationTheme: TextformFieldTheme.darkInputDecorationTheme,

  );
}