import 'package:flutter/material.dart';

class Themes {
  static MaterialColor blue = MaterialColor(
    0xFF0353A4,
    <int, Color>{
      50: Color(0xFF8BB8E6),
      100: Color(0xFF67A2DE),
      200: Color(0xFF438CD6),
      300: Color(0xFF2479CF),
      400: Color(0xFF0466C8),
      500: Color(0xFF0353A4),
      600: Color(0xFF023E7D),
      700: Color(0xFF002855),
      800: Color(0xFF001845),
      900: Color(0xFF001233),
    },
  );

  static MaterialColor blueGrey = MaterialColor(
    0xFF6D768A,
    <int, Color>{
      50: Color(0xFFC9CDD5),
      100: Color(0xFFB9BEC8),
      200: Color(0xFFA9AEBB),
      300: Color(0xFF979DAC),
      400: Color(0xFF7D8597),
      500: Color(0xFF6D768A),
      600: Color(0xFF5C677D),
      700: Color(0xFF48546D),
      800: Color(0xFF33415C),
      900: Color(0xFF2E3B54),
    },
  );

  static ThemeData mainTheme = ThemeData(
    primarySwatch: blue,
    accentColor: blueGrey.shade600,
    textTheme: TextTheme(
      headline4: TextStyle(
        color: Colors.white,
        fontSize: 35,
        fontWeight: FontWeight.w900,
        fontStyle: FontStyle.italic,
      ),
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w200,
        fontStyle: FontStyle.italic,
      ),
      caption: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w100,
        fontStyle: FontStyle.italic,
      ),
    ),
    cardTheme: CardTheme(
      color: Themes.blue.shade800,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      shadowColor: Colors.black26,
    ),
    hintColor: Themes.blueGrey.shade600,
  );
}
