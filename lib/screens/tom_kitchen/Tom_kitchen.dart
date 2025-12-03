import 'package:flutter/material.dart';
import 'package:jerry_store/screens/tom_kitchen/widget/IngredientsBottomSheet.dart';
import 'package:jerry_store/screens/tom_kitchen/widget/TomKitchenHeader.dart';

class TomKitchen extends StatelessWidget {
  const TomKitchen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
        child: Stack(
          children: [
            Positioned.fill(child: TomKitchenHeader()),
            IngredientsBottomSheet(),
          ],
        ),
    );
  }
}
