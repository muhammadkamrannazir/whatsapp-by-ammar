import 'package:flutter/material.dart';

class Callscreen extends StatelessWidget {
  const Callscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.link_outlined,
                  size: 24,
                ),
              ),
            ],
          ),
          title: Text(
            ' Create call link',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            'Share a link for your whatsapp call ',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        )
      ],
    );
  }
}
