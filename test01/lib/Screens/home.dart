import 'package:flutter/material.dart';
import 'package:test01/Screens/profile_screen.dart';
import 'package:test01/Screens/search.dart';
import 'package:test01/Theme/size.dart';
import 'package:test01/Widgets/appbar.dart';
import 'package:test01/Widgets/homelist.dart';
import 'package:test01/Widgets/nextButton.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar("Home Page"),
      body: Column(
        children: [
          SizedBox(height: ScreenSize.screenHeight * 0.03),
          HomeContainer(name: "Guru", time: "05:30 PM", message: "Hi, I would like to get access to Gemini Pro", imagePath: 'lib/Assets/images/avatar.jpeg'),
          HomeContainer(name: "Bob", time: "05:45 PM", message: "Hello! Sure, Please share your email!", imagePath: 'lib/Assets/images/avatar2.jpeg'),
          HomeContainer(name: "Guru", time: "06:00 PM", message: "Thank you! I have sent my email to you.", imagePath: 'lib/Assets/images/avatar.jpeg'),
          HomeContainer(name: "Bob", time: "06:05 PM", message: "Got it. You will receive access shortly.", imagePath: 'lib/Assets/images/avatar2.jpeg'),
          HomeContainer(name: "Kumar", time: "06:10 PM", message: "Hey Bob, can you also give me access to Gemini Pro?", imagePath: 'lib/Assets/images/avatar3.jpg'),
          HomeContainer(name: "Bob", time: "06:15 PM", message: "Hello! Sure, Please share your email! to me", imagePath: 'lib/Assets/images/avatar2.jpeg'),
          HomeContainer(name: "Kumar", time: "06:16 PM", message: "Thank you! I have sent my email to you.", imagePath: 'lib/Assets/images/avatar3.jpg')
        ],
      ),
    );
  }
}