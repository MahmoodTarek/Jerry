import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jerry_store/data/FakeCharacters.dart';
import 'package:jerry_store/data/FakeEpisodeDetails.dart';
import 'package:jerry_store/screens/epsiode/widget/CharacterCard.dart';
import 'package:jerry_store/screens/epsiode/widget/EpisodeCard.dart';
import 'package:jerry_store/screens/epsiode/widget/EpisodeHeaderContent.dart';
import 'package:jerry_store/screens/epsiode/widget/EpisodeHeaderIcons.dart';
import 'package:jerry_store/theme/AppTextStyle.dart';
import 'package:jerry_store/theme/ColorsManager.dart';
import 'package:jerry_store/widget/ViewAllSection.dart';

class EpisodeScreen extends StatelessWidget {
  const EpisodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [ColorManager.bluee, ColorManager.blueLight],
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 16,
                    left: 16,
                    top: 16,
                    bottom: 8,
                  ),
                  child: EpisodeHeaderIcons(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: EpisodeHeaderContent(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  child: ViewAllSection(title: 'Most watched'),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 311,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 12),
                    scrollDirection: Axis.horizontal,
                    itemCount: episodes.length,
                    itemBuilder: (context, index) {
                      final currentIndex = episodes[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: EpisodeCard(
                          image: currentIndex.image,
                          title: currentIndex.title,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 24,
                    bottom: 12,
                    right: 16,
                    left: 16,
                  ),
                  child: Text(
                    'Popular character',
                    style: AppTextStyle.baseFontStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      height: 1.4,
                      letterSpacing: 0.25,
                      color: ColorManager.grayDark.withValues(alpha: 0.87),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 128,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 12),
                    scrollDirection: Axis.horizontal,
                    itemCount: characters.length,
                    itemBuilder: (context, index) {
                      final currentIndex = characters[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: CharacterCard(
                          image: currentIndex.image,
                          title: currentIndex.title,
                          name: currentIndex.name,
                          backgroundColor: currentIndex.backgroundColor,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 84)
              ],
            ),
          ),
        ),
    );
  }
}
