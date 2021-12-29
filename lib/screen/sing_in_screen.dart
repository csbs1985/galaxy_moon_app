import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SingInScreen extends StatefulWidget {
  const SingInScreen({Key? key}) : super(key: key);

  @override
  _SingInScreenState createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  final String apple = 'assets/icons/apple.svg';
  final String google = 'assets/icons/google.svg';
  final String svg = 'assets/icons/moon-logo-macro.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: SvgPicture.asset(svg),
            ),
            const SizedBox(height: 77),
            Text(
              'Sign in or Sign up',
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: TextButton.icon(
                icon: SvgPicture.asset(google),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF30363D))),
                label: Text(
                  'User google account',
                  style: Theme.of(context).textTheme.button,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: TextButton.icon(
                icon: SvgPicture.asset(apple),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF30363D))),
                label: Text(
                  'User apple account',
                  style: Theme.of(context).textTheme.button,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'You must have at least one Google or Apple account to use the service.',
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: (null),
              child: Text(
                'Terms of use and privacy policy',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
