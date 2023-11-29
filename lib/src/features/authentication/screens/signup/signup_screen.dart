import 'package:flutter/material.dart';
import 'package:full_app/src/common_widgets/form_header_widget.dart';
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
          child: Column(
            children: [
              const TFormHeaderWidget(
                image: tWelcomeSreenImage,
                title: tSignUpTitle,
                subTitle: tSignUpSubTitle,
              ),
              const TSignUpFormWidget(),
              // const SizedBox(height: -20.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("OR"),
                  const SizedBox(height: 15.0),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage(tGoogleLogoImage),
                        width: 20.0,
                      ),
                      label: const Text(tSignInWithGoogle),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text.rich(TextSpan(
                          text: tAlreadyHaveAnAccount,
                          style: Theme.of(context).textTheme.bodyText1,
                          children: const [
                            TextSpan(
                              text: tLogin,
                              style: TextStyle(color: Colors.blue),
                            )
                          ])))
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
