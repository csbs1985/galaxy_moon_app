import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:galaxy_moon_app/ui/appColors.dart';
import 'package:galaxy_moon_app/ui/appSvgs.dart';
import 'package:galaxy_moon_app/ui/appTextStyles.dart';
import 'package:galaxy_moon_app/widget/avatar_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    Object? data = ModalRoute.of(context)?.settings.arguments;
    String messageFrom = data.toString();

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
            icon: AvatarWidget(24, true),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
