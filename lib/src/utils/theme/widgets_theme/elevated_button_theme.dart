import 'package:flutter/material.dart';
import 'package:full_app/src/constants/colors.dart';

import '../../../constants/sizes.dart';

class TElevatedButtonTheme {

  TElevatedButtonTheme._();


  /* -- Light Theme --*/

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      backgroundColor: tSecondaryColor,
      foregroundColor: tWhiteColor,
      side: const BorderSide(color: tSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: textButtonHeight)
    ),
  );


  /* -- Dark Theme --*/

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      backgroundColor: tWhiteColor,
      foregroundColor: tSecondaryColor,
      side: const BorderSide(color: tSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: textButtonHeight)
    ),
  );
}