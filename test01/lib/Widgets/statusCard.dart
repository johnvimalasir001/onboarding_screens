import 'package:flutter/material.dart';
import 'package:test01/Theme/size.dart';
import 'package:test01/Theme/theme.dart';

class Statuscard extends StatelessWidget {
  const Statuscard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.screenHeight * 0.06,
      width: ScreenSize.screenWidth * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black26),
      ),
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: ScreenSize.screenWidth * 0.05,
        ),
        child: Center(
          child: Row(
            children: [
              Icon(Icons.face_retouching_natural),
              SizedBox(width: ScreenSize.screenWidth * 0.05),
              Text("Update your status", style: AppText.subHeading),
            ],
          ),
        ),
      ),
    );
  }
}
