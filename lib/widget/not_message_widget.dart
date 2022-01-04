// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:universe_moon_app/ui/appTextStyles.dart';
import 'package:universe_moon_app/widget/avatar_widget.dart';

class NotMessageWidget extends StatelessWidget {
  const NotMessageWidget(this.messageFrom);

  final String messageFrom;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 20),
                AvatarWidget(64),
                const SizedBox(height: 20),
                const Text(
                  'Mande uma mensagem para',
                  style: AppTextStyles.text1,
                ),
                Text(
                  messageFrom,
                  style: AppTextStyles.h2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
