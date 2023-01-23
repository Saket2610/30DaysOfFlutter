import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.blue,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          textTheme: Theme.of(context).textTheme,
        ),
        // primaryTextTheme: GoogleFonts.latoTextTheme()
      );

  static ThemeData DarkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        // primaryTextTheme: GoogleFonts.latoTextTheme()
      );
}
