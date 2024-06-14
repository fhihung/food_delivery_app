import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/shop/widgets/brand_showcase.dart';

class CategoryTabBar extends StatelessWidget {
  const CategoryTabBar({
    super.key,
  });

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
              /// Brand
              BrandShowcase(
                images: [
                  Assets.images.products.productShirt.path,
                  Assets.images.products.productJacket.path,
                  Assets.images.products.productJeans.path,
                ],
              ),
              CommonSectionHeading(
                title: 'You may like',
                onPressed: () {},
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              CommonGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const ProductCardVertical(),
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
