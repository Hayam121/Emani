import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color yellow = Color(0xFFFACC1D);
  static final ThemeData lightTheme = ThemeData(
      bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18)))),
      cardColor: Colors.white,
      textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize: 22, color: Colors.black),
        headlineMedium: TextStyle(fontSize: 28, color: Colors.black),
        titleSmall: TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      primaryColor: lightPrimary,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
          iconTheme: IconThemeData(color: Colors.black)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          size: 36,
          color: Colors.black,
        ),
        unselectedIconTheme: IconThemeData(
          size: 24,
          color: Colors.white,
        ),
        selectedLabelStyle: TextStyle(
          color: Colors.black,
        ),
        selectedItemColor: Colors.black,
      ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: lightPrimary));
  static final ThemeData darkTheme = ThemeData(
      bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: darkPrimary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18)))),
      cardColor: darkPrimary,
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 22,
          color: Colors.white,
        ),
        headlineMedium: TextStyle(fontSize: 28, color: Colors.white),
        titleSmall: TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
      ),
      primaryColor: darkPrimary,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
          iconTheme: IconThemeData(color: Colors.white)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          size: 36,
          color: yellow,
        ),
        unselectedIconTheme: IconThemeData(
          size: 24,
          color: Colors.white,
        ),
        selectedLabelStyle: TextStyle(
          color: yellow,
        ),
        selectedItemColor: yellow,
      ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: yellow));
}
