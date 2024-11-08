import 'package:flutter/material.dart';
import 'package:pro_multimedia/style/app_colors.dart';

class AppTheme {
  ThemeData data = ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.primary_100,
    appBarTheme: const AppBarTheme(
      color: AppColors.white,
      centerTitle: true,
    ),
    cardTheme: const CardTheme(
      elevation: 0.5,
    ),
    scaffoldBackgroundColor: AppColors.white,
    dividerColor: AppColors.dark_20,
  );
}
