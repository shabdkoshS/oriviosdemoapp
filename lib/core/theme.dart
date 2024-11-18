import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  // brightness: Brightness.light,
  primaryColor: Colors.blue,
  colorScheme: const ColorScheme.dark(surface: Colors.white),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue,
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
  ),
  textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.black)),
);
ThemeData darkTheme = ThemeData(
  // brightness: Brightness.dark,
  primaryColor: Colors.amber,
  colorScheme: const ColorScheme.dark(surface: Colors.black),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.amber,
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
  ),
);