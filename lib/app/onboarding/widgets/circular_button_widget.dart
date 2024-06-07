import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:iconsax/iconsax.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    super.key,
    this.onPressed,
    this.icon,
  });
  final void Function()? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: dark ? AppColors.light : AppColors.dark,
      ),
      child: Icon(
        icon ?? Iconsax.arrow_right_3,
        color: dark ? AppColors.dark : AppColors.light,
      ),
    );
  }
}
