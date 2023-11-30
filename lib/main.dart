import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:full_app/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:full_app/src/utils/theme/theme.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  
  @override
  Widget build(BuildContext context) {
   return  GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: TAppTheme.lightTheme,
    darkTheme: TAppTheme.darkTheme,
    themeMode: ThemeMode.light,
    defaultTransition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 500),
    home: SplashScreen(),
   );
  }
}

