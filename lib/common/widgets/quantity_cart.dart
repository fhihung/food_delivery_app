import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/cart/screens/cart_screen.dart';
import 'package:iconsax/iconsax.dart';

class QuantityCart extends StatelessWidget {
  const QuantityCart({
    required this.quantity,
    super.key,
    this.color = AppColors.white,
  });
  final int quantity;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          icon: Icon(
            Iconsax.shopping_bag,
            color: color ?? (dark ? AppColors.white : AppColors.black),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => const CartScreen(),
              ),
            );
          },
        ),
        CommonBadge(
          quantity: quantity,
        ),
      ],
    );
  }
}
