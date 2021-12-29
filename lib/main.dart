import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:galaxy_moon_app/screen/splash_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0Xff30363D),
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: Color(0Xff30363D),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0Xff30363D),
        fontFamily: 'ubuntu',
        iconTheme: const IconThemeData(
          color: Color(0XffC9D1D9),
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w100,
            color: Color(0XffC9D1D9),
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
