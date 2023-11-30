import 'package:flutter/material.dart';
import 'package:full_app/src/common_widgets/form_header_widget.dart';
import 'package:full_app/src/constants/image_strings.dart';
import 'package:full_app/src/constants/sizes.dart';
import 'package:full_app/src/constants/text_strings.dart';

class TForgotPasswordMailScreen extends StatelessWidget {
  const TForgotPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                const SizedBox(height: tDefaultSize * 4,),
                const TFormHeaderWidget(
                  image: tForgotPasswordImage,
                  title: tForgotPasswordText,
                  subTitle: tForgotPasswordSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  imageHeight: 0.25,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: tFormHeight),
                Form(
                  child: Column(
                   children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(tEmail),
                        hintText: tEmail,
                        prefixIcon: Icon(Icons.mail_outline_outlined)
                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text(tNext),),)
                   ], 
                  )
                )
              ],
            ),
          ),
        )
      ),
    );
  }

}