import 'package:ailo_ai_chat_app/constants/colors.dart';
import 'package:flutter/material.dart';

class FontSizes {
  static const extraSmall = 14.0;
  static const small = 16.0;
  static const standard = 18.0;
  static const large = 20.0;
  static const extraLarge = 24.0;
  static const doubleExtraLarge = 26.0;
}

ThemeData lightMode = ThemeData(
  fontFamily: 'Outfit',
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
    shadowColor: kMainTextColor.withOpacity(0.5),
    backgroundColor: kMainSecondaryColor,
  ),
  colorScheme: ColorScheme.light(
    background: kMainBackgroundColor,
    primary: kMainPrimaryColor,
    secondary: kMainSecondaryColor,
    error: kMainPrimaryColor,
    onBackground: kMainBackgroundColor,
    inversePrimary: kMainPrimaryColor,
    inverseSurface: kMainTextColor.withOpacity(0.7),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(color: kMainPrimaryColor),
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: kMainTextColor,
    ),
    titleSmall: TextStyle(
      color: kMainTextColor,
    ),
    bodyMedium:
        TextStyle(color: kMainBackgroundColor, fontSize: FontSizes.small),
    bodySmall: TextStyle(color: kMainTextColor, fontSize: FontSizes.small),
  ),
);

ThemeData darkMode = ThemeData(
  fontFamily: 'Outfit',
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    shadowColor: Colors.white,
    backgroundColor: Color(0xFF272627),
  ),
  colorScheme: ColorScheme.dark(
    background: Color(0xff2d2c2d),
    primary: kMainPrimaryColor,
    secondary: kMainSecondaryColor,
    error: kMainSecondaryColor,
    onBackground: Color(0xFF323132),
    inversePrimary: Colors.white.withOpacity(0.9),
    inverseSurface: Colors.white.withOpacity(0.7),
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: kMainSecondaryColor,
    ),
    titleSmall: TextStyle(
      color: Color(0xff2d2c2d),
    ),
    bodyMedium: TextStyle(color: Color(0xffEEEEEE), fontSize: FontSizes.small),
    bodySmall: TextStyle(color: Color(0xff2d2c2d), fontSize: FontSizes.small),
  ),
);
