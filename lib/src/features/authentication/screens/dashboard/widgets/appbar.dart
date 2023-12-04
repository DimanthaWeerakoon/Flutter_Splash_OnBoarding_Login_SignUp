import 'package:flutter/material.dart';
import 'package:full_app/src/constants/colors.dart';
import 'package:full_app/src/constants/image_strings.dart';
import 'package:full_app/src/constants/text_strings.dart';
import 'package:full_app/src/repository/authentication_respository/authentication_repository.dart';


class DashBoardAppBar extends StatelessWidget implements PreferredSizeWidget{
  const DashBoardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu, color: Colors.black),
      title: Text(
        tAppName,
        style: Theme.of(context).textTheme.headline4,
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
            margin: const EdgeInsets.only(right: 20.0, top: 7.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: tCardBgColor),
            child: IconButton(
                onPressed: () {
                  AuthenticationRepostory.instance.logout();
                },
                icon: const Image(
                  image: AssetImage(tDashUserImage),
                )))
      ],
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(60);
}