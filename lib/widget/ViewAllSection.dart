import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jerry_store/theme/AppTextStyle.dart';
import 'package:jerry_store/theme/ColorsManager.dart';

class ViewAllSection extends StatelessWidget {
  final String title;

  const ViewAllSection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppTextStyle.baseFontStyle.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            height: 1.2,
            letterSpacing: 0.25,
            color: ColorManager.grayDark.withValues(alpha: 0.87),
          ),
        ),
        Spacer(),
        Text(
          'View all',
          style: AppTextStyle.baseFontStyle.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            height: 1,
            letterSpacing: 0.0,
            color: ColorManager.blueMid,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4,top: 3),
          child: SvgPicture.asset(
              'lib/theme/svgs/arrow_right.svg',
              height: 12,
              width: 12
            ),
        ),
      ],
    );
  }
}