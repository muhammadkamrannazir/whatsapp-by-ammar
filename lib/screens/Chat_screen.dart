// ignore_for_file: unused_import, unused_local_variable

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/screens/tabs/Chats.dart';
import 'package:whatsapp_clone/screens/home.dart';
import 'package:whatsapp_clone/screens/username.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/widgets/attachment_widget.dart';
import 'package:whatsapp_clone/widgets/camera.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late List<CameraDescription> cameras;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.green,
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {
            Get.to(const Homescreen());
          },
          child: Row(
            children: [
              const Icon(Icons.arrow_back),
              const CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage('assets/2.png'),
              ),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                  onPressed: () {
                    Get.to(const Usernametap());
                  },
                  child: const Text(
                    'pirate prince',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  )),
            ],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.emergency_recording_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Text('data'),
            Text('data'),
            Text('data'),
            Text('d sadfasd fasd fasd asdf asdf asdf sdafasdf asdf ata'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('asdfasdf'),
            Text('asdfasd'),
            Text('ldfkdta'),
            Text('sgdfg'),
            Text('asdfasdf'),
            Text('asdfasd'),
            Text('ldfkdta'),
            Text('sgdfg'),
            Text('asdfasdf'),
            Text('asdfasd'),
            Text('ldfkdta'),
            Text('sgdfg'),
            Text('asdfasdf'),
            Text('asdfasd'),
            Text('ldfkdta'),
            Text('sgdfg'),
            Text('asdfasdf'),
            Text('asdfasd'),
            Text('ldfkdta'),
            Text('sgdfg'),
            Text('asdfasdf'),
            Text('asdfasd'),
            Text('ldfkdta'),
            Text('sgdfg'),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 5, left: 3, right: 3),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                cursorColor: Colors.green,
                decoration: InputDecoration(
                  fillColor: AppColors.greyColor,
                  filled: true,
                  contentPadding: const EdgeInsets.only(top: 12),
                  isCollapsed: true,
                  prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.emoji_emotions,
                        color: Colors.grey,
                      )),
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.bottomSheet(
                              const Attachmentwidget(),
                              enableDrag: false,
                              barrierColor: Colors.transparent,
                              persistent: true,
                              isScrollControlled: false,
                            );
                          },
                          icon: const Icon(
                            Icons.link,
                            color: Colors.grey,
                          )),
                      IconButton(
                          onPressed: () async {
                            WidgetsFlutterBinding.ensureInitialized();
                            cameras = await availableCameras();
                            Get.to(const CameraApp());
                          },
                          icon: const Icon(
                            Icons.camera_alt,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                  hintText: 'Message ',
                  hintStyle: const TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            CircleAvatar(
              backgroundColor: AppColors.green,
              child: Icon(
                Icons.mic_rounded,
                color: AppColors.blueGrey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
