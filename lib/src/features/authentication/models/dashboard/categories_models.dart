import 'package:flutter/material.dart';

class DashboardCategories {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardCategories(this.title, this.heading, this.subHeading, this.onPress);

  static List<DashboardCategories> list = [
    DashboardCategories("JS", "JavaScript", "10 Lessons", null),
    DashboardCategories("F", "Flutter", "120 Lessons", null),
    DashboardCategories("J", "Java", "50 Lessons", null),
    DashboardCategories("N", "Node.js", "25 Lessons", null),
    DashboardCategories("P", "Python", "100 Lessons", null),
 ];
}