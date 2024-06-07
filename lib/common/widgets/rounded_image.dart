import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    required this.image, super.key,
    this.border,
    this.backgroundColor = AppColors.light,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onTap,
    this.applyImageRadius = false,
    this.borderRadius = AppSizes.md,
    this.height,
    this.width,
  });

  final String image;
  final double? height;
  final double? width;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onTap;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(
            border: border,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: ClipRRect(
            borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero,
            child: Image(
              image: isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
              fit: fit,
            ),
          ),),
    );
  }
}
