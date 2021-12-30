import 'package:flutter/material.dart';
import 'package:galaxy_moon_app/ui/appColors.dart';
import 'package:galaxy_moon_app/widget/avatar_widget.dart';

class OnlineWidget extends StatefulWidget {
  const OnlineWidget({Key? key}) : super(key: key);

  @override
  _OnlineWidgetState createState() => _OnlineWidgetState();
}

class _OnlineWidgetState extends State<OnlineWidget> {
  final bool _connectionStatus = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AvatarWidget(18),
        Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            radius: 5,
            backgroundColor: _connectionStatus
                ? AppColor.complementary_1
                : AppColor.complementary_2,
          ),
        ),
      ],
    );
  }
}
