import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  //* Light Colors
  static const Color _lightPrimaryColor = Colors.white;
  static final Color _lightPrimaryVariantColor = Colors.blueGrey.shade800;
  static final Color _lightOnPrimaryColor = Colors.blueGrey.shade100;
  static const Color _lightTextColorPrimary = Colors.black;
  static const Color _appbarColorLight = Color.fromARGB(255, 232, 232, 232);
  static final Color _lightSelectedIconColor = Colors.grey.shade800;
  static const Color _lightUnselectedIconColor = Colors.grey;

  //* Dark Colors
  static final Color _darkPrimaryColor = Colors.blueGrey.shade900;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static final Color _darkOnPrimaryColor = Colors.blueGrey.shade400;
  static const Color _darkTextColorPrimary = Colors.white;
  static final Color _appbarColorDark = Colors.blueGrey.shade800;
  static const Color _darkSelectedIconColor = Colors.white;
  static final Color _darkUnselectedIconColor = Colors.grey.shade500;

  static const Color _iconColor = Colors.white;

  //* Text Theme
  static const TextStyle _lightHeadingText =
      TextStyle(color: _lightTextColorPrimary, fontFamily: 'BarlowCondensed');

  static const TextStyle _lightBodyText = TextStyle(
      color: _lightTextColorPrimary,
      fontFamily: 'BarlowCondensed',
      fontStyle: FontStyle.italic);

  static const TextTheme _lightTextTheme = TextTheme(
    displayLarge: _lightHeadingText,
    bodyLarge: _lightBodyText,
  );

  static final TextStyle _darkThemeHeadingTextStyle =
      _lightHeadingText.copyWith(color: _darkTextColorPrimary);

  static final TextStyle _darkThemeBodyeTextStyle =
      _lightBodyText.copyWith(color: _darkTextColorPrimary);

  static final TextTheme _darkTextTheme = TextTheme(
    displayLarge: _darkThemeHeadingTextStyle,
    bodyLarge: _darkThemeBodyeTextStyle,
  );

  //* Light Theme
  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: _lightPrimaryColor,
      appBarTheme: const AppBarTheme(
          backgroundColor: _appbarColorLight,
          iconTheme: IconThemeData(color: _iconColor)),
      bottomAppBarTheme: const BottomAppBarTheme(color: _appbarColorLight),
      colorScheme: ColorScheme.light(
          primary: _lightPrimaryColor,
          onPrimary: _lightOnPrimaryColor,
          primaryContainer: _lightPrimaryVariantColor),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: _lightPrimaryColor,
          selectedItemColor: _lightSelectedIconColor,
          unselectedItemColor: _lightUnselectedIconColor),
      textTheme: _lightTextTheme);

  //* Dark Theme
  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: _darkPrimaryColor,
      appBarTheme: AppBarTheme(
          backgroundColor: _appbarColorDark,
          iconTheme: const IconThemeData(color: _iconColor)),
      bottomAppBarTheme: BottomAppBarTheme(color: _appbarColorDark),
      colorScheme: ColorScheme.dark(
        primary: _darkPrimaryColor,
        onPrimary: _darkOnPrimaryColor,
        primaryContainer: _darkPrimaryVariantColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: _darkPrimaryColor,
          selectedItemColor: _darkSelectedIconColor,
          unselectedItemColor: _darkUnselectedIconColor),
      textTheme: _darkTextTheme);
}
