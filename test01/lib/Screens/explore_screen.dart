import 'package:flutter/material.dart';
import 'package:test01/Theme/size.dart';
import 'package:test01/Theme/theme.dart';
import 'package:test01/Widgets/appbar.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final TextEditingController _exploreController = TextEditingController();

  @override
  void dispose() {
    _exploreController.dispose();
    super.dispose();
  }

  String searchResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar("Explorer "),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              TextField(
                controller: _exploreController,
                style: const TextStyle(fontSize: 14),
                decoration: InputDecoration(
                  hintText: "Explore here...",
                  prefixIcon: const Icon(Icons.search, size: 18),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear, size: 18),
                    onPressed: () {
                      _exploreController.clear();
                      setState(() {
                        searchResult = "";
                      });
                    },
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 12,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
                onChanged: (value) {
                  setState(() {
                    searchResult = value;
                  });
                },
              ),

              if (searchResult.toLowerCase() == '@explore')
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://picsum.photos/300/200',
                      height: ScreenSize.screenHeight * 0.19,
                      width: ScreenSize.screenWidth * 0.6,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              SizedBox(height: ScreenSize.screenHeight * 0.1),
              if (searchResult.toLowerCase() != '@explore')
                Center(
                  child: Text(
                    "Start your search with",
                    style: AppText.subHeading,
                  ),
                ),
              if (searchResult.toLowerCase() != '@explore')
                Center(child: Text("@explore", style: AppText.subHeading)),
            ],
          ),
        ),
      ),
    );
  }
}
