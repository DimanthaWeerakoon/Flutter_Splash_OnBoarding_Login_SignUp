import 'package:flutter/material.dart';
import 'package:full_app/src/constants/colors.dart';
import 'package:full_app/src/constants/image_strings.dart';
import 'package:full_app/src/constants/sizes.dart';


class DashTopCourse extends StatelessWidget {
  const DashTopCourse({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 155,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 374,
            height: 160,
            child: Padding(
              padding: const EdgeInsets.only(top: 5, right: 10),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Flexible(
                        child: Text(
                          "Flutter Crash Course",
                          style: txtTheme.headline4,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          ),
                      ), 
                      const Flexible(
                        child: Image(
                          image: AssetImage(
                            tDashReactImage), 
                            height: 70,)),
              
                      ]
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                          onPressed: () {}, 
                          child: const Icon(
                            Icons.play_arrow
                            )
                          ),
                        const SizedBox(
                          width: tDashboardCardPadding,
                          ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("3 Sections", style: txtTheme.headline4, overflow: TextOverflow.ellipsis,),
                            Text("Programming Languages", style: txtTheme.bodyText2, overflow: TextOverflow.ellipsis,)
                          ],
                        )  
                                    
                    ],)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 374,
            height: 160,
            child: Padding(
              padding: const EdgeInsets.only(top: 5, right: 10),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Flexible(
                        child: Text(
                          "Flutter Crash Course",
                          style: txtTheme.headline4,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          ),
                      ), 
                      const Flexible(
                        child: Image(
                          image: AssetImage(
                            tDashReactImage), 
                            height: 70,)),
              
                      ]
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                          onPressed: () {}, 
                          child: const Icon(
                            Icons.play_arrow
                            )
                          ),
                        const SizedBox(
                          width: tDashboardCardPadding,
                          ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("3 Sections", style: txtTheme.headline4, overflow: TextOverflow.ellipsis,),
                            Text("Programming Languages", style: txtTheme.bodyText2, overflow: TextOverflow.ellipsis,)
                          ],
                        )  
                                    
                    ],)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 374,
            height: 160,
            child: Padding(
              padding: const EdgeInsets.only(top: 5, right: 10),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Flexible(
                        child: Text(
                          "Flutter Crash Course",
                          style: txtTheme.headline4,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          ),
                      ), 
                      const Flexible(
                        child: Image(
                          image: AssetImage(
                            tDashReactImage), 
                            height: 70,)),
              
                      ]
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                          onPressed: () {}, 
                          child: const Icon(
                            Icons.play_arrow
                            )
                          ),
                        const SizedBox(
                          width: tDashboardCardPadding,
                          ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("3 Sections", style: txtTheme.headline4, overflow: TextOverflow.ellipsis,),
                            Text("Programming Languages", style: txtTheme.bodyText2, overflow: TextOverflow.ellipsis,)
                          ],
                        )  
                                    
                    ],)
                  ],
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}