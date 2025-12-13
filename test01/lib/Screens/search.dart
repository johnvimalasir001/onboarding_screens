import 'package:flutter/material.dart';
import 'package:test01/Screens/profile_screen.dart';
import 'package:test01/Theme/size.dart';
import 'package:test01/Theme/theme.dart';
import 'package:test01/Widgets/appBar.dart';
import 'package:test01/Widgets/nextButton.dart';
import 'package:test01/Widgets/searchbar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = TextEditingController();
  bool showImage = false;

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      if (_controller.text.toLowerCase() == 'magic') {
        setState(() {
          showImage = true;
        });
      } else {
        setState(() {
          showImage = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar("Search Page"),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: 'leftFab',
              onPressed: () {
                // Left button action
                Navigator.pop(context);
              },
              backgroundColor: Colors.blue,
              shape: CircleBorder(),
              child: const Icon(Icons.arrow_back, color: Colors.white),
            ),

            FloatingActionButton(
              heroTag: 'rightFab',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ProfileScreen()),
                );
              },
              backgroundColor: Colors.blue,
              shape: CircleBorder(),
              child: const Icon(Icons.arrow_forward, color: Colors.white),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            children: [
              SizedBox(height: ScreenSize.screenHeight * 0.04),

              MySearchBar(controller: _controller),

              SizedBox(height: ScreenSize.screenHeight * 0.04),

              if (showImage)
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/Assets/images/search.png',
                        height: ScreenSize.screenHeight * 0.4,
                      ),
                      const SizedBox(height: 10),
                      Text('HURRAY!', style: AppText.normal),
                    ],
                  ),
                ),

              const SizedBox(height: 450),

              if (!showImage)
                Padding(
                  padding: EdgeInsets.only(
                    bottom: ScreenSize.screenHeight * 0.20,
                  ),
                  child: Text(
                    'Type magic in the search box to reveal it',
                    style: AppText.subHeading.copyWith(color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
