import 'package:flutter/material.dart';

class AppStyling {
  static Color primaryColor = Colors.white;
  static Color accentColor = Colors.white;
  static Color textColor = Colors.black;
  static Color appBackGroundColor = Colors.white;
  ThemeData appTheme = ThemeData(
      backgroundColor: appBackGroundColor,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: appBackGroundColor
  );
}
