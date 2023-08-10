import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class Attachmentwidget extends StatelessWidget {
  const Attachmentwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 48),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: AppColors.greyColor),
      child: Column(
        children: [
          Wrap(
            children: [
              actionWidgets('Document', Icons.file_open, Colors.purple,
                  Colors.purpleAccent),
              actionWidgets(
                  'camera', Icons.camera_alt, Colors.pink, Colors.pinkAccent),
              actionWidgets('Gallery', Icons.photo, Colors.purple.shade300,
                  Colors.purpleAccent),
              actionWidgets('Audio', Icons.headphones_rounded, Colors.orange,
                  Colors.orangeAccent),
              actionWidgets('Location', Icons.edit_location_alt_outlined,
                  Colors.green, Colors.greenAccent),
              actionWidgets(
                  'contact', Icons.person, Colors.blue, Colors.blueAccent),
              actionWidgets('Document', Icons.poll_outlined, Colors.green,
                  Colors.greenAccent),
            ],
          ),
        ],
      ),
    );
  }

  actionWidgets(
    String title,
    IconData icon,
    Color color,
    Color accentColor,
  ) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 25,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero,
                      ),
                      color: color,
                    ),
                  ),
                  Container(
                    height: 25,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.zero,
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        ),
                        color: accentColor),
                  ),
                ],
              ),
              const Icon(
                Icons.image,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(height: 2),
          const Text(
            'Document',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
