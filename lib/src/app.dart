import 'package:flutter/material.dart';
import 'package:theming/src/main_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.light, seedColor: Colors.blue),
      ).copyWith(
        cardTheme: CardThemeData(
          color: Colors.grey,
          elevation: 16,
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 75, 95, 128),
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
      ),
      home: MainScreen(),
    );
  }
}
