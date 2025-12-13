import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final controller;
  const MySearchBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: 'Type Here...',
          prefixIcon: Icon(Icons.app_shortcut_outlined),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}