import 'package:flutter/material.dart';
import 'package:test01/Screens/profile_screen.dart';
import 'package:test01/Theme/size.dart';
import 'package:test01/Theme/theme.dart';
import 'package:test01/Widgets/popButton.dart';

class OnboardingProfile extends StatelessWidget {
  const OnboardingProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: ScreenSize.screenWidth * 0.08),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PopButton(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            SizedBox(height: ScreenSize.screenHeight * 0.1),
            Center(
              child: Text(
                "Profile",
                style: AppText.heading1.copyWith(fontSize: 30),
              ),
            ),
            SizedBox(height: ScreenSize.screenHeight * 0.05),
            Center(
              child: Container(
                height: ScreenSize.screenHeight * 0.5,
                width: ScreenSize.screenWidth * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.amber,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ProfileScreen(),
              ),
            ),
            SizedBox(height: ScreenSize.screenHeight * 0.07),
            Text(
              "Explore. Discover. Enjoy.",
              style: AppText.subHeading.copyWith(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
