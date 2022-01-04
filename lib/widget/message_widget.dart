// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:universe_moon_app/models/message_model.dart';
import 'package:universe_moon_app/ui/appTextStyles.dart';

class MessageWidget extends StatefulWidget {
  final List<Message> allMessages;
  const MessageWidget(this.allMessages);

  @override
  _MessageWidgetState createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  late List<Message> messages;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: widget.allMessages.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment:
                widget.allMessages[index].messageFrom == 'Charles'
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
            children: [
              Text(
                widget.allMessages[index].messageDelete
                    ? 'MENSAGEM APAGADA'
                    : widget.allMessages[index].messageText,
                style: widget.allMessages[index].messageDelete
                    ? AppTextStyles.delete
                    : AppTextStyles.text1,
              ),
              Row(
                children: [
                  Text(
                    widget.allMessages[index].messageDate,
                    style: AppTextStyles.text2,
                  ),
                  if (widget.allMessages[index].messageEdit)
                    const Text(
                      ' - editado',
                      style: AppTextStyles.text2,
                    ),
                ],
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 20,
        ),
      ),
    );
  }
}
