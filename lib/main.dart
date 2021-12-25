import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  runApp(MyApp());

  FirebaseApp defaultApp = await Firebase.initializeApp();
  FirebaseFirestore.instance
      .collection('col')
      .doc('doc')
      .set({'message': 'first message'});
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

Widget Home() {
  return Scaffold(
    appBar: AppBar(
      title: Text('teste'),
    ),
  );
}
