// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:universe_moon_app/screen/home_screen.dart';
import 'package:universe_moon_app/screen/sing_in_screen.dart';
import 'package:universe_moon_app/service/globals.dart';
import 'package:universe_moon_app/ui/appSvgs.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: SvgPicture.asset(AppSvg.moon_logo_macro),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1)).then((_) {
      Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            child: const HomeScreen(),
            // currentUser != null ? const HomeScreen() : const SingInScreen(),
          ));
    });
  }
}
