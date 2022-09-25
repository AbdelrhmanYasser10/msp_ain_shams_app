import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:msp_app_version2/shared/style/colors/colors.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: bgDarkTheme,
  appBarTheme: AppBarTheme(
    titleSpacing: 20.0,
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor:bgDarkTheme,
      statusBarIconBrightness: Brightness.light,
    ),
    backgroundColor: bgDarkTheme,
    elevation: 0.0,
    titleTextStyle: GoogleFonts.raleway(
      fontSize: 20.0,
      color: Colors.white,
      fontWeight: FontWeight.bold
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      elevation: 20.0,
      backgroundColor: bgDarkTheme
  ),
  textTheme: TextTheme(
    headline1: GoogleFonts.raleway(
        fontSize: 36.0,
        color: Colors.white,
        fontWeight: FontWeight.bold
    ),
    headline2: GoogleFonts.raleway(
        fontSize: 13.0,
        color: Colors.white60,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.5
    ),
    headline3: GoogleFonts.raleway(
        fontSize: 26.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.5
    ),
    bodyText1: GoogleFonts.raleway(
        fontSize: 18.0,
        color: Colors.white,
        fontWeight: FontWeight.w600
    ),
    subtitle1: GoogleFonts.raleway(
        fontSize: 14.0,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        height: 1.5
    ),
    subtitle2: GoogleFonts.raleway(
        fontSize: 9.0,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        height: 1.3
    ),
  ),
  fontFamily: GoogleFonts.raleway().fontFamily,
);

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: bgLightTheme,
  appBarTheme: AppBarTheme(
    titleSpacing: 20.0,
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: bgLightTheme,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
    titleTextStyle:GoogleFonts.raleway(
        fontSize: 20.0,
        color: Colors.black,
        fontWeight: FontWeight.bold
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
  ),
  bottomNavigationBarTheme:const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    elevation: 20.0,
    backgroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    headline1: GoogleFonts.raleway(
        fontSize: 36.0,
        color: Colors.black,
        fontWeight: FontWeight.bold
    ),
    headline2: GoogleFonts.raleway(
        fontSize: 13.0,
        color: Colors.black54,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.5
    ),
    headline3: GoogleFonts.raleway(
        fontSize: 26.0,
        color: Colors.black,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.5
    ),
    bodyText1: GoogleFonts.raleway(
        fontSize: 18.0,
        color: Colors.black,
        fontWeight: FontWeight.w600
    ),
    subtitle1: GoogleFonts.raleway(
        fontSize: 14.0,
        color: Colors.black,
        fontWeight: FontWeight.w600,
        height: 1.5
    ),
    subtitle2: GoogleFonts.raleway(
        fontSize: 9.0,
        color: Colors.black,
        fontWeight: FontWeight.w600,
        height: 1.3
    ),
  ),
  fontFamily: GoogleFonts.raleway().fontFamily,
);