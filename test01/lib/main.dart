import 'package:flutter/material.dart';
import 'package:test01/Screens/home.dart';
import 'package:test01/Screens/home_onboarding.dart';
import 'package:test01/Screens/search.dart';
import 'package:test01/Theme/size.dart';
import 'package:test01/Screens/explore_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return MaterialApp(
      home: HomeOnboarding(), 
      debugShowCheckedModeBanner: false,
    );
  }
}
