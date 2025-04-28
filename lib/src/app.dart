import 'package:flutter/material.dart';
import 'package:theming/src/main_screen.dart';
import 'package:theming/src/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      home: MainScreen(),
    );
  }
}
