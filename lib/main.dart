// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:galaxy_moon_app/screen/splash_screen.dart';
import 'package:galaxy_moon_app/ui/appColors.dart';
import 'package:galaxy_moon_app/ui/appStrings.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget with AppColor, AppString {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppColor.primary,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: AppColor.primary,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.title,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.primary,
        fontFamily: 'ubuntu',
        iconTheme: const IconThemeData(
          color: AppColor.element,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
