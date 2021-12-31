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

  List<Message> AllMessages = [
    new Message(
        messageId: "001",
        messageFrom: "Charlene",
        messageText:
            "Boa tarde Que horas você vai para a tia? Pode passar aqui para me pegar? Se parar de chover vou a pé",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: false),
    new Message(
        messageId: "002",
        messageFrom: "Charlene",
        messageText:
            "Boa tarde Que horas você vai para a tia? Pode passar aqui para me pegar? Se parar de chover vou a pé",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: false),
    new Message(
        messageId: "003",
        messageFrom: "Charlene",
        messageText:
            "Boa tarde Que horas você vai para a tia? Pode passar aqui para me pegar? Se parar de chover vou a pé",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: true),
    new Message(
        messageId: "004",
        messageFrom: "Luiza",
        messageText:
            "Boa tarde Que horas você vai para a tia? Pode passar aqui para me pegar? Se parar de chover vou a pé",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: false),
    new Message(
        messageId: "005",
        messageFrom: "Sabrina",
        messageText:
            "Boa tarde Que horas você vai para a tia? Pode passar aqui para me pegar? Se parar de chover vou a pé",
        messageTo: "Charles",
        messageDate: "30/09/2021 15:54:30",
        messageRead: false),
    new Message(
        messageId: "006",
        messageFrom: "Charlene",
        messageText:
            "Boa tarde Que horas você vai para a tia? Pode passar aqui para me pegar? Se parar de chover vou a pé",
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
    });
  }

  void _getMessages() {
    setState(() {
      _messages = AllMessages;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 64, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const OnlineWidget(),
              const TitleWidget(AppString.search),
              const SearchButtonWidget(),
              TitleWidget(_numNewMessage),
              SizedBox(
                width: double.infinity,
                height: 64,
                child: ListUserWidget(_newMessages),
              ),
              const TitleWidget(AppString.conversations),
              SizedBox(
                width: double.infinity,
                height: 64,
                child: ListUserWidget(_messages),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
