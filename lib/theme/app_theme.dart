import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData(
    primaryColor: primary,
    accentColor: primary,
    iconTheme: IconThemeData(
      color: primary,
    ),
    appBarTheme: const AppBarTheme(
      color: primary,
    ),
  );

static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primary,
    accentColor: primary,
    iconTheme: IconThemeData(
      color: primary,
    ),
    appBarTheme: const AppBarTheme(
      color: primary,
    ),
  );








}