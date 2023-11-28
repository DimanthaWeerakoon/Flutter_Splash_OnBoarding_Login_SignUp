import "package:flutter/material.dart";
import "package:full_app/src/utils/theme/widgets_theme/elevated_button_theme.dart";
import "package:full_app/src/utils/theme/widgets_theme/outlined_button_theme.dart";
import "package:full_app/src/utils/theme/widgets_theme/text_theme.dart";

class TAppTheme {

  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme
  );
  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme( backgroundColor: Colors.yellow[600]),
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme
  ); 


}