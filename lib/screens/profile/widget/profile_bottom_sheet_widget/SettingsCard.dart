import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jerry_store/theme/AppTextStyle.dart';
import 'package:jerry_store/theme/ColorsManager.dart';

class SettingsCard extends StatelessWidget {
  final String icon;
  final String title;

  const SettingsCard({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('lib/theme/svgs/$icon.svg'),
          ),
        ),
        Text(
          title,
          style: AppTextStyle.baseFontStyle.copyWith(
            fontSize: 16,
            letterSpacing: 0.0,
            color: ColorManager.grayDark.withValues(alpha: 0.87),
          ),
        ),
      ],
    );
  }
}
