import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  dividerColor: Colors.white24,
  scaffoldBackgroundColor: const Color.fromARGB(255, 38, 38, 38),
  primarySwatch: Colors.yellow,
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      backgroundColor: Color.fromARGB(255, 38, 38, 38)),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 20,
    ),
    bodySmall: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
  ),
);
