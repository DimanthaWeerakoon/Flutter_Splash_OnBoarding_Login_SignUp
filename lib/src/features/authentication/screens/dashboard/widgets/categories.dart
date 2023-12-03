import 'package:flutter/material.dart';
import 'package:full_app/src/constants/colors.dart';
import 'package:full_app/src/features/authentication/models/dashboard/categories_models.dart';

class DashCategories extends StatelessWidget {
  const DashCategories({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategories.list;
    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: list.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal, 
          itemBuilder: (context, index) => GestureDetector(
            onTap: list[index].onPress,
            child: SizedBox(
                height: 50,
                width: 170,
                child: Row(
                  children: [
                    Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: tCategoryColor),
                        child: Center(
                          child: Text(
                            list[index].title,
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
                            list[index].heading,
                            style: txtTheme.headline6,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            list[index].subHeading,
                            style: txtTheme.bodyText2,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
          ),
    ));
  }
}