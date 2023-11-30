import 'package:flutter/material.dart';



class TFormHeaderWidget extends StatelessWidget {
  const TFormHeaderWidget({
    super.key,
    required this.image, required this.title, required this.subTitle, this.imageColor, this.heightBetween, this.imageHeight, this.crossAxisAlignment, this.textAlign,
  });

  final String image,title,subTitle;
  final Color? imageColor;
  final double? heightBetween;
  final double? imageHeight;
  final CrossAxisAlignment? crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image), color: imageColor, height: size.height * imageHeight!), 
          SizedBox(height: heightBetween,),      
          Text(title, textAlign: textAlign, style: Theme.of(context).textTheme.headline2,),
          Text(subTitle, textAlign: textAlign, style: Theme.of(context).textTheme.bodyText1,),

      ],
      
    );
  }
}
