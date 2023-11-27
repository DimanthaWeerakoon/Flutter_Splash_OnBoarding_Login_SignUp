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
    theme: AppTheme.lightTheme,
    darkTheme: AppTheme.darkTheme,
    themeMode: ThemeMode.system,
    home: SplashScreen(),
   );
  }
}

