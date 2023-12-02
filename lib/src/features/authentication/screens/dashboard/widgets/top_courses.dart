import 'package:flutter/material.dart';
import 'package:full_app/src/constants/colors.dart';
import 'package:full_app/src/constants/image_strings.dart';
import 'package:full_app/src/constants/sizes.dart';
import 'package:full_app/src/features/authentication/models/dashboard/courses_model.dart';


class DashTopCourse extends StatelessWidget {
  const DashTopCourse({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCourses.list;
    return SizedBox(
      height: 155,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => SizedBox(
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
                          list[index].title,
                          style: txtTheme.headline4,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          ),
                      ), 
                      Flexible(
                        child: Image(
                          image: AssetImage(
                            list[index].image), 
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
                            Text(list[index].sections, style: txtTheme.headline4, overflow: TextOverflow.ellipsis,),
                            Text(list[index].subTitle, style: txtTheme.bodyText2, overflow: TextOverflow.ellipsis,)
                          ],
                        )  
                                    
                    ],)
                  ],
                ),
              ),
            ),
          ),
      ),
    );
  }
}