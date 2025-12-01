import 'package:flutter/material.dart';
import 'package:jerry_store/theme/ColorsManager.dart';
import 'package:jerry_store/widget/PriceSection.dart';

import '../../../theme/AppTextStyle.dart';

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
              style: AppTextStyle.baseFontStyle.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: ColorManager.grayDark,
              ),
            ),
            SizedBox(height: 4),
            SizedBox(
              height: 54,
              child: Text(
                description,
                style: AppTextStyle.baseFontStyle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: ColorManager.grayLight,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 8),
            PriceSection(
              price: price,
              afterDiscount: afterDiscount,
              isShoppingCardVisible: true
            )
          ],
        ),
      ),
    );
  }
}