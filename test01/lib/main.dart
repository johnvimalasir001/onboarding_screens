import 'package:flutter/material.dart';
import 'package:test01/Screens/explore_screen.dart';
import 'package:test01/Theme/size.dart';

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
      home: ExploreScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
