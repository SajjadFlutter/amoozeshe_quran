import 'package:flutter/material.dart';

class MyTheme {
  // light theme
  static final theme = ThemeData(
    fontFamily: 'shabnam',
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: Colors.grey.shade800,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        color: Colors.grey.shade800,
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
      labelLarge: const TextStyle(
        color: Colors.white,
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
      labelMedium: TextStyle(
        color: Colors.grey.shade800,
        fontSize: 14.0,
      ),
      bodyMedium: TextStyle(
        color: Colors.grey.shade800,
        fontSize: 14.0,
      ),
    ),
    cardColor: Colors.white,
    primaryColor: const Color(0xFF5534a5),
    secondaryHeaderColor: Colors.grey.shade600,
    hintColor: Colors.grey.shade800,
  );
}
