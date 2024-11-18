import 'package:flutter/material.dart';
import 'package:orivios_company_demo/core/color.dart';

class UserGuideWidget extends StatelessWidget {
  const UserGuideWidget(
      {super.key, required this.text, required this.title, required this.icon});
  final String title;
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            height: 43,
            width: 43,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: kblue)),
            child: icon),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, color: kblue),
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 14, color: kgrey),
            )
          ],
        )
      ],
    );
  }
}
