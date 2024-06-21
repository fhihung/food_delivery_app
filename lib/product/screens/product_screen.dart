import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/common/skeletons/skeleton_product_card_vertical.dart';
import 'package:food_delivery_app/product/bloc/product_bloc.dart';
import 'package:food_delivery_app/product/bloc/product_event.dart';
import 'package:food_delivery_app/product/bloc/product_state.dart';
import 'package:iconsax/iconsax.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({required this.id, super.key});

  final int id;

  @override
  Widget build(BuildContext context) {
    context.read<ProductBloc>().add(ProductsByBrandIdFetched(brandId: id));
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Product'),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  /// Search Bar
                  // const SizedBox(
                  //   height: AppSizes.spaceBtwItems,
                  // ),
                  const SearchContainer(
                    text: 'Search in Store',
                    icon: Iconsax.search_normal,
                    showBackground: false,
                    padding: EdgeInsets.zero,
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  CommonGridLayout(
                    itemCount: state.productsByBrandId.length,
                    itemBuilder: (_, index) {
                      if (state.isLoading == false && state.productsByBrandId.isNotEmpty) {
                        final product = state.productsByBrandId[index];
                        return ProductCardVertical(
                          title: product.name,
                          price: product.price,
                          // image: product.image,
                          brand: product.brand?.name ?? '',
                          onIconPressed: () {
                            context.read<ProductBloc>().add(AddProductPressed(productId: product.id!));
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
          ),
        );
      },
    );
  }
}
