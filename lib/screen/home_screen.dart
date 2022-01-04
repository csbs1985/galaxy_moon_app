// ignore_for_file: non_constant_identifier_names, unnecessary_new, prefer_typing_uninitialized_variables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:universe_moon_app/models/message_model.dart';
import 'package:universe_moon_app/ui/appStrings.dart';
import 'package:universe_moon_app/widget/list_user_widget.dart';
import 'package:universe_moon_app/widget/not_all_messages_widget.dart';
import 'package:universe_moon_app/widget/online_widget.dart';
import 'package:universe_moon_app/widget/search_button_widget.dart';
import 'package:universe_moon_app/widget/title_widget.dart';

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
  final double _sizeMessage = 60;
  final double _sizeTitle = 56;
  final String user = 'charles';

  List<Message> allMessages = [
    new Message(
        messageId: "001",
        messageFrom: "Tereza",
        messageText: "Não demora, o povo chegou",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true),
    new Message(
        messageId: "002",
        messageFrom: "Charlene",
        messageText: "Chegando ai",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: false),
    new Message(
        messageId: "003",
        messageFrom: "Charles",
        messageText: "Estamos",
        messageTo: "Charlene",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true),
    new Message(
        messageId: "004",
        messageFrom: "Luiza",
        messageText: "Vou arrumar as coisas para levar",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true),
    new Message(
        messageId: "005",
        messageFrom: "Sabrina",
        messageText: "Blz",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true),
    new Message(
        messageId: "006",
        messageFrom: "Charles",
        messageText: "Assim que a mãe terminar de se arrumar.",
        messageTo: "Charlene",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true),
    new Message(
        messageId: "001",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: true,
        messageRead: false),
    new Message(
        messageId: "002",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true),
    new Message(
        messageId: "003",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true),
    new Message(
        messageId: "004",
        messageFrom: "Luiza",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: false),
    new Message(
        messageId: "005",
        messageFrom: "Sabrina",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: false),
    new Message(
        messageId: "006",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true),
    new Message(
        messageId: "001",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true),
    new Message(
        messageId: "002",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true),
    new Message(
        messageId: "003",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true),
    new Message(
        messageId: "004",
        messageFrom: "Luiza",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true),
    new Message(
        messageId: "005",
        messageFrom: "Sabrina",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true),
    new Message(
        messageId: "006",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true),
    new Message(
        messageId: "001",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true),
    new Message(
        messageId: "002",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true),
    new Message(
        messageId: "003",
        messageFrom: "Charlene",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true),
    new Message(
        messageId: "004",
        messageFrom: "Luiza",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true),
    new Message(
        messageId: "005",
        messageFrom: "Sabrina",
        messageText: "entregue",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true),
    new Message(
        messageId: "006",
        messageFrom: "Charlene",
        messageText: "Fim",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageEdit: false,
        messageDelete: false,
        messageRead: true)
  ];

  @override
  void initState() {
    super.initState();

    allMessages = [];
    _getNewMessages();
    _getMessages();
  }

  void _getNewMessages() {
    setState(() {
      _newMessages = allMessages.where((i) => !i.messageRead).toList();
      _numNewMessage =
          _newMessages.length.toString() + ' ' + AppString.newMessages;
      _sizeNewMessages =
          _sizeMessage * (_newMessages.length).toDouble() + _sizeTitle;
    });
  }

  void _getMessages() {
    setState(() {
      _messages = allMessages.where((i) => i.messageRead).toList();
      _sizeMessages = _sizeMessage * (_messages.length).toDouble() + _sizeTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => exit(0),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 48, 10, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const OnlineWidget(),
                const TitleWidget(AppString.search),
                const SearchButtonWidget(),
                if (allMessages.isEmpty)
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: NotAllMessagesWidget(),
                  ),
                if (_newMessages.isNotEmpty)
                  SizedBox(
                    width: double.infinity,
                    height: _sizeNewMessages,
                    child: ListUserWidget(
                        _numNewMessage, _newMessages, allMessages),
                  ),
                if (_messages.isNotEmpty)
                  SizedBox(
                    width: double.infinity,
                    height: _sizeMessages,
                    child: ListUserWidget(
                        AppString.conversations, _messages, allMessages),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
