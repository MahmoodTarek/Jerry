import 'package:flutter/cupertino.dart';
import 'package:jerry_store/theme/AppTextStyle.dart';
import 'package:jerry_store/theme/ColorsManager.dart';

class CharacterCard extends StatelessWidget {
  final String image;
  final String name;
  final String title;
  final Color backgroundColor;

  const CharacterCard({
    super.key,
    required this.image,
    required this.title,
    required this.name,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Container(
            width: 144,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                right: 12.0,
                left: 12.0,
                bottom: 12.0,
              ),
              child: Column(
                spacing: 4,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Text(
                    name,
                    style: AppTextStyle.baseFontStyle.copyWith(
                      fontSize: 18,
                      height: 1.2,
                      letterSpacing: 0.25,
                      color: ColorManager.grayDark.withValues(alpha: 0.87),
                    ),
                  ),
                  Text(
                    title,
                    style: AppTextStyle.baseFontStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1,
                      letterSpacing: 0.25,
                      color: ColorManager.grayDark.withValues(alpha: 0.60),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 30,
          top: 0,
          child: Image.asset(
            'lib/theme/images/$image.png',
            width: 82,
            height: 64,
          ),
        ),
      ],
    );
  }
}
