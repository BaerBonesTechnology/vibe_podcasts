import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final vibeThemeData = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: Color(Colors.grey[200]?.value ?? 0xFFEEEEEE,),
  ),
  scaffoldBackgroundColor: Color(Colors.grey[200]?.value ?? 0xFFEEEEEE,),
  textTheme: TextTheme(
    displayLarge: GoogleFonts.poppinsTextTheme().displayLarge?.copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.bold
    )
  ),
);