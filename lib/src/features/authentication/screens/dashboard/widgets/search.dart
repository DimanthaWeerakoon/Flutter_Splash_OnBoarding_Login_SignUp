import 'package:flutter/material.dart';
import 'package:full_app/src/constants/text_strings.dart';

class DashSearchBox extends StatelessWidget {
  const DashSearchBox({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}