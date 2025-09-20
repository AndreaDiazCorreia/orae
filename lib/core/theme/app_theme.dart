
import 'package:flutter/material.dart';
import 'package:orae/core/theme/colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: transporterGreen,
      scaffoldBackgroundColor: fujiSnow,
      colorScheme: const ColorScheme.light(
        primary: transporterGreen,
        secondary: cozyNook,
        surface: fujiSnow,
        onSurface: blackChasm,
        error: tyrianPurple,
      ),
      fontFamily: 'Inter', // Assuming Inter, a common choice. Add to pubspec if needed.
      appBarTheme: const AppBarTheme(
        backgroundColor: fujiSnow,
        elevation: 0,
        iconTheme: IconThemeData(color: blackChasm),
        titleTextStyle: TextStyle(
          color: blackChasm,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(color: blackChasm, fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(color: blackChasm),
        bodyMedium: TextStyle(color: blackChasm),
      ),
    );
  }
}
