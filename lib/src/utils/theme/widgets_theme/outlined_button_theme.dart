import 'package:flutter/material.dart';
import 'package:full_app/src/constants/colors.dart';
import 'package:full_app/src/constants/sizes.dart';

class TOutlinedButtonTheme {

  TOutlinedButtonTheme._();


  /* -- Light Theme --*/

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      foregroundColor: tSecondaryColor,
      side: const BorderSide(color: tSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: textButtonHeight)
      ),
  );


  /* -- Dark Theme --*/

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      foregroundColor: tWhiteColor,
      side: const BorderSide(color: tWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: textButtonHeight)
      ),
  );
}