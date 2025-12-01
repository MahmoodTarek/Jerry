import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jerry_store/theme/AppTextStyle.dart';

import '../theme/ColorsManager.dart';

class PriceSection extends StatelessWidget {
  final int price;
  final int? afterDiscount;
  final bool? isShoppingCardVisible;

  const PriceSection({
    super.key,
    required this.price,
    this.afterDiscount,
    this.isShoppingCardVisible = false,
  });

  @override
  Widget build(BuildContext context) {
    String priceMessage = afterDiscount == null
        ? '$price cheeses'
        : '$price $afterDiscount cheeses';

    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: ColorManager.blueSky,
            borderRadius: BorderRadius.circular(8)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4,
              children: [
                SvgPicture.asset('lib/theme/svgs/money.svg'),
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Text(
                      priceMessage,
                      style: AppTextStyle.baseFontStyle.copyWith(
                        fontSize: 12,
                        color: ColorManager.blueDark,
                      ),
                    ),
                    SizedBox(width: 24),
                    if (afterDiscount != null)
                      Container(
                        width: 10,
                        height: 1,
                        color: ColorManager.blueDark,
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 8),
        if (isShoppingCardVisible == true)
          SvgPicture.asset(
            'lib/theme/svgs/shopping_card.svg',
            width: 30,
            height: 30
          ),
      ],
    );
  }
}