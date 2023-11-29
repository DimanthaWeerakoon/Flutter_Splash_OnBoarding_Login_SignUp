import 'package:flutter/material.dart';
import 'package:full_app/src/constants/image_strings.dart';
import 'package:full_app/src/constants/text_strings.dart';


class TLoginHeaderWidget extends StatelessWidget {
  const TLoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage(tLoginScreenImage), 
          height: size.height * 0.2,),
          Text(tLoginTitle, style: Theme.of(context).textTheme.headline2,),
          Text(tLoginSubTitle, style: Theme.of(context).textTheme.bodyText1,),

      ],
      
    );
  }
}
