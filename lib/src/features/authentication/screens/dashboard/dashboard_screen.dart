import 'package:flutter/material.dart';
import 'package:full_app/src/constants/colors.dart';
import 'package:full_app/src/constants/image_strings.dart';
import 'package:full_app/src/constants/sizes.dart';
import 'package:full_app/src/constants/text_strings.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
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
                  onPressed: () {},
                  icon: const Image(
                    image: AssetImage(tDashUserImage),
                  )))
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(tDashboardPadding),
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
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: const BoxDecoration(
                        border: Border(left: BorderSide(width: 4))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(tDashboardSearch,
                            style: txtTheme.headline2
                                ?.apply(color: Colors.grey.withOpacity(0.5))),
                        const Icon(
                          Icons.mic,
                          size: 25,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: tDashboardPadding,
                  ),

                  //Categories
                  SizedBox(
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                  )
                ],
              ))),
    ));
  }
}
