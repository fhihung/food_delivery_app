import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:iconsax/iconsax.dart';

class QuantityWithAddRemoveButton extends StatelessWidget {
  const QuantityWithAddRemoveButton({
    Key? key,
    required this.quantity,
    this.plusOnPressed,
    this.minusOnPressed,
    required this.isShow,
  }) : super(key: key);

  final int quantity;
  final VoidCallback? plusOnPressed;
  final VoidCallback? minusOnPressed;
  final bool isShow; // Assuming isShow is a boolean to determine visibility.

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(width: AppSizes.spaceBtwItems),
        if (isShow)
          CircularIcon(
            icon: Iconsax.minus,
            width: 32,
            height: 32,
            size: AppSizes.md,
            color: dark ? AppColors.white : AppColors.black,
            backgroundColor: dark ? AppColors.darkGrey : AppColors.light,
            onPressed: minusOnPressed,
          ),
        if (isShow) // Only show if isShow is true
          CircularIcon(
            icon: Iconsax.add,
            width: 32,
            height: 32,
            size: AppSizes.md,
            color: AppColors.white,
            backgroundColor: AppColors.primary,
            onPressed: plusOnPressed,
          ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Text(
          quantity.toString(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
