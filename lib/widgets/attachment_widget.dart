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
              actionWidgets('Document', Icons.camera_alt_rounded, Colors.red,
                  Colors.redAccent),
              actionWidgets('Document', Icons.camera_alt_rounded, Colors.pink,
                  Colors.pinkAccent),
              actionWidgets('Document', Icons.camera_alt_rounded, Colors.teal,
                  Colors.tealAccent),
              actionWidgets('Document', Icons.camera_alt_rounded, Colors.orange,
                  Colors.orangeAccent),
              actionWidgets('Document', Icons.camera_alt_rounded, Colors.amber,
                  Colors.amberAccent),
              actionWidgets('Document', Icons.camera_alt_rounded, Colors.green,
                  Colors.greenAccent),
              actionWidgets('Document', Icons.camera_alt_rounded, Colors.blue,
                  Colors.blueAccent),
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
