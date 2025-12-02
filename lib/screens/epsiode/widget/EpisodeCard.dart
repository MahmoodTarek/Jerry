import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EpisodeCard extends StatelessWidget {
  final String image;
  final String title;

  const EpisodeCard({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 212,
      height: 311,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage('lib/theme/images/$image.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8,
          right: 8,
          left: 8,
          bottom: 12,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.white.withValues(alpha: 0.50),
                  ),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white.withValues(alpha: 0.24),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    'lib/theme/svgs/episode_chees.svg',
                    height: 24,
                    width: 24,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.25,
                height: 1.4,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}