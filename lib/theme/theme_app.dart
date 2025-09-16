import 'package:flutter/material.dart';

class AppTheme extends ChangeNotifier {
  ThemeData _currentTheme = lightTheme;

  static final ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFF1E40FF), // Azul
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF1E40FF), // Azul
      secondary: Color(0xFF7A9B1F), // Verde Oliva
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF1E40FF),
      foregroundColor: Colors.white,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF1E40FF),
      foregroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: Colors.black87,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: const Color(0xFF1F6F61), // Verde Azulado
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF1F6F61), // Verde Azulado
      secondary: Color(0xFFB42D9C), // Magenta
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF1F6F61),
      foregroundColor: Colors.white,
    ),
  );

  ThemeData get currentTheme => _currentTheme;

  void toggleTheme() {
    if (_currentTheme == lightTheme) {
      _currentTheme = darkTheme;
    } else {
      _currentTheme = lightTheme;
    }
    notifyListeners();
  }
}
