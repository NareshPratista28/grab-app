import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color greenColor = Color(0xFF58BC6B);
  static const Color blackColor = Color(0xFF262626);
  static const Color blackButtonColor = Color(0xFF404040);
  static const Color darkColor = Color(0xFF526071);
  static const Color greyColor = Color(0xFF737373);
  static const Color cardDisabledColor = Color(0xFFF2F2F2);
  static const Color cardButtonColor = Color(0xFFE0E0E0);
  static const Color yellowColor = Color(0xFFFDE047);
  static const Color tetriaryColor = Color(0xFF959EA9);
  static const Color blueColor = Color(0xFF0090FF);
  static const Color redColor = Color(0xFFE9342C);
  static const Color disableColor = Color(0xFFBDBDBD);
  static const Color bgSoftColor = Color(0xFFF1F5FC);
  static const Color sliderInActive = Color(0xFFBFDBFE);
  static const Color secondaryColor = Color(0xFF5674ED);
  static const Color primaryColor = Color(0xFF34C3F9);
  static const Color yellowButtonColor = Color(0xFFFACC15);
  static const Color itemBgColor = Color(0xFFCCEFDC);
}

class AppTextStyles {
  static TextStyle blackTextStyle = GoogleFonts.poppins(
    color: AppColors.blackColor,
  );

  static TextStyle logoTextStyle = GoogleFonts.comfortaa(
    color: AppColors.whiteColor,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static TextStyle greyTextStyle = GoogleFonts.poppins(
    color: AppColors.greyColor,
  );

  static TextStyle yellowTextStyle = GoogleFonts.poppins(
    color: AppColors.yellowColor,
  );

  static TextStyle redTextStyle = GoogleFonts.poppins(
    color: AppColors.redColor,
  );

  static TextStyle disableTextStyle = GoogleFonts.poppins(
    color: AppColors.disableColor,
  );

  static TextStyle primaryTextStyle = GoogleFonts.poppins(
    color: AppColors.primaryColor,
  );

  static TextStyle blueTextStyle = GoogleFonts.poppins(
    color: AppColors.blueColor,
  );

  static TextStyle secondaryTextStyle = GoogleFonts.poppins(
    color: AppColors.secondaryColor,
  );

  static TextStyle whiteTextStyle = GoogleFonts.poppins(
    color: AppColors.whiteColor,
  );

  static TextStyle tetriaryTextStyle = GoogleFonts.poppins(
    color: AppColors.tetriaryColor,
  );

  static TextStyle blackButtonTextStyle = GoogleFonts.poppins(
    color: AppColors.blackButtonColor,
  );
}

ThemeData appTheme() {
  return ThemeData(
    textTheme: GoogleFonts.poppinsTextTheme(),
    fontFamily: GoogleFonts.poppins().fontFamily,
    scaffoldBackgroundColor: AppColors.whiteColor,
  );
}
