import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jerry_store/theme/AppTextStyle.dart';
import 'package:jerry_store/theme/ColorsManager.dart';
import 'package:jerry_store/widget/PriceSection.dart';

class IngredientsHeader extends StatelessWidget {
  const IngredientsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          spacing: 24,
          children: [
            Text(
              'Electric Tom pasta',
              style: AppTextStyle.baseFontStyle.copyWith(
                fontSize: 20,
                height: 0.36,
                color: ColorManager.grayDark.withValues(alpha: 0.87),
              ),
            ),

            PriceSection(price: 5),
          ],
        ),

        SvgPicture.asset(
          'lib/theme/svgs/ic_kitchen_favorite.svg',
          height: 24,
          width: 24,
        ),
      ],
    );
  }
}
