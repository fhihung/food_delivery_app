import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:iconsax/iconsax.dart';

class QuantityWithAddRemoveButton extends StatelessWidget {
  const QuantityWithAddRemoveButton({
    required this.quantity,
    super.key,
    this.plusOnPressed,
    this.minusOnPressed,
  });
  final int quantity;
  final VoidCallback? plusOnPressed;
  final VoidCallback? minusOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: AppSizes.md,
          color: dark ? AppColors.white : AppColors.black,
          backgroundColor: dark ? AppColors.darkGrey : AppColors.light,
          onPressed: minusOnPressed,
        ),
        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        Text(
          quantity.toString(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        CircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: AppSizes.md,
          color: AppColors.white,
          backgroundColor: AppColors.primary,
          onPressed: plusOnPressed,
        ),
      ],
    );
  }
}
