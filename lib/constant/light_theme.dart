import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  cardTheme: CardTheme(
    color: cc,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    elevation: 5,
    surfaceTintColor: cc,
  ),
  brightness: Brightness.light,
  primaryColor: primaryColor,
  iconTheme: IconThemeData(color: accentColor),
  appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      iconTheme: IconThemeData(color: ic),
      titleTextStyle: poppins16w600,
      actionsIconTheme: IconThemeData(color: ic)),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: tc,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: tc,
    ),
    displaySmall: TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: tc,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: tc,
    ),
    titleMedium: TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: tc,
    ),
    titleSmall: TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: tc,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: tc,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: tc,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: tc,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: tcp,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: cc,
    labelStyle: TextStyle(color: accentColor),
    hintStyle: poppins14,
    border: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(10))),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: tc),
      borderRadius: BorderRadius.circular(10),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: tc),
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: accentColor),
  colorScheme: ColorScheme.fromSeed(seedColor: accentColor)
      .copyWith(background: Colors.red),
);
