import 'package:flutter/material.dart';
import 'package:full_app/src/constants/colors.dart';
import 'package:full_app/src/constants/image_strings.dart';
import 'package:full_app/src/constants/sizes.dart';
import 'package:full_app/src/constants/text_strings.dart';

class DashBanner extends StatelessWidget {
  const DashBanner({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: tCardBgColor),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                        child: Image(
                      image: AssetImage(tDashBookmarkImage),
                      width: tDefaultSize,
                      height: tDefaultSize,
                    )),
                    Flexible(
                        child: Image(
                            image: AssetImage(tDashJavaImage),
                            width: 100.0,
                            height: 100.0)),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Text(
                  tDashboardBannerTitle1,
                  style: txtTheme.headline4,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  tDashboardBannerSubTitle,
                  style: txtTheme.bodyText2,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: tDashboardCardPadding),
        Expanded(
            child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: tCardBgColor),
              padding: const EdgeInsets.symmetric(
                  horizontal: 10, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                          child: Image(
                        image: AssetImage(tDashBookmarkImage),
                        width: tDefaultSize,
                        height: tDefaultSize,
                      )),
                      Flexible(
                          child: Image(
                              image:
                                  AssetImage(tDashFlutterImage),
                              width: 100.0,
                              height: 100.0)),
                    ],
                  ),
                  Text(
                    tDashboardBannerTitle2,
                    style: txtTheme.headline4,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    tDashboardBannerSubTitle,
                    style: txtTheme.bodyText2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5,), 
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {}, 
                child: const Text(
                  tDashboardButton
                  )
                )
              )
          ],
        ))
      ],
    );
  }
}
