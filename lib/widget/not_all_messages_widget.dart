// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:universe_moon_app/ui/appSvgs.dart';
import 'package:universe_moon_app/ui/appTextStyles.dart';

class NotAllMessagesWidget extends StatelessWidget {
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
                SizedBox(
                  height: 100,
                  width: 100,
                  child: SvgPicture.asset(AppSvg.moon_logo_macro),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Compartilhe o Moon com seus amigos e troque mensagens seguras e com discrição.',
                  style: AppTextStyles.h1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
