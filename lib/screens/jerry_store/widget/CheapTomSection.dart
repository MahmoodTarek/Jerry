import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../theme/ColorsManager.dart';

class CheapTomSection extends StatelessWidget {
  const CheapTomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Cheap tom section',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: 'ibmplex',
            color: ColorManager.grayDark,
          ),
        ),
        const Spacer(),
        const Text(
          'View all',
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'ibmplex',
            color: ColorManager.blueDark,
          ),
        ),
        const SizedBox(width: 4),
        SvgPicture.asset(
          'lib/theme/svgs/arrow_right.svg',
          height: 12,
          width: 12,
        ),
      ],
    );
  }
}