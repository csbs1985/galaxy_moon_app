// // ignore_for_file: unused_local_variable

// import 'dart:io';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:universe_moon_app/composer/text_composer.dart';
// import 'package:firebase_core/firebase_core.dart';

// class ChatScreen extends StatefulWidget {
//   const ChatScreen({Key? key}) : super(key: key);

//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   void _sendMessage({String? text, File? imgFile}) async {
//     await Firebase.initializeApp();

//     Map<String, dynamic> data = {};

//     if (imgFile != null) {
//       UploadTask task = FirebaseStorage.instance
//           .ref()
//           .child(DateTime.now().microsecondsSinceEpoch.toString())
//           .putFile(imgFile);

//       TaskSnapshot taskSnapshot = await task.whenComplete(() => null);
//       String url = await taskSnapshot.ref.getDownloadURL();
//       data['imgUrl'] = url;
//     }

//     if (text != null) {
//       data['text'] = text;
//     }

//     FirebaseFirestore.instance.collection('messages').doc().set(data);
//   }

//   @override
//   build(BuildContext context) async {
//     Object? data = ModalRoute.of(context)?.settings.arguments;
//     String messageFrom = data.toString();

//     print('messageFrom: ' + messageFrom);

//     await Firebase.initializeApp();

//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text(messageFrom),
//           elevation: 0,
//         ),
//         body: Column(
//           children: [],
//         ));
//   }

//   Widget _listSuccess(AsyncSnapshot<QuerySnapshot> snapshot) {
//     return ListView(
//       children: snapshot.data!.docs.reversed.map((DocumentSnapshot document) {
//         Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
//         return ListTile(
//           title: Text(data['text']),
//         );
//       }).toList(),
//     );
//   }
// }
