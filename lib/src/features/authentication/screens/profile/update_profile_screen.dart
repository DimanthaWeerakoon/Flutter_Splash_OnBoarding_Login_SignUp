// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'package:full_app/src/constants/colors.dart';
import 'package:full_app/src/constants/image_strings.dart';
import 'package:full_app/src/constants/sizes.dart';
import 'package:full_app/src/constants/text_strings.dart';
import 'package:full_app/src/features/authentication/controllers/profile_controller.dart';
import 'package:full_app/src/features/authentication/models/user_model.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    final txtTheme = Theme.of(context).textTheme;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          backgroundColor: tWhiteColor,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(LineAwesomeIcons.angle_left, color: tDarkColor),
          ),
          title: Text(tProfile,
              style: txtTheme.headline4?.copyWith(color: tDarkColor))),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: FutureBuilder(
          future: controller.getUserData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                UserModel userData = snapshot.data as UserModel;
                final userId = userData.id;
                final email = TextEditingController(text: userData.email);
                final password = TextEditingController(text: userData.password);
                final fullName = TextEditingController(text: userData.fullname);
                final phoneNo = TextEditingController(text: userData.phoneNo);
                return Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                            width: 120,
                            height: 120,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: const Image(
                                    image: AssetImage(tProfileImage)))),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: tPrimaryColor,
                              ),
                              child: const Icon(LineAwesomeIcons.camera,
                                  size: 20, color: Colors.black)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Form(
                        child: Column(
                      children: [
                        TextFormField(
                          controller: fullName,
                          decoration: const InputDecoration(
                              label: Text(tFullName),
                              hintText: tFullName,
                              prefixIcon: Icon(Icons.person_outline_outlined)),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          controller: email,
                          decoration: const InputDecoration(
                              label: Text(tEmail),
                              hintText: tEmail,
                              prefixIcon: Icon(Icons.email_outlined)),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          controller: phoneNo,
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                              label: Text(tPhoneNumber),
                              hintText: tPhoneNumber,
                              prefixIcon: Icon(Icons.phone_rounded)),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          controller: password,
                          obscureText: true,
                          decoration: const InputDecoration(
                              label: Text(tPassword),
                              hintText: tPassword,
                              prefixIcon: Icon(Icons.fingerprint_rounded)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () async {
                                final userData = UserModel(
                                  id: userId,
                                  email: email.text.trim(),
                                  fullname: email.text.trim(),
                                  password: email.text.trim(),
                                  phoneNo: email.text.trim(),
                                );

                                await controller.updateRecord(userData);
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: tPrimaryColor,
                                  side: BorderSide.none,
                                  shape: const StadiumBorder()),
                              child: const Text(tEditProfile,
                                  style: TextStyle(color: tDarkColor)),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text.rich(TextSpan(
                                text: tJoined,
                                style: TextStyle(fontSize: 12),
                                children: [
                                  TextSpan(
                                      text: "  $tJoinedAt",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12)),
                                ])),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.redAccent.withOpacity(0.1),
                                    elevation: 0,
                                    foregroundColor: Colors.red,
                                    shape: const StadiumBorder(),
                                    side: BorderSide.none),
                                child: const Text(tDelete))
                          ],
                        )
                      ],
                    ))
                  ],
                );
              } else if (snapshot.hasError) {
                return Center(child: Text(snapshot.error.toString()));
              } else {
                return const Center(child: Text('Something went wrong'));
              }
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      )),
    ));
  }
}
