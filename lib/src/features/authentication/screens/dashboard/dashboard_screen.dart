import 'package:flutter/material.dart';
import 'package:full_app/src/constants/sizes.dart';
import 'package:full_app/src/constants/text_strings.dart';
import 'package:full_app/src/features/authentication/screens/dashboard/widgets/appbar.dart';
import 'package:full_app/src/features/authentication/screens/dashboard/widgets/banners.dart';
import 'package:full_app/src/features/authentication/screens/dashboard/widgets/categories.dart';
import 'package:full_app/src/features/authentication/screens/dashboard/widgets/search.dart';
import 'package:full_app/src/features/authentication/screens/dashboard/widgets/top_courses.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        appBar: const DashBoardAppBar(),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tDashboardTitle,
                      style: txtTheme.bodyText2,
                    ),
                    Text(tDashboardHeading, style: txtTheme.headline2),
                    
                    const SizedBox(
                      height: tDashboardPadding,
                    ),
                    // Search Box
                    DashSearchBox(txtTheme: txtTheme),
                    const SizedBox(
                      height: tDashboardPadding,
                    ),
    
                    //Categories
                    DashCategories(txtTheme: txtTheme),
                    const SizedBox(
                      height: tDashboardPadding,
                    ),
    
                    //Banner
                    DashBanner(txtTheme: txtTheme), 
                    const SizedBox(height: tDashboardPadding,),
    
                    //Top Courses
                    Text(tDashboardTopCourses, style: txtTheme.headline4?.apply(fontSizeFactor:1.2)),
                    DashTopCourse(txtTheme: txtTheme)
                  ],
                ))),
      ),
    );
  }
  
}









