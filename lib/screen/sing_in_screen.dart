// ignore_for_file: unnecessary_null_comparison, override_on_non_overriding_member, avoid_print, unused_element

import 'dart:io';
import 'package:galaxy_moon_app/service/globals.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:galaxy_moon_app/ui/appColors.dart';
import 'package:galaxy_moon_app/ui/appStrings.dart';
import 'package:galaxy_moon_app/ui/appSvgs.dart';
import 'package:galaxy_moon_app/ui/appTextStyles.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:http/http.dart' as http;

class SingInScreen extends StatefulWidget {
  const SingInScreen({Key? key}) : super(key: key);

  @override
  _SingInScreenState createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  final GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  void initSate() async {
    super.initState();
    _getUserGoogle().whenComplete(() {
      setState(() {});
    });

    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      currentUser = user!;
    });
  }

  Future<User?> _getUserGoogle() async {
    // if (currentUser != null) return currentUser;

    // try {
    //   final GoogleSignInAccount? googleSignInAccount =
    //       await googleSignIn.signIn();
    //   final GoogleSignInAuthentication? googleSignInAuthentication =
    //       await googleSignInAccount?.authentication;
    //   final AuthCredential credential = GoogleAuthProvider.credential(
    //     idToken: googleSignInAuthentication?.idToken,
    //     accessToken: googleSignInAuthentication?.accessToken,
    //   );
    //   final UserCredential authResult =
    //       await FirebaseAuth.instance.signInWithCredential(credential);
    //   final User? user = authResult.user;
    //   print('userrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr');
    //   return user;
    // } catch (e) {
    //   return null;
    // }
  }

  Future<User?> _getUserApple() async {
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      webAuthenticationOptions: WebAuthenticationOptions(
        clientId: 'de.lunaone.flutter.signinwithappleexample.service',
        redirectUri: Uri.parse(
          'https://flutter-sign-in-with-apple-example.glitch.me/callbacks/sign_in_with_apple',
        ),
      ),
      nonce: 'example-nonce',
      state: 'example-state',
    );

    print(credential);

    final signInWithAppleEndpoint = Uri(
      scheme: 'https',
      host: 'flutter-sign-in-with-apple-example.glitch.me',
      path: '/sign_in_with_apple',
      queryParameters: <String, String>{
        'code': credential.authorizationCode,
        if (credential.givenName != null) 'firstName': credential.givenName!,
        if (credential.familyName != null) 'lastName': credential.familyName!,
        'useBundleId':
            !kIsWeb && (Platform.isIOS || Platform.isMacOS) ? 'true' : 'false',
        if (credential.state != null) 'state': credential.state!,
      },
    );

    final session = await http.Client().post(
      signInWithAppleEndpoint,
    );

    print(session);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: SvgPicture.asset(AppSvg.moon_logo_macro),
            ),
            const SizedBox(height: 117),
            const Text(
              AppString.singIn,
              style: AppTextStyles.h1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: TextButton.icon(
                icon: SvgPicture.asset(AppSvg.google),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColor.secondary)),
                label: const Text(
                  AppString.accountGoogle,
                  style: AppTextStyles.button,
                ),
                onPressed: _getUserGoogle,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: TextButton.icon(
                icon: SvgPicture.asset(AppSvg.apple),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColor.secondary)),
                label: const Text(
                  AppString.accountApple,
                  style: AppTextStyles.button,
                ),
                onPressed: _getUserApple,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              AppString.youHave,
              style: AppTextStyles.text1,
              textAlign: TextAlign.center,
            ),
            const TextButton(
              onPressed: (null),
              child: Text(
                AppString.terms,
                style: AppTextStyles.link,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
