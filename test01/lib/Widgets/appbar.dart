import 'package:flutter/material.dart';
import 'package:test01/Theme/size.dart';
import 'package:test01/Theme/theme.dart';

AppBar myAppBar(String mytitle) {
  final double avatarRadius = ScreenSize.screenHeight * 0.020;

  return AppBar(
    leading: Padding(
      padding: EdgeInsets.only(
        left: ScreenSize.screenWidth * 0.04,
        top: ScreenSize.screenHeight * 0.01,
        bottom: ScreenSize.screenHeight * 0.01,
      ),
      child: CircleAvatar(
        radius: avatarRadius,
        backgroundImage: const AssetImage('lib/Assets/images/logo.jpeg'),
        backgroundColor: Colors.transparent,
      ),
    ),

    title: Text(mytitle, style: AppText.heading1),

    actions: [
      Padding(
        padding: EdgeInsets.only(
          right: ScreenSize.screenWidth * 0.03,
          top: ScreenSize.screenHeight * 0.01,
          bottom: ScreenSize.screenHeight * 0.01,
        ),
        child: CircleAvatar(
          radius: avatarRadius,
          backgroundImage: const AssetImage('lib/Assets/images/avatar.jpeg'),
          backgroundColor: Colors.transparent,
        ),
      ),
    ],
  );
}
