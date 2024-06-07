import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:iconsax/iconsax.dart';

class VerifiedBrand extends StatelessWidget {
  const VerifiedBrand({
    required this.title, super.key,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = AppColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor;
  final Color? iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BrandTitle(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          textSize: brandTextSize,
        ),
        const SizedBox(
          width: AppSizes.xs,
        ),
        const Icon(
          Iconsax.verify5,
          size: AppSizes.iconXs,
          color: AppColors.primary,
        ),
      ],
    );
  }
}
