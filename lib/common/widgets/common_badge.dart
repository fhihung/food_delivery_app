import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';

class CommonBadge extends StatelessWidget {
  const CommonBadge({
    required this.quantity, super.key,
    this.textStyle,
    this.color,
  });
  final int quantity;
  final TextStyle? textStyle;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 4,
      top: 4,
      child: Container(
        width: 18,
        height: 18,
        decoration: BoxDecoration(
          color: color ?? AppColors.black.withOpacity(0.8),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          quantity.toString(),
          style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}