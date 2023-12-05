import 'package:flutter/material.dart';
import 'package:full_app/src/constants/colors.dart';
import 'package:full_app/src/constants/sizes.dart';
import 'package:full_app/src/constants/text_strings.dart';
import 'package:full_app/src/features/authentication/controllers/profile_controller.dart';
import 'package:full_app/src/features/authentication/models/user_model.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class UserManagement extends StatelessWidget {
  const UserManagement({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    final txtTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: tWhiteColor,
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(LineAwesomeIcons.angle_left, color: tDarkColor)),
          title: Text(tUserManagement,
              style: txtTheme.headline4?.copyWith(color: tDarkColor)),
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child: FutureBuilder<List<UserModel>>(
                future: controller.getAllUser(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          shrinkWrap: true,
                          itemCount: snapshot.data!.length,
                          itemBuilder: ((context, index) {
                            return Column(
                              children: [
                                ListTile(
                                  iconColor: Colors.blue,
                                  tileColor: Colors.blue.withOpacity(0.1),
                                  leading: const Icon(LineAwesomeIcons.user_1),
                                  title: Text(
                                      "Name: ${snapshot.data![index].fullname}"),
                                  subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data![index].phoneNo),
                                        Text(snapshot.data![index].email),
                                      ]),
                                ),
                                const SizedBox(height: 20.0,)
                              ],
                            );
                          }));
                    } else if (snapshot.hasError) {
                      return Center(child: Text(snapshot.error.toString()));
                    } else {
                      return const Center(child: Text('Something went wrong'));
                    }
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              )),
        ),
      ),
    );
  }
}
