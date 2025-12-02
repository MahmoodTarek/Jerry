import 'package:flutter/cupertino.dart';
import 'package:jerry_store/theme/AppTextStyle.dart';
import 'package:jerry_store/theme/ColorsManager.dart';

class EpisodeHeaderContent extends StatelessWidget {
  const EpisodeHeaderContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Deleted episodes of Tom and Jerry!',
                style: AppTextStyle.baseFontStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.25,
                  height: 1.2,
                  overflow: TextOverflow.clip,
                  color: ColorManager.grayDark.withValues(alpha: 0.87),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Scenes that were canceled for... mysterious (and sometimes embarrassing) reasons.',
                style: AppTextStyle.baseFontStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.25,
                  height: 1,
                  color: ColorManager.grayDark.withValues(alpha: 0.60),
                ),
              ),
            ],
          ),
        ),
        Image.asset(
          'lib/theme/images/episode_tom_and_jerry.png',
          width: 112,
          height: 178,
        ),
      ],
    );
  }
}
