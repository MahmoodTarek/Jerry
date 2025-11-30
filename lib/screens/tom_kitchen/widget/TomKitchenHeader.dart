import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jerry_store/theme/AppTextStyle.dart';
import 'package:jerry_store/theme/ColorsManager.dart';

class TomKitchenHeader extends StatelessWidget {
  const TomKitchenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: ColorManager.blueDark.withAlpha(50),
      child: Stack(
        children: [
          Positioned(
            top: -120,
            left: -185,
            child: SvgPicture.asset(
              'lib/theme/svgs/bg_tom_kitchen.svg',
              width: 384,
            ),
          ),
          Column(
            spacing: 16,
            children: [
              SizedBox(height: 40),
              Row(
                spacing: 8,
                children: [
                  SizedBox(width: 16),
                  SvgPicture.asset('lib/theme/svgs/ic_kitchen_tension.svg'),
                  Text(
                    'High tension',
                    style: AppTextStyle.baseFontStyle.copyWith(
                      color: Colors.white.withValues(alpha: 87),
                      fontSize: 16,
                      height: 0.16,
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  SizedBox(width: 16),
                  SvgPicture.asset('lib/theme/svgs/ic_kitchen_foods.svg'),
                  Text(
                    'Shocking foods',
                    style: AppTextStyle.baseFontStyle.copyWith(
                      color: Colors.white.withValues(alpha: 87),
                      fontSize: 16,
                      height: 0.16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
