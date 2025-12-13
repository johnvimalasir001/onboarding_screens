import 'package:flutter/material.dart';
import 'package:test01/Screens/profile_screen.dart';
import 'package:test01/Widgets/appbar.dart';
import 'package:test01/Widgets/nextButton.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: NextButton(nextScreen: ProfileScreen()),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: myAppBar("Explore Screen"),
      body: Column(children: [
        ],
      ),
    );
  }
}
