import 'package:flutter/material.dart';
import 'package:test01/Theme/size.dart';
import 'package:test01/Theme/theme.dart';

class Settingcard extends StatelessWidget {
  final IconData icon;
  final String title;

  const Settingcard({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: ScreenSize.screenWidth * 0.03),
        Text(title, style: AppText.normal.copyWith(fontSize: 16)),
        const Spacer(),
        title == "Push Notification"
            ? Text("On", style: AppText.subHeading)
            : Text(" ", style: AppText.subHeading),
      ],
    );
  }
}
