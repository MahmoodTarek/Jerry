import 'package:flutter/cupertino.dart';
import 'package:jerry_store/data/FakeProfileStats.dart';
import 'package:jerry_store/screens/profile/widget/profile_bottom_sheet_widget/PrograssCard.dart';
import 'package:jerry_store/screens/profile/widget/profile_bottom_sheet_widget/SettingsCard.dart';
import 'package:jerry_store/theme/AppTextStyle.dart';
import 'package:jerry_store/theme/ColorsManager.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.blueLight,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  maxCrossAxisExtent: 200,
                  mainAxisExtent: 58,
                ),
                itemCount: fakeProfileStates.length,
                itemBuilder: (context, index) {
                  final state = fakeProfileStates[index];
                  return ProgressCard(
                    icon: state.icon,
                    title: state.title,
                    description: state.description,
                    backgroundColor: state.backgroundColor,
                  );
                },
              ),
              SizedBox(height: 24),
              Text(
                'Tom settings',
                style: AppTextStyle.baseFontStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.0,
                  color: ColorManager.grayDark.withValues(alpha: 0.87),
                ),
              ),
              const SizedBox(height: 8),
              SettingsCard(icon: 'profile_bed', title: 'Change sleeping place'),
              const SizedBox(height: 12),
              SettingsCard(icon: 'profile_cat', title: 'Meow settings'),
              const SizedBox(height: 12),
              SettingsCard(
                icon: 'profile_fridge',
                title: 'Password to open the fridge',
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 1,
                color: ColorManager.grayDark.withValues(alpha: 0.50),
              ),
              const SizedBox(height: 12),
              Text(
                'His favorite foods',
                style: AppTextStyle.baseFontStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.0,
                  color: ColorManager.grayDark.withValues(alpha: 0.87),
                ),
              ),
              const SizedBox(height: 12),
              SettingsCard(icon: 'profile_alert', title: 'Mouses'),
              const SizedBox(height: 12),
              SettingsCard(
                icon: 'profile_hamburger',
                title: 'Last stolen meal',
              ),
              const SizedBox(height: 12),
              SettingsCard(icon: 'profile_sleep', title: 'Change sleep mood'),
              const SizedBox(height: 32),
              Center(
                child: Text(
                  'v.TomBeta',
                  style: AppTextStyle.baseFontStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.0,
                    color: ColorManager.grayDark.withValues(alpha: 0.60),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
