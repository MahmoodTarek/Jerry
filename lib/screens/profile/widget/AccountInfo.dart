import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Colors;

import '../../../theme/AppTextStyle.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(height: 16),

        Image.asset(
          'lib/theme/images/profile_pic_tom.png',
          height: 64,
          width: 64,
        ),
        SizedBox(height: 4),
        Text(
          'Tom',
          style: AppTextStyle.baseFontStyle.copyWith(
            fontSize: 18,
            color: Colors.white,
            letterSpacing: 0.0,
          ),
        ),
        Text(
          'specializes in failure!',
          style: AppTextStyle.baseFontStyle.copyWith(
            fontSize: 12,
            color: Colors.white.withValues(alpha: 0.80),
            letterSpacing: 0.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Text(
              'Edit foolishness',
              style: AppTextStyle.baseFontStyle.copyWith(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
