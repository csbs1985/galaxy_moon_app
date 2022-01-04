// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:universe_moon_app/models/message_model.dart';
import 'package:universe_moon_app/ui/appTextStyles.dart';
import 'package:universe_moon_app/widget/avatar_widget.dart';
import 'package:universe_moon_app/widget/title_widget.dart';

class ListUserWidget extends StatelessWidget {
  static const routeName = '/passArguments';
  const ListUserWidget(this.titleList, this.messages, this.allMessages);

  final String titleList;
  final List<Message> messages;
  final List<Message> allMessages;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: Column(
        children: [
          TitleWidget(titleList),
          for (var message in messages)
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/chat', arguments: {
                  "messageFrom": message.messageFrom,
                  "messageTo": message.messageTo,
                  "allMessages": allMessages
                });
              },
              onLongPress: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(1, 8, 0, 8),
              ),
              icon: AvatarWidget(22),
              label: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          message.messageFrom,
                          style: AppTextStyles.h1,
                        ),
                        Text(
                          message.messageText,
                          style: AppTextStyles.text1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
