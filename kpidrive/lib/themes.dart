import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  useMaterial3: false,
  tabBarTheme: const TabBarTheme(
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
        color: Colors.white,
        width: 2,
      ),
    ),
  ),
  brightness: Brightness.dark,
  primaryColor: Colors.white,
  
  secondaryHeaderColor: const Color(0xFF1E1E1E),
  dividerColor: const Color(0xFF515151),
  fontFamily: 'Montserrat',
  textTheme: const TextTheme(
    bodySmall: TextStyle(
      color: Colors.white,
      fontSize: 12,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontSize: 16,
    ),
    bodyLarge: TextStyle(
      color: Colors.white,
      fontSize: 20,
    ),
    titleMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    titleSmall: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
    headlineSmall: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
    headlineMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
    headlineLarge: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
  ),
  scaffoldBackgroundColor: const Color(0xFF19191B),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF121212),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF121212),
    elevation: 0,
  ),
);
