// ignore_for_file: non_constant_identifier_names, unnecessary_new, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:galaxy_moon_app/models/message_model.dart';
import 'package:galaxy_moon_app/ui/appColors.dart';
import 'package:galaxy_moon_app/ui/appSvgs.dart';
import 'package:galaxy_moon_app/ui/appTextStyles.dart';
import 'package:galaxy_moon_app/widget/avatar_widget.dart';
import 'package:galaxy_moon_app/widget/input_message_widget.dart';
import 'package:galaxy_moon_app/widget/message_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(systemNavigationBarColor: AppColor.secondary),
    );

    String messageFrom =
        (ModalRoute.of(context)!.settings.arguments as Map)['messageFrom']
            .toString();
    List<Message> allMessages =
        (ModalRoute.of(context)!.settings.arguments as Map)['allMessages'];

    var scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(AppSvg.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          messageFrom,
          style: AppTextStyles.title,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: AvatarWidget(16),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: MessageWidget(allMessages),
            ),
          ),
          const InputMessageWidget(),
        ],
      ),
    );
  }
}
