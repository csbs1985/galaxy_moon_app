// ignore_for_file: non_constant_identifier_names, unnecessary_new, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:galaxy_moon_app/modeles/message_model.dart';
import 'package:galaxy_moon_app/ui/appStrings.dart';
import 'package:galaxy_moon_app/widget/list_user_widget.dart';
import 'package:galaxy_moon_app/widget/online_widget.dart';
import 'package:galaxy_moon_app/widget/search_button_widget.dart';
import 'package:galaxy_moon_app/widget/title_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final _newMessages;
  late final _messages;
  late String _numNewMessage;
  late double _sizeNewMessages;
  late double _sizeMessages;
  final double _sizeMessage = 64;
  final double _sizeTitle = 56;

  List<Message> AllMessages = [
    new Message(
        messageId: "001",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: false),
    new Message(
        messageId: "002",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: false),
    new Message(
        messageId: "003",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: false),
    new Message(
        messageId: "004",
        messageFrom: "Luiza",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: false),
    new Message(
        messageId: "005",
        messageFrom: "Sabrina",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: false),
    new Message(
        messageId: "006",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: true),
    new Message(
        messageId: "001",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: false),
    new Message(
        messageId: "002",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: false),
    new Message(
        messageId: "003",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: false),
    new Message(
        messageId: "004",
        messageFrom: "Luiza",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: false),
    new Message(
        messageId: "005",
        messageFrom: "Sabrina",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: false),
    new Message(
        messageId: "006",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: true),
    new Message(
        messageId: "001",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: false),
    new Message(
        messageId: "002",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: false),
    new Message(
        messageId: "003",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: false),
    new Message(
        messageId: "004",
        messageFrom: "Luiza",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: false),
    new Message(
        messageId: "005",
        messageFrom: "Sabrina",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: false),
    new Message(
        messageId: "006",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: true)
  ];

  @override
  void initState() {
    super.initState();

    _getNewMessages();
    _getMessages();
  }

  void _getNewMessages() {
    setState(() {
      _newMessages = AllMessages.where((i) => i.messageRead).toList();
      _numNewMessage =
          _newMessages.length.toString() + ' ' + AppString.newMessages;
      _sizeNewMessages =
          _sizeMessage * (_newMessages.length).toDouble() + _sizeTitle;
    });
  }

  void _getMessages() {
    setState(() {
      _messages = AllMessages.where((i) => !i.messageRead).toList();
      _sizeMessages = _sizeMessage * (_messages.length).toDouble() + _sizeTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 48, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const OnlineWidget(),
              const TitleWidget(AppString.search),
              const SearchButtonWidget(),
              SizedBox(
                width: double.infinity,
                height: _sizeNewMessages,
                child: ListUserWidget(_numNewMessage, _newMessages),
              ),
              SizedBox(
                width: double.infinity,
                height: _sizeMessages,
                child: ListUserWidget(AppString.conversations, _messages),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
