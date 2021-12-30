// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:galaxy_moon_app/ui/appColors.dart';
import 'package:galaxy_moon_app/ui/appTextStyles.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: SizedBox(
        width: double.infinity,
        child: DecoratedBox(
          decoration: const BoxDecoration(color: AppColor.primary),
          child: Text(
            text,
            style: AppTextStyles.title,
          ),
        ),
      ),
    );
  }
}
