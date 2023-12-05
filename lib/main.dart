import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:full_app/firebase_options.dart';
import 'package:full_app/src/repository/authentication_respository/authentication_repository.dart';
import 'package:get/get.dart';

import 'package:full_app/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:full_app/src/utils/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home: const CircularProgressIndicator(),
    );
  }
}
