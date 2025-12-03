import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jerry_store/theme/AppTextStyle.dart';
import 'package:jerry_store/theme/ColorsManager.dart';

class DetailsCard extends StatelessWidget {
  final String icon;
  final String title;
  final String description;

  const DetailsCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.blueSky,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
          child: Column(
            children: [
              SvgPicture.asset('lib/theme/svgs/$icon.svg'),
              SizedBox(height: 12),
              Text(
                title,
                style: AppTextStyle.baseFontStyle.copyWith(
                  fontSize: 14,
                  color: ColorManager.grayDark.withValues(alpha: 0.60),
                ),
              ),
              SizedBox(height: 2),
              Text(
                description,
                style: AppTextStyle.baseFontStyle.copyWith(
                  fontSize: 12,
                  color: ColorManager.grayDark.withValues(alpha: 0.37),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}