import 'package:flutter/material.dart';
import 'package:traviki/core/theme/app_colors.dart';

class AppTheme {
  static final authTheme = ThemeData(
    fontFamily: 'Urbanist',
    scaffoldBackgroundColor: Colors.white,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.border, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.border),
      ),
      fillColor: AppColors.light,
      filled: true,
      floatingLabelStyle: TextStyle(color: AppColors.dark, fontSize: 14),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.5,
        color: AppColors.dark,
      ),
      bodyMedium: TextStyle(fontSize: 14, color: AppColors.darkgray),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.dark,
        // backgroundColor: AppColors.dark,
        foregroundColor: Colors.white,
        minimumSize: const Size.fromHeight(50),
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  );

  static final mainTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    // fontFamily: 'poppins'
    fontFamily: 'Urbanist',
     
  );
}
