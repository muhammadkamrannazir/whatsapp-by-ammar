// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/screens/features/camera_windows.dart';
import 'package:whatsapp_clone/screens/home.dart';
import 'package:whatsapp_clone/screens/setting_screen.dart';
import 'package:whatsapp_clone/screens/starred.dart';
import 'package:whatsapp_clone/screens/username.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: const FirebaseOptions(
    //     apiKey: "AIzaSyAAjB3OQOSwB_JT8o9HcOvjpY7l03ndO0g",
    //     authDomain: "whatsapp-6c403.firebaseapp.com",
    //     projectId: "whatsapp-6c403",
    //     storageBucket: "whatsapp-6c403.appspot.com",
    //     messagingSenderId: "90575612340",
    //     appId: "1:90575612340:web:b41737fd6b14d03eaa2ae1"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
