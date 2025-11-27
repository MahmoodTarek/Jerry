import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jerry_store/theme/ColorsManager.dart';

class TopBarSection extends StatelessWidget {
  const TopBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset('lib/theme/images/profile_pic.png', height: 48, width: 48),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Hi, Jerry 👋🏻",
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'ibmplex',
                fontWeight: FontWeight.w500,
                color: ColorManager.grayDark,
              ),
            ),
            Text(
              "Which Tom do you want to buy?",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'ibmplex',
                fontWeight: FontWeight.w400,
                color: ColorManager.grayLight,
              ),
            ),
          ],
        ),
        Spacer(),
        SvgPicture.asset('lib/theme/svgs/notification.svg', height: 40, width: 40),
      ],
    );
  }
}
