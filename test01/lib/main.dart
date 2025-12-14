import 'package:flutter/material.dart';
import 'package:test01/Screens/onboarding_explore.dart';
import 'package:test01/Theme/size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return MaterialApp(
      home: OnboardingExplore(),
      debugShowCheckedModeBanner: false,
    );
  }
}
