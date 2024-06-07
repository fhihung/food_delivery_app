import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CommonAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTexts.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: AppColors.grey,
                ),
          ),
          Text(
            AppTexts.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!.apply(
                  color: AppColors.white,
                ),
          ),
        ],
      ),
      actions: const [
        QuantityCart(
          quantity: 3,
        ),
      ],
    );
  }
}
