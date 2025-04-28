import 'package:flutter/material.dart';
import 'package:theming/src/theme/palette.dart';

abstract class AppTheme {
  // Einfache Variante: seedColor
  // das Farbschema (ColorScheme) wird basierend
  // auf einer einzelnen Farbe automatisch generiert
  //
  // zum Fine-Tunen kann man alle Widgets-Styles mit copyWith anpassen
  // (hier im Beispiel für den FilledButton)
  static final lightTheme = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: Palette.careGreen,
    ),
  ).copyWith(
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: Palette.careGreen,
      ),
    ),
  );

  // Erweiterte Variante: ColorScheme selbst definieren
  // hier wird das Farbschema (ColorScheme) manuell definiert
  //
  // zum Fine-Tunen kann man alle Widgets-Styles mit copyWith anpassen
  // (hier im Beispiel für den FilledButton)
  static final darkTheme = ThemeData.from(
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: Palette.prawnRed,
      onPrimary: Palette.white,
      secondary: Palette.prawnRedDark,
      onSecondary: Palette.white,
      error: Palette.prawnRed,
      onError: Palette.white,
      surface: Palette.elegantBlack,
      onSurface: Palette.white,
    ),
  ).copyWith(
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: Palette.prawnRed,
      ),
    ),
  );
}
