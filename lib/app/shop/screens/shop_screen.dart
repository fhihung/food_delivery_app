import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/app/shop/widgets/brand_card.dart';
import 'package:food_delivery_app/app/shop/widgets/category_tab_bar.dart';
import 'package:food_delivery_app/common/custom_tab_bar.dart';
import 'package:iconsax/iconsax.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: const CommonAppBar(
          title: Text('Shop'),
          actions: [
            QuantityCart(
              quantity: 3,
              color: AppColors.black,
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? Colors.black : Colors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(AppSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// Search Bar
                      const SizedBox(
                        height: AppSizes.spaceBtwItems,
                      ),
                      const SearchContainer(
                        text: 'Search in Store',
                        icon: Iconsax.search_normal,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: AppSizes.spaceBtwItems,
                      ),

                      /// Featured Brands
                      CommonSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: AppSizes.spaceBtwItems / 2,
                      ),
                      CommonGridLayout(
                        mainAxisExtent: 80,
                        itemCount: 4,
                        itemBuilder: (_, index) => const BrandCard(),
                      ),
                    ],
                  ),
                ),
                bottom: const CustomTabBar(
                  tabs: [
                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                    Tab(
                      child: Text('Clothes'),
                    ),
                    Tab(
                      child: Text('Cosmestics'),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              CategoryTabBar(),
              CategoryTabBar(),
              CategoryTabBar(),
              CategoryTabBar(),
              CategoryTabBar(),
            ],
          ),
        ),
      ),
    );
  }
}
