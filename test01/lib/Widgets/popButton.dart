import 'package:flutter/material.dart';

class PopButton extends StatelessWidget {
  const PopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pop(context);
      },
      backgroundColor: Colors.blue,
      shape: CircleBorder(),
      child: Icon(Icons.arrow_back, color: Colors.white),
    );
  }
}
