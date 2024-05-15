import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

sealed class AppTheme {
  static final light = ThemeData(
    snackBarTheme: const SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      showCloseIcon: true,
    ),
    brightness: Brightness.light,
    colorSchemeSeed: AppColors.white,
    fontFamily: GoogleFonts.outfit().fontFamily,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 25,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20,
      ),
    ),
  );
}
