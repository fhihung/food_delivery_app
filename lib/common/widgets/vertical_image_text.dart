import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    required this.text, required this.image, super.key,
    this.textColor = AppColors.white,
    this.backgroundColor = AppColors.white,
    this.onTap,
  });
  final String text;
  final String image;
  final Color? textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
        child: Column(
          children: [
            CircularImage(
              image: image,
            ),
            // Container(
            //   width: 56,
            //   height: 56,
            //   decoration: BoxDecoration(
            //     color: backgroundColor ?? (dark ? AppColors.black : AppColors.white),
            //     borderRadius: BorderRadius.circular(100),
            //   ),
            //   child: Center(
            //     child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Image(image: AssetImage(image), fit: BoxFit.cover, color: AppColors.dark),
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: AppSizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                text,
                style: Theme.of(context).textTheme.labelMedium!.apply(
                      color: textColor,
                    ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
