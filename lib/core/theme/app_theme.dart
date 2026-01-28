import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color black = Color(0xff0D0E32);
  static const Color grey = Color(0xff807E7E);
  static const Color green = Color(0xff00B98D);
  static const Color blue = Color(0xff3328A0);
  static const Color greyBold = Color(0xff5C5E80);
  static const Color greyLight = Color(0xffAAAAAA);
  static const Color iconBar = Color(0xffD9DAEE);
  static const Color white = Color(0xffFFFFFF);
  static const Color button = Color(0xff141645);
  static const Color background = Color(0xffFAFAFA);
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.blue,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: const ColorScheme.light(
        primary: AppColors.blue,
        secondary: AppColors.green,
        background: AppColors.background,
        surface: AppColors.white,
        onBackground: AppColors.black,
        onSurface: AppColors.black,
      ),
      textTheme: TextTheme(
        titleMedium: GoogleFonts.poppins(
          color: AppColors.black,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        bodyMedium: GoogleFonts.poppins(
          fontSize: 12,
          color: AppColors.greyBold,
          fontWeight: FontWeight.w600,
        ),
        bodySmall: GoogleFonts.poppins(
          fontSize: 12,
          color: AppColors.greyLight,
        ),
        displaySmall: GoogleFonts.poppins(
          color: AppColors.green,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        labelLarge: GoogleFonts.poppins(
          color: AppColors.white,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
