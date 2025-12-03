import 'package:flutter/material.dart';
import 'package:jerry_store/entity/FakeProductsItems.dart';
import 'package:jerry_store/screens/jerry_store/widget/OfferSection.dart';
import 'package:jerry_store/screens/jerry_store/widget/ProductCard.dart';
import 'package:jerry_store/screens/jerry_store/widget/SearchSection.dart';
import 'package:jerry_store/screens/jerry_store/widget/TopBarSection.dart';
import 'package:jerry_store/theme/ColorsManager.dart';
import 'package:jerry_store/widget/ViewAllSection.dart';

class TomStore extends StatelessWidget {
  const TomStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.blueLight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 12.0),
              TopBarSection(),
              const SizedBox(height: 12.0),

              SearchSection(),
              const SizedBox(height: 8.0),

              OfferSection(),
              const SizedBox(height: 24.0),
              ViewAllSection(title: 'Cheap tom section'),
              const SizedBox(height: 16.0),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 220,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 214,
                ),
                itemCount: productsItems.length,
                itemBuilder: (context, index) {
                  final product = productsItems[index];
                  return ProductCard(
                    title: product.title,
                    image: product.image,
                    description: product.description,
                    price: product.price,
                    afterDiscount: product.discount,
                  );
                },
              ),
              const SizedBox(height: 12.0),
            ],
          ),
        ),
      ),
    );
  }
}
