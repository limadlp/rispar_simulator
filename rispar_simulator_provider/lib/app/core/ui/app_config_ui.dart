import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rispar_simulator_provider/app/core/ui/const_colors.dart';

class AppConfigUI {
  AppConfigUI._();

  static const MaterialColor _primarySwatch = MaterialColor(
    0xFF3f9798,
    {
      50: Color(0xFF398889),
      100: Color(0xFF32797a),
      200: Color(0xFF2c6a6a),
      300: Color(0xFF265b5b),
      400: Color(0xFF204c4c),
      500: Color(0xFF193c3d),
      600: Color(0xFF132d2e),
      700: Color(0xFF0d1e1e),
      800: Color(0xFF060f0f),
      900: Color(0xFF000000),
    },
  );

  static final ThemeData theme = ThemeData(
    fontFamily: 'Inter',
    //textTheme: GoogleFonts.interTextTheme(),
    primarySwatch: _primarySwatch,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: const Color(0xff439596),
    primaryColorLight: const Color(0xff209595),
    inputDecorationTheme: const InputDecorationTheme(
      // border: OutlineInputBorder(),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff7a7a7a),
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff59c9be),
        ),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff7a7a7a),
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      elevation: 0,
      //toolbarHeight: 100,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Color(0xff3f9798)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(40),
        primary: const Color(0xff3f9798),
        onSurface: const Color(0xff3f9798),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
    iconTheme: const IconThemeData(color: kMainIconColor),
  );
}
