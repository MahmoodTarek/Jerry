import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jerry_store/theme/AppTextStyle.dart';

import '../../../../theme/ColorsManager.dart';

class ProgressCard extends StatelessWidget {
  final String icon;
  final String title;
  final String description;
  final Color backgroundColor;

  const ProgressCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8,bottom: 8,left: 12),
        child: Row(
          spacing: 4,
          children: [
            SvgPicture.asset('lib/theme/svgs/$icon.svg', height: 40, width: 40),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.baseFontStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: ColorManager.grayDark.withValues(alpha: 0.60),
                  ),
                ),
                Text(
                  description,
                  style: AppTextStyle.baseFontStyle.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: ColorManager.grayDark.withValues(alpha: 0.37),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
