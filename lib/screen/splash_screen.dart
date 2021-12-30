import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galaxy_moon_app/screen/home_screen.dart';
import 'package:galaxy_moon_app/screen/sing_in_screen.dart';
import 'package:galaxy_moon_app/ui/appSvgs.dart';
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

    bool _currentUser = true;

    Future.delayed(const Duration(seconds: 2)).then((_) {
      Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            child: _currentUser ? const HomeScreen() : const SingInScreen(),
          ));
    });
  }
}
