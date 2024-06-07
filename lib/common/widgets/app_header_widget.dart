import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';

class AppHeaderWidget extends StatelessWidget {
  const AppHeaderWidget({
    required this.title, super.key,
    this.subTitle,
    this.image,
  });
  final AssetImage? image;
  final String title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (image != null)
          Image(
            image: image!,
            height: 150,
          )
        else
          const SizedBox(height: AppSizes.spaceBtwSections),
        Text(
          title,
          style: image != null ? Theme.of(context).textTheme.headlineMedium : Theme.of(context).textTheme.headlineLarge,
        ),
        if (subTitle != null) ...[
          const SizedBox(height: AppSizes.sm),
          Text(
            subTitle!,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ] else
          const SizedBox(width: double.infinity),
      ],
    );
  }
}
