import 'package:flutter/material.dart';
import 'package:full_app/src/constants/sizes.dart';
import 'package:full_app/src/constants/text_strings.dart';

class TSignUpFormWidget extends StatelessWidget {
  const TSignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text(tFullName),
                hintText: tFullName,
                prefixIcon: Icon(Icons.person_outline_outlined)
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(tEmail),
                hintText: tEmail,
                prefixIcon: Icon(Icons.email_outlined)
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                label: Text(tPhoneNumber),
                hintText: tPhoneNumber,
                prefixIcon: Icon(Icons.phone_rounded)
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(tPassword),
                hintText: tPassword,
                prefixIcon: Icon(Icons.fingerprint_rounded)
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(tSignUp.toUpperCase())
                ),
            ),
          ],
        ),)
    );
  }
}