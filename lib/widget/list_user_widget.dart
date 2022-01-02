// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:galaxy_moon_app/modeles/message_model.dart';
import 'package:galaxy_moon_app/ui/appTextStyles.dart';
import 'package:galaxy_moon_app/widget/avatar_widget.dart';
import 'package:galaxy_moon_app/widget/title_widget.dart';
import 'package:page_transition/page_transition.dart';

class ListUserWidget extends StatelessWidget {
  static const routeName = '/passArguments';
  const ListUserWidget(this.titleList, this.messages);

  final String titleList;
  final List<Message> messages;

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
                Navigator.pushNamed(context, '/chat',
                    arguments: message.messageFrom);
              },
              onLongPress: () {},
              icon: AvatarWidget(24, false),
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
