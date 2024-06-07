import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    this.onTap,
    this.showBorder = true,
  });

  final void Function()? onTap;
  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
          padding: const EdgeInsets.all(AppSizes.sm),
          showBorder: showBorder,
          backgroundColor: Colors.transparent,
          child: Row(
            children: [
              /// Icon
              Flexible(
                child: CircularImage(
                  image: Assets.icons.categories.icons8SparklingDiamond64.path,
                  backgroundColor: Colors.transparent,
                  overlayColor: dark ? Colors.white : Colors.black,
                ),
              ),
              const SizedBox(
                width: AppSizes.spaceBtwItems / 2,
              ),

              /// Text
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const VerifiedBrand(
                      title: 'Nike',
                      brandTextSize: TextSizes.large,
                    ),
                    Text(
                      '256 pppppppppppppppproducts',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),),
    );
  }
}
