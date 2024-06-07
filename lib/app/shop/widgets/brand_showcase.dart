import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/app/shop/widgets/brand_card.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    required this.images, super.key,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      borderColor: AppColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Products Count
          const BrandCard(
            showBorder: false,
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),

          /// Brand Top 3 Product Images
          Row(
            children: images.map((image) => brandTopProductImageWidget(dark, image)).toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(bool dark, String image) {
    return Expanded(
      child: RoundedContainer(
        height: 100,
        backgroundColor: dark ? AppColors.darkGrey : AppColors.light,
        margin: const EdgeInsets.only(right: AppSizes.sm),
        padding: const EdgeInsets.all(AppSizes.md),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
