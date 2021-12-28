import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:galaxy_moon_app/chat_screen.dart';

void main() async {
  runApp(MyApp());

  FirebaseApp defaultApp = await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFF0D1117),
        iconTheme: const IconThemeData(
          color: Color(0XffC9D1D9),
        ),
      ),
      home: ChatScreen(),
    );
  }
}
