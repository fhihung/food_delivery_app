import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    required this.title,
    super.key,
  });
  final String title;

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
            title,
            style: Theme.of(context).textTheme.headlineSmall!.apply(
                  color: AppColors.white,
                ),
          ),
        ],
      ),
      actions: [
        QuantityCart(
          quantity: 3,
          // onPressed: () {
          //   router.go('/cart');
          // },
        ),
      ],
    );
  }
}
