import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    required this.imageUrl,
    required this.brandName,
    required this.productName,
    super.key,
    this.description,
  });

  final String brandName;
  final String productName;
  final String imageUrl;
  final String? description;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        /// Image
        RoundedImage(
          imageUrl: imageUrl,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(
            AppSizes.sm,
          ),
          backgroundColor: dark ? AppColors.darkGrey : AppColors.light,
        ),
        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),

        /// Title, Price, Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerifiedBrand(
                title: brandName,
              ),
              ProductTitle(
                title: productName,
                maxLines: 1,
              ),
              Text(
                description ?? '',
                style: Theme.of(context).textTheme.bodySmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
