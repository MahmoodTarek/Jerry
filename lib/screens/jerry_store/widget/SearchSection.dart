import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jerry_store/theme/ColorsManager.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return Row(
      children: [
        Flexible(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)
            ),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 14),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset('lib/theme/svgs/search.svg', width: 20, height: 20)
                ),
                hintText: 'Search about tom ...',
                hintStyle: TextStyle(
                  fontFamily: 'ibmplex',
                  color: ColorManager.grayMid
                ),
                border: InputBorder.none
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        SvgPicture.asset(
          'lib/theme/svgs/filter.svg',
          width: 48,
          height: 48
        ),
      ],
    );
  }
}