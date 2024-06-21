import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/common/custom_tab_bar.dart';
import 'package:food_delivery_app/common/skeletons/skeleton_brand_cart.dart';
import 'package:food_delivery_app/product/screens/product_screen.dart';
import 'package:food_delivery_app/shop/bloc/shop_bloc.dart';
import 'package:food_delivery_app/shop/bloc/shop_event.dart';
import 'package:food_delivery_app/shop/bloc/shop_state.dart';
import 'package:food_delivery_app/shop/controller/shop_controller.dart';
import 'package:food_delivery_app/shop/widgets/brand_card.dart';
import 'package:food_delivery_app/shop/widgets/category_tab_bar.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final shopController = ShopController();
    final dark = THelperFunctions.isDarkMode(context);
    context.read<ShopBloc>().add(const RicesFetched());
    context.read<ShopBloc>().add(const NoodlesFetched());
    context.read<ShopBloc>().add(const DrinksFetched());
    context.read<ShopBloc>().add(const JunkFoodsFetched());
    context.read<ShopBloc>().add(const BrandsFetched());
    return BlocBuilder<ShopBloc, ShopState>(
      builder: (context, state) {
        return DefaultTabController(
          length: 4,
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
                    expandedHeight: 320,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(AppSizes.defaultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          /// Search Bar
                          // const SizedBox(
                          //   height: AppSizes.spaceBtwItems,
                          // ),
                          // const SearchContainer(
                          //   text: 'Search in Store',
                          //   icon: Iconsax.search_normal,
                          //   showBackground: false,
                          //   padding: EdgeInsets.zero,
                          // ),
                          // const SizedBox(
                          //   height: AppSizes.spaceBtwItems,
                          // ),

                          /// Featured Brands
                          CommonSectionHeading(
                            color: dark ? Colors.white : Colors.black,
                            title: 'Featured Brands',
                            onPressed: () {},
                          ),
                          const SizedBox(
                            height: AppSizes.spaceBtwItems / 2,
                          ),
                          CommonGridLayout(
                            mainAxisExtent: 80,
                            itemCount: 4,
                            itemBuilder: (_, index) {
                              if (state.isLoading == false && state.brands.isNotEmpty) {
                                final brand = state.brands[index];
                                return BrandCard(
                                  title: brand.name ?? '',
                                  description: brand.description ?? '',
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute<void>(
                                        builder: (context) {
                                          return ProductScreen(
                                            id: brand.id!,
                                          );
                                        },
                                      ),
                                    );
                                  },
                                );
                              } else {
                                return const SkeletonBrandCard();
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                    bottom: const CustomTabBar(
                      tabs: [
                        Tab(
                          child: Text('Rices'),
                        ),
                        Tab(
                          child: Text('Noodles'),
                        ),
                        Tab(
                          child: Text('Drinks'),
                        ),
                        Tab(
                          child: Text('Junk Foods'),
                        ),
                      ],
                    ),
                  ),
                ];
              },
              body: TabBarView(
                children: [
                  CategoryTabBar(items: state.fetchedRices),
                  CategoryTabBar(items: state.fetchedNoodles),
                  // You can add more tabs with respective data here
                  CategoryTabBar(items: state.fetchedDrinks), // Replace with appropriate data for other categories
                  CategoryTabBar(items: state.fetchedJunkFoods), // Replace with appropriate data for other categories
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
