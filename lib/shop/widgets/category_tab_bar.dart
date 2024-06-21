import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';

class CategoryTabBar extends StatelessWidget {
  const CategoryTabBar({
    required this.items,
    super.key,
  });
  final List<dynamic> items;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              CommonSectionHeading(
                title: 'You may like',
                onPressed: () {},
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              CommonGridLayout(
                itemCount: items.length,
                itemBuilder: (_, index) {
                  final item = items[index];
                  return ProductCardVertical(
                    // image: item.image as String?,
                    title: item.name as String?,
                    price: item.price as String?,
                    discount: 25,
                    isFavorite: true,
                    brand: '',
                    isVerified: true,
                  );
                },
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
