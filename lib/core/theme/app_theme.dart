import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightBackground,
    cardColor: AppColors.lightCard,
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      onSurfaceVariant: AppColors.subtitle,
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.lightText,
      ),
      bodySmall: TextStyle(fontSize: 12),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkBackground,
    cardColor: AppColors.darkCard,
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.dark(
      primary: AppColors.primary,
      onSurfaceVariant: AppColors.subtitle,
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.darkText,
      ),
      bodySmall: TextStyle(fontSize: 12),
    ),
  );
}
