import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/cart/widgets/cart_item.dart';
import 'package:food_delivery_app/check_out/bloc/check_out_bloc.dart';
import 'package:food_delivery_app/check_out/bloc/check_out_event.dart';
import 'package:food_delivery_app/check_out/bloc/check_out_state.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    context.read<CheckOutBloc>().add(const CheckOutFetched());
    return BlocBuilder<CheckOutBloc, CheckOutState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: ElevatedButton(
              onPressed: () {
                context.read<CheckOutBloc>().add(
                      CheckOutPressed(
                        context: context,
                        cartProducts: state.cartProducts,
                      ),
                    );
              },
              child: const Text('Check Out'),
            ),
          ),
          appBar: CommonAppBar(
            title: Text('Check Out'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
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
                      return Column(
                        children: [
                          // BrandTitle(title: cart.product?.brand?.name ?? '', color: AppColors.primary),
                          CartItem(
                            imageUrl: Assets.images.products.promoBanner1.path,
                            brandName: cart.product?.brand?.name ?? '',
                            productName: cart.product?.name ?? '',
                            description: cart.product?.description ?? '',
                          ),
                          // const SizedBox(
                          //   height: AppSizes.spaceBtwItems / 3,
                          // ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     // Quantity
                          //     Row(
                          //       children: [
                          //         const SizedBox(
                          //           width: 70,
                          //         ),
                          //         // QuantityWithAddRemoveButton(
                          //         //   isShow: false,
                          //         //   quantity: cart.quantity ?? 0,
                          //         // ),
                          //       ],
                          //     ),
                          //     // ProductPrice(
                          //     //   price: totalPriceEachProduct.toString(),
                          //     // )
                          //   ],
                          // )
                        ],
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(AppSizes.defaultSpace),
                  child: RoundedContainer(
                    showBorder: true,
                    borderColor: AppColors.dark,
                    padding: const EdgeInsets.all(AppSizes.defaultSpace),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Subtotal',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              '2',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delivery',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              '2',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              '200',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),
                        AppDividerWidget(text: ''),
                        CommonSectionHeading(
                          showTextButton: false,
                          title: 'Payment Method',
                          color: dark ? AppColors.white : AppColors.black,
                        ),
                        const SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),
                        Row(
                          children: [
                            Image(
                              image: Assets.icons.paymentMethods.applePay.provider(),
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            const Text('Pay with Apple Pay'),
                          ],
                        ),
                        Row(
                          children: [
                            Image(
                              image: Assets.icons.paymentMethods.visa.provider(),
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            const Text('Pay with Visa '),
                          ],
                        ),
                        Row(
                          children: [
                            Image(
                              image: Assets.icons.paymentMethods.masterCard.provider(),
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            const Text('Pay with  MasterCard'),
                          ],
                        ),
                        Row(
                          children: [
                            Image(
                              image: Assets.icons.paymentMethods.paypal.provider(),
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            const Text('Pay with  PayPal'),
                          ],
                        ),
                        const SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),
                        AppDividerWidget(text: ''),
                        const SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),
                        CommonSectionHeading(
                          showTextButton: false,
                          title: 'Delivery Address',
                          color: dark ? AppColors.white : AppColors.black,
                        ),
                        const SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          // CartItem(
          //   imageUrl: Assets.images.products.promoBanner1.path,
          //   brandName: 'Brand',
          //   productName: 'Product Name',
          //   description: 'Description',
          // ),
        );
      },
    );
  }
}
