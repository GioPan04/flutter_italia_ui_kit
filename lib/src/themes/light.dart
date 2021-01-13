import 'package:flutter/material.dart';
import 'package:italia_ui_kit/src/themes/ItaliaThemeData.dart';

const int _defaultLightColor = 0xFF0066CC;

const MaterialColor primaryLightColor = MaterialColor(
  _defaultLightColor,
  <int,Color> {
    50: Color(0xFFF0F6FC),
    100: Color(0xFFD0E2F5),
    200: Color(0xFFA6CAED),
    300: Color(0xFF7FB2E5),
    400: Color(0xFF599BDE),
    500: Color(_defaultLightColor),
    600: Color(0xFF3686D6),
    700: Color(0xFF0066CC),
    800: Color(0xFF0059B3),
    900: Color(0xFF004D99),
    950: Color(0xFF004080),
  }
);

ThemeData lightTheme = ThemeData(
  primarySwatch: primaryLightColor
);


class ItaliaLightThemeData extends ItaliaThemeData {
  final Color primaryButtonColor = Color(0xFF0073E6); 
}