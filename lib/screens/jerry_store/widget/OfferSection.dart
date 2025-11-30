import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jerry_store/theme/AppTextStyle.dart';
import 'package:jerry_store/theme/ColorsManager.dart';

class OfferSection extends StatelessWidget {
  const OfferSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Container(
            width: double.infinity,
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              color: ColorManager.blueDark,
              gradient: LinearGradient(
                colors: [ColorManager.blueDark, ColorManager.blueMid]
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 12, top: 12, bottom: 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Buy 1 Tom and get 2 for free',
                    style: AppTextStyle.baseFontStyle.copyWith(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Adopt Tom! (Free Fail-Free\nGuarantee)',
                    style: AppTextStyle.baseFontStyle.copyWith(
                      color: Colors.white.withValues(alpha: 0.8),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: -8,
          left: 0,
          child: Transform.rotate(
            angle: 0.1,
            child: SvgPicture.asset(
              'lib/theme/svgs/blur.svg',
              width: 148.0,
              height: 120.0,
              alignment: Alignment.bottomRight,
            ),
          ),
        ),
        Positioned(
          right: -8,
          left: 0,
          bottom: -4,
          child: Transform.rotate(
            angle: 0.1,
            child: SvgPicture.asset(
              'lib/theme/svgs/blur2.svg',
              width: 148.0,
              height: 128.0,
              alignment: Alignment.bottomRight,
            ),
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
          child: Image.asset(
            'lib/theme/images/offer_card_tom.png',
            width: 92,
            height: 116,
            alignment: Alignment.topRight,
          ),
        ),
      ],
    );
  }
}
