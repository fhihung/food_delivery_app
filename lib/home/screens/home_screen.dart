import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/common/skeletons/skeleton_product_card_vertical.dart';
import 'package:food_delivery_app/home/bloc/home_bloc.dart';
import 'package:food_delivery_app/home/bloc/home_event.dart';
import 'package:food_delivery_app/home/bloc/home_state.dart';
import 'package:food_delivery_app/home/widgets/home_app_bar.dart';
import 'package:food_delivery_app/home/widgets/promotion_slider.dart';
import 'package:food_delivery_app/product/bloc/product_bloc.dart';
import 'package:food_delivery_app/product/bloc/product_event.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeBloc>().add(const HomeInitiated());
    context.read<HomeBloc>().add(const NewProductsFetched());
    context.read<HomeBloc>().add(const CategoryProductsFetched());

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Header
                CurvedContainer(
                  child: Column(
                    children: [
                      HomeAppBar(
                        title: state.user?.name ?? '',
                      ),
                      // const SizedBox(
                      //   height: AppSizes.appBarHeight,
                      // ),
                      // const SearchContainer(
                      //   padding: EdgeInsets.symmetric(
                      //     horizontal: AppSizes.defaultSpace,
                      //   ),
                      //   text: 'Search in Store',
                      //   icon: Iconsax.search_normal,
                      // ),
                      const SizedBox(
                        height: AppSizes.spaceBtwSections,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: AppSizes.defaultSpace,
                        ),
                        child: Column(
                          children: [
                            CommonSectionHeading(
                              title: 'Popular Categories',
                              onPressed: () {},
                              showTextButton: false,
                              // showCartButton: true,
                            ),
                            const SizedBox(
                              height: AppSizes.spaceBtwItems,
                            ),
                            // const HomeCategories(),
                            SizedBox(
                              height: 80,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: state.categoryProducts.length,
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                itemBuilder: (context, index) {
                                  final category = state.categoryProducts[index];
                                  return VerticalImageText(
                                    text: category.name ?? '',
                                    // image: category.id! == 1,
                                    onTap: () {},
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: AppSizes.spaceBtwSections,
                      ),
                    ],
                  ),
                ),
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
                        title: 'New Products',
                        color: AppColors.dark,
                      ),
                      const SizedBox(
                        height: AppSizes.spaceBtwItems,
                      ),
                      CommonGridLayout(
                        itemCount: state.newProducts.length,
                        itemBuilder: (_, index) {
                          if (state.isLoading == false && state.newProducts.isNotEmpty) {
                            final product = state.newProducts[index];
                            return ProductCardVertical(
                              title: product.name,
                              price: product.price,
                              // image: product.image,
                              brand: product.brand?.name,
                              onIconPressed: () {
                                context
                                    .read<ProductBloc>()
                                    .add(AddProductPressed(context: context, productId: product.id!));
                              },
                            );
                          } else {
                            return const SkeletonProductCardVertical();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
