import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class Usernametap extends StatelessWidget {
  const Usernametap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.greyColor,
            title: const Column(
              children: [
                Text('pirate prince'),
              ],
            ),
            expandedHeight: 300,
          )
        ],
      ),
    );
  }
}
