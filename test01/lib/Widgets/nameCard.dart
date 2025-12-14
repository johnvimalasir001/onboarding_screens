import 'package:flutter/material.dart';
import 'package:test01/Theme/size.dart';
import 'package:test01/Theme/theme.dart';

class Namecard extends StatelessWidget {
  final String name;
  final String status;
  Namecard({super.key, required this.name, required this.status});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 26,
          backgroundImage: const AssetImage('lib/Assets/images/avatar.jpeg'),
          backgroundColor: Colors.transparent,
        ),
        SizedBox(width: ScreenSize.screenWidth * 0.04),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: AppText.heading1),
            Text(status, style: AppText.subHeading),
          ],
        ),
      ],
    );
  }
}
