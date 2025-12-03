import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jerry_store/screens/profile/widget/AccountInfo.dart';
import 'package:jerry_store/screens/profile/widget/ProfileBottomSheet.dart';
import 'package:jerry_store/theme/ColorsManager.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.blue,
        child: Center(
          child: Column(
            children: [
              AccountInfo(),
              SizedBox(height: 24),
              Expanded(child: ProfileContent()),
            ],
          ),
        ),
    );
  }
}
