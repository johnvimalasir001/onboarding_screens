import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final Widget nextScreen;

  const NextButton({super.key, required this.nextScreen});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextScreen),
        );
      },
      backgroundColor: Colors.blue,
      shape: RoundedRectangleBorder(),
      child: Icon(Icons.arrow_forward),
    );
  }
}
