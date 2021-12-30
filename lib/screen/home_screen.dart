// ignore_for_file: avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
import 'package:galaxy_moon_app/ui/appColors.dart';
import 'package:galaxy_moon_app/ui/appStrings.dart';
import 'package:galaxy_moon_app/widget/avatar_widget.dart';
import 'package:galaxy_moon_app/widget/online_widget.dart';
import 'package:galaxy_moon_app/widget/search_button_widget.dart';
import 'package:galaxy_moon_app/widget/title_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const OnlineWidget(),
              Column(
                children: const [
                  TitleWidget(AppString.search),
                  SearchButtonWidget(),
                  TitleWidget(AppString.newMessages),
                  TitleWidget(AppString.conversations),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
