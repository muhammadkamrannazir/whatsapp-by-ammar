import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class Starredmessages extends StatelessWidget {
  const Starredmessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: AppColors.green,
        title: const Text('Starred messages'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 65,
            backgroundColor: AppColors.green,
            child: const Icon(
              CupertinoIcons.star_fill,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}
