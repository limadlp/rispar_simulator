import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rispar_simulator_provider/app/core/ui/const_colors.dart';

class AppConfigUI {
  AppConfigUI._();

  static final ThemeData theme = ThemeData(
    //textTheme: GoogleFonts.interTextTheme(),
    //primarySwatch: _primarySwatch,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: const Color(0xff439596),
    primaryColorLight: const Color(0xff209595),
    inputDecorationTheme: const InputDecorationTheme(
      // border: OutlineInputBorder(),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
      labelStyle: TextStyle(
        color: Colors.black,
      ),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      toolbarHeight: 100,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Color(0xff3f9798)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(40),
        primary: const Color(0xff439596),
        onSurface: const Color(0xff439596),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
    iconTheme: const IconThemeData(color: kMainIconColor),
  );
}
