// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:universe_moon_app/ui/appColors.dart';
import 'package:universe_moon_app/ui/appTextStyles.dart';

class AvatarWidget extends StatelessWidget {
  AvatarWidget(this.sizeAvatar);

  final double sizeAvatar;

  String userName = 'Charles';
  String userLastName = 'Santos';
  String userAvatar =
      'https://lh3.googleusercontent.com/ogw/ADea4I7ujdJ-IPb0xCFipGY8xV4IrtidgDLaXAR8vt5Bow=s83-c-mo';

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: sizeAvatar,
      backgroundColor: AppColor.secondary,
      backgroundImage: NetworkImage(userAvatar),
      child: userAvatar.isEmpty
          ? Text(
              userName.substring(0, 1) + userLastName.substring(0, 1),
              style: AppTextStyles.text1,
            )
          : null,
    );
  }
}
