import 'package:flutter/material.dart';
import 'package:practica_3/homeScreen.dart';


class MainApp extends StatelessWidget {
  const MainApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 110, 9, 178),
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 5, 172, 144)),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontFamily: 'sans-serif',
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 255, 4),
          ), 
          bodySmall: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w900,
            color: Color.fromARGB(255, 208, 255, 0),
          ),
        ),
      ),
    );
  }
}
