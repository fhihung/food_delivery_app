import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/cart/bloc/cart_bloc.dart';
import 'package:food_delivery_app/cart/bloc/cart_event.dart';
import 'package:food_delivery_app/cart/bloc/cart_state.dart';
import 'package:food_delivery_app/cart/widgets/cart_item.dart';
import 'package:food_delivery_app/cart/widgets/quantity_with_add_remove_button.dart';
import 'package:food_delivery_app/check_out/screens/check_out_screen.dart';
import 'package:food_delivery_app/models/m_cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CartBloc>().add(const CartFetched());
    var subTotal = 0.0;
    final dark = THelperFunctions.isDarkMode(context);
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        final bloc = context.read<CartBloc>();

        // Compute the total price of the cart
        double totalPrice = _computeTotalPrice(state.cartProducts);

        return Scaffold(
          appBar: CommonAppBar(
            showBackButton: true,
            leadingOnPressed: () {
              Navigator.pop(context);
            },
            title: Text(
              'Cart',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              itemCount: state.cartProducts.length,
              itemBuilder: (context, index) {
                final cart = state.cartProducts[index];
                double totalPriceEachProduct = 0.0;
                double price = double.tryParse(cart.product?.price ?? '0.0') ?? 0.0;
                totalPriceEachProduct += price * (cart.quantity ?? 0);
                subTotal = totalPriceEachProduct;
                return Column(
                  children: [
                    CartItem(
                      imageUrl: Assets.images.products.promoBanner1.path,
                      brandName: cart.product?.brand?.name ?? '',
                      productName: cart.product?.name ?? '',
                      description: cart.product?.description ?? '',
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBtwItems / 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Quantity
                        Row(
                          children: [
                            const SizedBox(
                              width: 70,
                            ),
                            QuantityWithAddRemoveButton(
                              quantity: cart.quantity ?? 0,
                              plusOnPressed: () {
                                bloc.add(
                                  CartProductQuantityUpdated(
                                    productId: cart.product?.id ?? 0,
                                    quantity: cart.quantity! + 1,
                                  ),
                                );
                              },
                              minusOnPressed: () {
                                bloc.add(
                                  CartProductQuantityUpdated(
                                    productId: cart.product?.id ?? 0,
                                    quantity: cart.quantity! - 1,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        ProductPrice(
                          price: totalPriceEachProduct.toString(),
                        )
                      ],
                    )
                  ],
                );
              },
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => CheckOutScreen(
                      subTotal: totalPrice.toString(),
                    ),
                  ),
                );
              },
              child: Text(
                'Checkout (\$${totalPrice.toStringAsFixed(2)})',
                style: Theme.of(context).textTheme.titleLarge!.apply(
                      color: AppColors.white,
                    ),
              ),
            ),
          ),
        );
      },
    );
  }

  // Helper method to compute total price
  double _computeTotalPrice(List<MCart> cartProducts) {
    double total = 0.0;
    for (var cart in cartProducts) {
      // Convert the price from String to double
      double price = double.tryParse(cart.product?.price ?? '0.0') ?? 0.0;
      total += price * (cart.quantity ?? 0);
    }
    return total;
  }
}
