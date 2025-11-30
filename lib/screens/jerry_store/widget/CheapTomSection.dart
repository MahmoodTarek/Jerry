import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jerry_store/theme/AppTextStyle.dart';

import '../../../theme/ColorsManager.dart';

class CheapTomSection extends StatelessWidget {
  const CheapTomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Cheap tom section',
          style: AppTextStyle.baseFontStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: ColorManager.grayDark,
          ),
        ),
        const Spacer(),
        Text(
          'View all',
          style: AppTextStyle.baseFontStyle.copyWith(
            fontSize: 12.0,
            color: ColorManager.blueDark,
          ),
        ),
        const SizedBox(width: 4),
        SvgPicture.asset(
          'lib/theme/svgs/arrow_right.svg',
          height: 12,
          width: 12,
        ),
      ],
    );
  }
}
