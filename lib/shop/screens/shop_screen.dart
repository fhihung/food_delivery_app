import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/common/custom_tab_bar.dart';
import 'package:food_delivery_app/shop/bloc/shop_bloc.dart';
import 'package:food_delivery_app/shop/bloc/shop_event.dart';
import 'package:food_delivery_app/shop/bloc/shop_state.dart';
import 'package:food_delivery_app/shop/controller/shop_controller.dart';
import 'package:food_delivery_app/shop/widgets/brand_card.dart';
import 'package:food_delivery_app/shop/widgets/category_tab_bar.dart';
import 'package:iconsax/iconsax.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final shopController = ShopController();
    final dark = THelperFunctions.isDarkMode(context);

    return BlocProvider(
      create: (_) => ShopBloc(shopController)..add(const ShopInitiated()),
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: CommonAppBar(
            title: Text(
              'Shop',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            actions: [
              QuantityCart(
                quantity: 3,
                color: dark ? Colors.white : Colors.black,
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
                        child: Text('Drinks'),
                      ),
                      Tab(
                        child: Text('Foods'),
                      ),
                      Tab(
                        child: Text('Electronics'),
                      ),
                      Tab(
                        child: Text('Clothes'),
                      ),
                      Tab(
                        child: Text('Cosmetics'),
                      ),
                    ],
                  ),
                ),
              ];
            },
            body: BlocBuilder<ShopBloc, ShopState>(
              builder: (context, state) {
                if (state.errorMessage.isNotEmpty) {
                  return Center(child: Text('Error: ${state.errorMessage}'));
                }

                if (state.fetchedDrinks.isEmpty && state.fetchedFoods.isEmpty) {
                  return const Center(child: CircularProgressIndicator());
                }

                return TabBarView(
                  children: [
                    CategoryTabBar(items: state.fetchedDrinks),
                    CategoryTabBar(items: state.fetchedFoods),
                    // You can add more tabs with respective data here
                    CategoryTabBar(items: state.fetchedDrinks), // Replace with appropriate data for other categories
                    CategoryTabBar(items: state.fetchedFoods), // Replace with appropriate data for other categories
                    CategoryTabBar(items: state.fetchedDrinks), // Replace with appropriate data for other categories
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
