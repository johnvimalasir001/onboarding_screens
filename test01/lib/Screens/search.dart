import 'package:flutter/material.dart';
import 'package:test01/Widgets/appBar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar("Search Page"),
    );
  }
}