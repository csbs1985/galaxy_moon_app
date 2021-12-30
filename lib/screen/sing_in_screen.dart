import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:galaxy_moon_app/ui/appColors.dart';
import 'package:galaxy_moon_app/ui/appStrings.dart';
import 'package:galaxy_moon_app/ui/appSvgs.dart';
import 'package:galaxy_moon_app/ui/appTextStyles.dart';

class SingInScreen extends StatefulWidget {
  const SingInScreen({Key? key}) : super(key: key);

  @override
  _SingInScreenState createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
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
            const SizedBox(height: 77),
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
                onPressed: () {},
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
                onPressed: () {},
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
