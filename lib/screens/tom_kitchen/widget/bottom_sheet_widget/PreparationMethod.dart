import 'package:flutter/material.dart';
import 'package:jerry_store/theme/AppTextStyle.dart';
import 'package:jerry_store/theme/ColorsManager.dart';

class PreparationMethod extends StatelessWidget {
  final int number;
  final String step;

  const PreparationMethod({
    super.key,
    required this.number,
    required this.step,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8, left: 25),
              child: Text(
                step,
                style: AppTextStyle.baseFontStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.2,
                  color: ColorManager.grayDark.withValues(alpha: 0.60),
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 37,
          height: 37,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: BoxBorder.all(color: ColorManager.blueSky, width: 1),
            color: Colors.white,
          ),
          child: Center(
            child: Text(
              '$number',
              style: AppTextStyle.baseFontStyle.copyWith(
                fontSize: 12,
                color: ColorManager.blueDark,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
