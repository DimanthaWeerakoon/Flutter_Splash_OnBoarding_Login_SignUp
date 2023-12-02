import 'package:flutter/material.dart';
import 'package:full_app/src/constants/colors.dart';

class DashCategories extends StatelessWidget {
  const DashCategories({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(
              height: 50,
              width: 170,
              child: Row(
                children: [
                  Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: tDarkColor),
                      child: Center(
                        child: Text(
                          "JS",
                          style: txtTheme.headline6
                              ?.apply(color: Colors.white),
                        ),
                      )),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "JavaScript",
                          style: txtTheme.headline6,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "10 Lessons",
                          style: txtTheme.bodyText2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: 170,
              child: Row(
                children: [
                  Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: tDarkColor),
                      child: Center(
                        child: Text(
                          "JS",
                          style: txtTheme.headline6
                              ?.apply(color: Colors.white),
                        ),
                      )),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "JavaScript",
                          style: txtTheme.headline6,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "10 Lessons",
                          style: txtTheme.bodyText2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: 170,
              child: Row(
                children: [
                  Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: tDarkColor),
                      child: Center(
                        child: Text(
                          "JS",
                          style: txtTheme.headline6
                              ?.apply(color: Colors.white),
                        ),
                      )),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "JavaScript",
                          style: txtTheme.headline6,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "10 Lessons",
                          style: txtTheme.bodyText2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: 170,
              child: Row(
                children: [
                  Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: tDarkColor),
                      child: Center(
                        child: Text(
                          "JS",
                          style: txtTheme.headline6
                              ?.apply(color: Colors.white),
                        ),
                      )),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "JavaScript",
                          style: txtTheme.headline6,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "10 Lessons",
                          style: txtTheme.bodyText2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: 170,
              child: Row(
                children: [
                  Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: tDarkColor),
                      child: Center(
                        child: Text(
                          "JS",
                          style: txtTheme.headline6
                              ?.apply(color: Colors.white),
                        ),
                      )),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "JavaScript",
                          style: txtTheme.headline6,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "10 Lessons",
                          style: txtTheme.bodyText2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]),
    );
  }
}