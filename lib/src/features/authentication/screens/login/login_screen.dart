import 'package:flutter/material.dart';
import 'package:full_app/src/constants/sizes.dart';
import 'package:full_app/src/features/authentication/screens/login/login_footer_widget.dart';
import 'package:full_app/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:full_app/src/features/authentication/screens/login/login_header_widget.dart';

class TLoginScreen extends StatelessWidget {
  const TLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                TLoginHeaderWidget(size: size),
                const TLoginForm(),
                const TLoginFooterWidget(),
              ],
            )
          ), 
          )
        ),
    );
  }

}





