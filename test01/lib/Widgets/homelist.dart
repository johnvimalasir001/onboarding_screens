import 'package:flutter/material.dart';
import 'package:test01/Theme/theme.dart';

class HomeContainer extends StatelessWidget {
  final String name;
  final String time;
  final String message;
  final String imagePath;

  const HomeContainer({
    super.key,
    required this.name,
    required this.time,
    required this.message,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Image
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(imagePath),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name + Time
                Row(
                  children: [
                    Text(
                      name,
                      style: AppText.heading2,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      time,
                      style: AppText.subHeading,
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                // Message
                Text(
                  message,
                  style: AppText.normal,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
