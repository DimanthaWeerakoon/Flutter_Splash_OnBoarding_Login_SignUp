import 'package:full_app/src/constants/image_strings.dart';

class DashboardCourses {

  final String title;
  final String sections;
  final String subTitle;
  final String image;

  DashboardCourses(this.title, this.sections, this.subTitle, this.image);


  static List<DashboardCourses> list = [
  DashboardCourses("JAVA Programming", "4 Sections", "OOP & Projects", tDashJavaImage),  
  DashboardCourses("Flutter", "10 Sections", "UI Creating", tDashFlutterImage),  
  DashboardCourses("JavaScript", "20 Sections", "OOP & Projects", tDashJSImage),  
  DashboardCourses("Python Programming", "25 Sections", "Programming", tDashPythonImage),  
  DashboardCourses("Figma Designing", "50 Sections", "UI/UX Designing", tDashFigmaImage),  
  DashboardCourses("Node.js Backend", "30 Sections", "Backend Programming", tDashNodeImage),  
  DashboardCourses("React.js Frontend", "40 Sections", "Frontend Programming", tDashReactImage),  
  ];
}