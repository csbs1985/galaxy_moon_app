import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galaxy_moon_app/screen/search_screen.dart';
import 'package:galaxy_moon_app/ui/appColors.dart';
import 'package:galaxy_moon_app/ui/appStrings.dart';
import 'package:galaxy_moon_app/ui/appSvgs.dart';
import 'package:galaxy_moon_app/ui/appTextStyles.dart';
import 'package:page_transition/page_transition.dart';

class SearchButtonWidget extends StatelessWidget {
  const SearchButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.topToBottom,
                child: const SearchScreen(),
              ));
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: AppColor.secondary,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                AppString.whatLooking,
                style: AppTextStyles.text1,
              ),
              SvgPicture.asset(
                AppSvg.search,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
