import 'package:flutter/material.dart';
import 'package:test01/Widgets/settingData.dart';
import 'package:test01/Theme/size.dart';
import 'package:test01/Theme/theme.dart';
import 'package:test01/Widgets/nameCard.dart';
import 'package:test01/Widgets/settingCard.dart';
import 'package:test01/Widgets/statusCard.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 48,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("You", style: AppText.heading1),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        children: [
          SizedBox(height: ScreenSize.screenHeight * 0.02),
          Namecard(name: "Mitun", status: "Away"),
          SizedBox(height: ScreenSize.screenHeight * 0.02),
          const Statuscard(),
          SizedBox(height: ScreenSize.screenHeight * 0.03),

          ...settingsItems.map((item) {
            if (item.containsKey('divider')) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Divider(color: Colors.black26, height: 1),
              );
            }
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: Settingcard(icon: item['icon'], title: item['title']),
            );
          }).toList(),
        ],
      ),
    );
  }
}
