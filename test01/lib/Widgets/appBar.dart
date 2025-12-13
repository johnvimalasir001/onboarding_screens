import 'package:flutter/material.dart';
import 'package:test01/Theme/size.dart';
import 'package:test01/Theme/theme.dart';

AppBar myAppBar(String mytitle) {
  return AppBar(
    title: Text(mytitle, style: AppText.heading1),
    actions: [
      CircleAvatar(
      backgroundColor: Colors.white,
      child: ClipOval(
        child: Image.asset(
          'lib/Assets/images/avatar.jpeg',
          fit: BoxFit.cover,
          width: 35,
          height: 35,
        ),
      ),
    ),
    SizedBox(width: ScreenSize.screenWidth * 0.03),
    ],
  );
}
