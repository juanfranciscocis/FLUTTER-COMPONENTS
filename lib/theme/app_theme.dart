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

    textButtonTheme:  TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: primary,
      ),

    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 10,
      ),

    elevatedButtonTheme:  ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
          elevation: 0,
          shape: const StadiumBorder()
      ),
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