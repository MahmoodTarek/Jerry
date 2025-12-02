import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jerry_store/theme/ColorsManager.dart';

class EpisodeHeaderIcons extends StatelessWidget {
  const EpisodeHeaderIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'lib/theme/images/episode_tom_and_jerry_logo.png',
          height: 40,
          width: 40,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [ColorManager.blueDark, ColorManager.blueMid],
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              'lib/theme/svgs/episode_search.svg',
              width: 20,
              height: 20,
            ),
          ),
        ),
      ],
    );
  }
}
