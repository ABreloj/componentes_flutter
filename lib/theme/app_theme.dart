import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  //Constante del color primario
  static const primaryColor = Color.fromARGB(255, 5, 172, 144);
  //Constante del color de fondo
  static const backColor = Color.fromARGB(255, 110, 9, 178);

  //Constante de color secundario
  static const secondaryColor = Color.fromARGB(255, 212, 255, 0);

  //Definicion del tema edl color y estilo de la ap
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color: primaryColor),
    textTheme: TextTheme(
          headlineLarge: GoogleFonts.aladin(        
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ), 

          //Fuentes para textos chiquitos
          bodySmall: GoogleFonts.zenTokyoZoo(
            fontSize: 18.0,
            fontWeight: FontWeight.w900,
            color: secondaryColor,
          ),
        ),

  );
}