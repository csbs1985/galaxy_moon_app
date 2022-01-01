// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:galaxy_moon_app/modeles/message_model.dart';
import 'package:galaxy_moon_app/screen/chat_screen.dart';
import 'package:galaxy_moon_app/ui/appTextStyles.dart';
import 'package:galaxy_moon_app/widget/avatar_widget.dart';
import 'package:galaxy_moon_app/widget/title_widget.dart';
import 'package:page_transition/page_transition.dart';

class ListUserWidget extends StatelessWidget {
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
            SizedBox(
              height: 64,
              child: GestureDetector(
                onLongPress: () {},
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.topToBottom,
                        child: const ChatScreen(),
                      ));
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: AvatarWidget(24, false),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
            ),
        ],
      ),
    );
  }
}
