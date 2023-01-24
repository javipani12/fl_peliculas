import 'package:flutter/material.dart';

class AppTheme {
  
  static const Color primary = Colors.amber;

  static final ThemeData lightTheme = ThemeData.light().copyWith(

    // Color primario de la app
    primaryColor: primary,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    

  );

}