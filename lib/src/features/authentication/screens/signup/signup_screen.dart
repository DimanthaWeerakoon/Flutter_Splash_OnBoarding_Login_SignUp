import 'package:flutter/material.dart';
import 'package:full_app/src/common_widgets/form_header_widget.dart';
import 'package:full_app/src/constants/colors.dart';
import 'package:full_app/src/constants/image_strings.dart';
import 'package:full_app/src/constants/sizes.dart';
import 'package:full_app/src/constants/text_strings.dart';
import 'package:full_app/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';


class TSignUpScreen extends StatelessWidget {
  const TSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: const Column(
              children: [
                TFormHeaderWidget(
                  image: tWelcomeSreenImage,
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle,
                ),
                TSignUpFormWidget()
              ],
            ),
          )),
        
        
      ),
    );
  }


}

