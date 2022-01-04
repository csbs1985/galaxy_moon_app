import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:universe_moon_app/ui/appColors.dart';
import 'package:universe_moon_app/ui/appStrings.dart';
import 'package:universe_moon_app/ui/appSvgs.dart';
import 'package:universe_moon_app/ui/appTextStyles.dart';

class SearchButtonWidget extends StatelessWidget {
  const SearchButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            '/search',
          );
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
