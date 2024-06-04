import 'package:flutter/material.dart';

class MyTheme {
  // light theme
  static final theme = ThemeData(
    fontFamily: 'shabnam',
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: Colors.grey.shade800,
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        color: Colors.grey.shade800,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
      labelLarge: const TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
      labelMedium: TextStyle(
        color: Colors.grey.shade800,
        fontSize: 16.0,
      ),
      bodyMedium: TextStyle(
        color: Colors.grey.shade800,
        fontSize: 16.0,
      ),
    ),
    cardColor: Colors.white,
    primaryColor: const Color(0xFF008F3B),
    secondaryHeaderColor: Colors.grey.shade600,
    hintColor: Colors.grey.shade800,
  );
}
