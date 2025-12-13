import 'package:flutter/material.dart';
import 'package:test01/Screens/search.dart';
import 'package:test01/Theme/size.dart';
import 'package:test01/Theme/theme.dart';
import 'package:test01/Widgets/nextButton.dart';

class HomeOnboarding extends StatelessWidget {
  const HomeOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: NextButton(nextScreen: const SearchPage()),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to Agam!',
            style: AppText.heading1,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 50),

          Container(
            height: ScreenSize.screenHeight * 0.40,
            width: ScreenSize.screenWidth * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 20,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'lib/Assets/images/homepage.jpg',
                fit: BoxFit.contain,
              ),
            ),
          ),

          const SizedBox(height: 70),

          Text(
            'Share your information faster 🚀',
            style: AppText.heading2,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 12),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Search, share, and access everything you need in just a few taps.',
              style: AppText.subHeading,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
