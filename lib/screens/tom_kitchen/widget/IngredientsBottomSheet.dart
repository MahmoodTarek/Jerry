import 'package:flutter/material.dart';
import 'package:jerry_store/screens/tom_kitchen/widget/bottom_sheet_widget/DetailsCard.dart';
import 'package:jerry_store/theme/AppTextStyle.dart';
import 'package:jerry_store/theme/ColorsManager.dart';

import 'bottom_sheet_widget/IngredientsHeader.dart';
import 'bottom_sheet_widget/PreparationMethod.dart';

class IngredientsBottomSheet extends StatelessWidget {
  const IngredientsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.96,
      maxChildSize: 0.96,
      minChildSize: 0.82,
      snap: true,
      builder: (context, controller) {
        return Stack(
          children: [
            Container(
              margin: EdgeInsetsGeometry.only(top: 128),
              decoration: BoxDecoration(
                color: ColorManager.blueLight,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: ListView(
                controller: controller,
                padding: EdgeInsetsGeometry.only(
                  top: 32,
                  right: 16,
                  left: 16,
                ),
                children: [
                  IngredientsHeader(),
                  SizedBox(height: 8),
                  Text(
                    'Pasta cooked with a charger cable and sprinkled with questionable cheese. Make sure to unplug it before eating (or not, you decide).',
                    style: AppTextStyle.baseFontStyle.copyWith(
                      fontSize: 14,
                      letterSpacing: 0.5,
                      height: 1,
                      color: ColorManager.grayDark.withValues(alpha: 0.60),
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Details',
                    style: AppTextStyle.baseFontStyle.copyWith(
                      fontSize: 18,
                      height: 0.32,
                      color: ColorManager.grayDark.withValues(alpha: 0.87),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    spacing: 8,
                    children: [
                      DetailsCard(
                        icon: 'ic_kitchen_temperature',
                        title: '1000 V',
                        description: 'Temperature',
                      ),
                      DetailsCard(
                        icon: 'ic_kitchen_timer',
                        title: '3 sparks',
                        description: 'Time',
                      ),
                      DetailsCard(
                        icon: 'ic_kitchen_evil',
                        title: '1M 12K',
                        description: 'No. of deaths',
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Preparation method',
                    style: AppTextStyle.baseFontStyle.copyWith(
                      fontSize: 18,
                      color: ColorManager.grayDark.withValues(alpha: 0.87),
                      height: 0.36,
                    ),
                  ),
                  SizedBox(height: 18),
                  PreparationMethod(
                    number: 1,
                    step: 'Put the pasta in a toaster.',
                  ),
                  SizedBox(height: 8),
                  PreparationMethod(
                    number: 2,
                    step: 'Pour battery juice over it.',
                  ),
                  SizedBox(height: 8),
                  PreparationMethod(
                    number: 3,
                    step: 'Wait for the spark to ignite.',
                  ),
                  SizedBox(height: 8),
                  PreparationMethod(
                    number: 4,
                    step: 'Serve with an insulating glove.',
                  ),
                  SizedBox(height: 8),
                  PreparationMethod(number: 5, step: 'Say Bsm Allah and Eat'),
                  SizedBox(height: 16),
                  Container(
                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: ColorManager.blue,
                      ),
                      child: Row(
                        spacing: 8,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add to cart',
                            style: AppTextStyle.baseFontStyle.copyWith(
                              fontSize: 16,
                              height: 0.16,
                              color: Colors.white.withValues(alpha: 0.87),
                            ),
                          ),
                          Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.38),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '3 cheeses',
                                style: AppTextStyle.baseFontStyle.copyWith(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '5 cheeses',
                                style: AppTextStyle.baseFontStyle.copyWith(
                                  fontSize: 12,
                                  color: Colors.white.withValues(alpha: 0.80),
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.white.withValues(
                                    alpha: 0.80,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  SizedBox(height: 8)
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 8,
              child: Image.asset(
                'lib/theme/images/pasta.png',
                width: 150,
                height: 150,
                alignment: AlignmentGeometry.topRight,
              ),
            ),
          ],
        );
      },
    );
  }
}
