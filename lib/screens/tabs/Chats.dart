// ignore_for_file: must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/screens/Chat_screen.dart';

class Chatscreen extends StatelessWidget {
  Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: body_might_complete_normally_nullable
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Get.to(const ConversationScreen());
              },
              leading: const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/1.png'),
              ),
              title: const Text('ali'),
              subtitle: const Text('something about message'),
              trailing: const Column(
                children: [
                  Text(
                    '20/03/2023',
                    style: TextStyle(fontSize: 10.5, color: Colors.grey),
                  ),
                ],
              ),
            );
          }),
    );
  }

  // List images = <String>[
  //   'assets/1.png'
  //       'assets/2.png'
  //       'assets/3.png'
  //       'assets/4.png'
  //       'assets/5.png'

  // 'assets/6.png'
  // 'assets/7.png'
  // 'assets/8.png'
  // 'assets/9.png'
  // 'assets/10.png'
  // 'assets/12.png'
  // 'assets/13.png'
  // 'assets/14.png'
  // 'assets/15.png'
  // ];
}
