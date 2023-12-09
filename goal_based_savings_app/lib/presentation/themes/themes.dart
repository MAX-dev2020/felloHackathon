import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static ThemeData customTheme = ThemeData(
    textTheme: TextTheme(
      headlineLarge:
          GoogleFonts.rajdhani(fontSize: 32, fontWeight: FontWeight.w600),
      headlineMedium:
          GoogleFonts.rajdhani(fontSize: 24, fontWeight: FontWeight.normal),
      headlineSmall:
          GoogleFonts.rajdhani(fontSize: 24, fontWeight: FontWeight.w500),
      titleLarge:
          GoogleFonts.rajdhani(fontSize: 22, fontWeight: FontWeight.w500),
      titleMedium:
          GoogleFonts.rajdhani(fontSize: 18, fontWeight: FontWeight.normal),
      titleSmall:
          GoogleFonts.rajdhani(fontSize: 16, fontWeight: FontWeight.w500),
      bodyLarge:
          GoogleFonts.rajdhani(fontSize: 16, fontWeight: FontWeight.normal),
      bodyMedium:
          GoogleFonts.rajdhani(fontSize: 14, fontWeight: FontWeight.normal),
      bodySmall:
          GoogleFonts.rajdhani(fontSize: 12, fontWeight: FontWeight.normal),
      labelLarge:
          GoogleFonts.rajdhani(fontSize: 16, fontWeight: FontWeight.normal),
      labelMedium:
          GoogleFonts.rajdhani(fontSize: 14, fontWeight: FontWeight.normal),
      labelSmall:
          GoogleFonts.rajdhani(fontSize: 12, fontWeight: FontWeight.normal),
      displayLarge:
          GoogleFonts.rajdhani(fontSize: 64, fontWeight: FontWeight.normal),
      displayMedium:
          GoogleFonts.rajdhani(fontSize: 44, fontWeight: FontWeight.normal),
      displaySmall:
          GoogleFonts.rajdhani(fontSize: 36, fontWeight: FontWeight.w600),
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF006A64),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFF71F7ED),
      onPrimaryContainer: Color(0xFF00201E),
      secondary: Color(0xFF4A6360),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFCCE8E4),
      onSecondaryContainer: Color(0xFF051F1D),
      tertiary: Color(0xFF48617B),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFCFE5FF),
      onTertiaryContainer: Color(0xFF001D34),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
      onError: Color(0xFFFFFFFF),
      onErrorContainer: Color(0xFF410002),
      background: Color.fromARGB(255, 11, 32, 18),
      onBackground: Color(0xFF191C1C),
      surface: Color(0xFFFAFDFB),
      onSurface: Color(0xFF191C1C),
      surfaceVariant: Color(0xFFDAE5E2),
      onSurfaceVariant: Color(0xFF3F4947),
      outline: Color(0xFF6F7977),
      onInverseSurface: Color(0xFFEFF1F0),
      inverseSurface: Color(0xFF2D3130),
      inversePrimary: Color(0xFF4FDBD1),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF006A64),
      outlineVariant: Color(0xFFBEC9C7),
      scrim: Color(0xFF000000),
    ),
    useMaterial3: true,
  );
}
