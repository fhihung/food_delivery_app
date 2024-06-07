import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/app/home/widgets/home_app_bar.dart';
import 'package:food_delivery_app/app/home/widgets/home_categories.dart';
import 'package:food_delivery_app/app/home/widgets/promotion_slider.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            CurvedContainer(
              child: Column(
                children: [
                  /// Home App Bar
                  const HomeAppBar(),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),

                  /// Search Bar
                  const SearchContainer(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.defaultSpace,
                    ),
                    text: 'Search in Store',
                    icon: Iconsax.search_normal,
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),

                  /// Categories
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.defaultSpace),
                    child: Column(
                      children: [
                        CommonSectionHeading(
                          title: 'Popular Categories',
                          onPressed: () {},
                          showTextButton: false,
                        ),
                        const SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),

                        /// Categories
                        const HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Carousel
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  PromotionSlider(
                    banners: [
                      Assets.images.products.promoBanner1.path,
                      Assets.images.products.promoBanner2.path,
                      Assets.images.products.promoBanner3.path,
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  const CommonSectionHeading(
                    title: 'Poular Products',
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  CommonGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const ProductCardVertical(),
                  ),
                  // ProductCardVertical(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
