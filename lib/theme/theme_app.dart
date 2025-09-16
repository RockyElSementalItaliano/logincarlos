import 'package:flutter/material.dart';

class AppTheme extends ChangeNotifier {
  ThemeData _currentTheme = lightTheme;

  static final Color darkPrimaryColor = Color(0xFF455A64);
  static final Color lightPrimaryColor = Color(0xFFCFD8DC);
  static final Color primaryColor = Color(0xFF607D8B);
  static final Color textIconsColor = Color(0xFFFFFFFF);
  static final Color accentColor = Color(0xFFFF5252);
  static final Color primaryTextColor = Color(0xFF212121);
  static final Color secondaryTextColor = Color(0xFF757575);
  static final Color dividerColor = Color(0xFFBDBDBD);

  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    colorScheme: ColorScheme.light(
      primary: primaryColor,
      secondary: accentColor,
      onPrimary: textIconsColor,
      onSecondary: textIconsColor,
      background: lightPrimaryColor,
      surface: Colors.white,
      onSurface: primaryTextColor,
      onBackground: primaryTextColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: textIconsColor,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: accentColor,
      foregroundColor: textIconsColor,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: primaryTextColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: secondaryTextColor,
      ),
    ),
    dividerColor: dividerColor,
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimaryColor,
    colorScheme: ColorScheme.dark(
      primary: darkPrimaryColor,
      secondary: accentColor,
      onPrimary: textIconsColor,
      onSecondary: textIconsColor,
      background: Colors.black,
      surface: Color(0xFF303030),
      onSurface: textIconsColor,
      onBackground: textIconsColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: darkPrimaryColor,
      foregroundColor: textIconsColor,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: accentColor,
      foregroundColor: textIconsColor,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: textIconsColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: secondaryTextColor,
      ),
    ),
    dividerColor: dividerColor,
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
