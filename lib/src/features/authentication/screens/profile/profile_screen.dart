import 'package:flutter/material.dart';
import 'package:full_app/src/constants/colors.dart';
import 'package:full_app/src/constants/image_strings.dart';
import 'package:full_app/src/constants/sizes.dart';
import 'package:full_app/src/constants/text_strings.dart';
import 'package:full_app/src/features/authentication/screens/profile/update_profile_screen.dart';
import 'package:full_app/src/features/authentication/screens/profile/widgets/profile_menu_widget.dart';
import 'package:full_app/src/repository/authentication_respository/authentication_repository.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    var txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tWhiteColor,
        leading: IconButton(
          onPressed: () {
             Get.back();
          },
          icon: const Icon(LineAwesomeIcons.angle_left, color: tDarkColor),
        ),
        title: Text(tProfile,
            style: txtTheme.headline4?.copyWith(color: tDarkColor)),
        actions: [
          IconButton(
            onPressed: () {},
            icon:
                Icon(isDarkMode ? LineAwesomeIcons.sun : LineAwesomeIcons.moon),
            color: tDarkColor,
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(image: AssetImage(tProfileImage)))),
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
                      child: const Icon(LineAwesomeIcons.alternate_pencil,
                          size: 20, color: Colors.black)),
                )
              ],
            ),
            const SizedBox(height: 10),
            Text(
              tProfileHeading,
              style: txtTheme.headline4,
            ),
            Text(
              tProfileSubHeading,
              style: txtTheme.bodyText2,
            ),
            const SizedBox(height: 20),
            SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => UpdateProfileScreen()),
                  child: const Text(tEditProfile,
                      style: TextStyle(color: tDarkColor)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: tPrimaryColor,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                )),
            const SizedBox(
              height: 30,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),

            //MENU
            ProfileMenuWidget(
              txtTheme: txtTheme,
              title: "Settings",
              icon: LineAwesomeIcons.cog,
              onPress: () {},
            ),
            ProfileMenuWidget(
              txtTheme: txtTheme,
              title: "Billing Details",
              icon: LineAwesomeIcons.wallet,
              onPress: () {},
            ),
            ProfileMenuWidget(
              txtTheme: txtTheme,
              title: "User Management",
              icon: LineAwesomeIcons.user_check,
              onPress: () {},
            ),
            const Divider(color: Colors.grey),
            const SizedBox(
              height: 10,
            ),
            ProfileMenuWidget(
              txtTheme: txtTheme,
              title: "Information",
              icon: LineAwesomeIcons.info,
              onPress: () {},
            ),
            ProfileMenuWidget(
              txtTheme: txtTheme,
              title: "Logout",
              icon: LineAwesomeIcons.alternate_sign_out,
              textColor: Colors.red,
              endIcon: false,
              onPress: () {
                AuthenticationRepository.instance.logout();
              },
            ),
          ],
        ),
      )),
    );
  }
}
