import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'OpenSans',
      appBarTheme: appBarTheme(),
      inputDecorationTheme: inputDecorationTheme());
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      gapPadding: 10,
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28), gapPadding: 10),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      color: Colors.white,
      elevation: 0,
      brightness: Brightness.light,
      textTheme: textTheme());
}

TextTheme textTheme() {
  return TextTheme(
    headline6: TextStyle(
        color: Colors.grey, fontSize: 25, fontWeight: FontWeight.w900),
  );
}
