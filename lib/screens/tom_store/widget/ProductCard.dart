import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jerry_store/theme/ColorsManager.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final int price;
  final int? afterDiscount;

  const ProductCard({
    super.key,
    required this.title,
    required this.image,
    required this.description,
    required this.price,
    this.afterDiscount,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        productInfoSection(),
        Positioned(
          top: -16,
          left: 30,
          child: Image.asset('lib/theme/images/$image.png', height: 100.0),
        ),
      ],
    );
  }

  Container productInfoSection() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: 'ibmplex',
                fontWeight: FontWeight.w600,
                fontSize: 18,
                height: 1,
                color: ColorManager.grayDark,
              ),
            ),
            SizedBox(height: 4),
            SizedBox(
              height: 50,
              child: Text(
                description,
                style: TextStyle(
                  fontFamily: 'ibmplex',
                  fontWeight: FontWeight.w400,
                  height: 1,
                  fontSize: 12,
                  color: ColorManager.grayLight,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 8),
            priceSection(),
          ],
        ),
      ),
    );
  }

  Row priceSection() {
    String priceMessage = afterDiscount == null
        ? '$price cheeses'
        : '$price $afterDiscount cheeses';

    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: ColorManager.blueSky,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('lib/theme/svgs/money.svg'),
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Text(
                        priceMessage,
                        style: TextStyle(
                          fontSize: 12,
                          color: ColorManager.blueDark,
                        ),
                      ),
                      SizedBox(width: 24),
                      if (afterDiscount != null)
                        Container(
                          width: 12,
                          height: 1,
                          color: ColorManager.blueDark,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 8),
        SvgPicture.asset(
          'lib/theme/svgs/shopping_card.svg',
          width: 30,
          height: 30,
        ),
      ],
    );
  }
}