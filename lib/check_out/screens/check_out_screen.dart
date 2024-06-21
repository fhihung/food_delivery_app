import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/cart/widgets/cart_item.dart';
import 'package:food_delivery_app/check_out/bloc/check_out_bloc.dart';
import 'package:food_delivery_app/check_out/bloc/check_out_event.dart';
import 'package:food_delivery_app/check_out/bloc/check_out_state.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({required this.subTotal, super.key});

  final String subTotal;

  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  final TextEditingController addressController = TextEditingController();
  int selectedPaymentMethod = 0;

  @override
  void initState() {
    super.initState();
    context.read<CheckOutBloc>().add(const CheckOutFetched());
  }

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
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
                        paymentMethod: selectedPaymentMethod.toString(),
                        totalPrice: (double.tryParse(widget.subTotal)! + 20).toString(),
                        status: '0',
                        shippingAddress: addressController.text,
                      ),
                    );
              },
              child: const Text('Check Out'),
            ),
          ),
          appBar: CommonAppBar(
            title: const Text('Check Out'),
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
                          CartItem(
                            imageUrl: Assets.images.products.promoBanner1.path,
                            brandName: cart.product?.brand?.name ?? '',
                            productName: cart.product?.name ?? '',
                            description: cart.product?.description ?? '',
                          ),
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
                            ProductPrice(
                              price: widget.subTotal,
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
                              'Delivery Fee',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const ProductPrice(
                              price: '20',
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
                            ProductPrice(
                              price: (double.tryParse(widget.subTotal)! + 20).toString(),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),
                        const AppDividerWidget(text: ''),
                        CommonSectionHeading(
                          showTextButton: false,
                          title: 'Payment Method',
                          color: dark ? AppColors.white : AppColors.black,
                        ),
                        const SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),
                        ...['Apple Pay', 'Visa', 'MasterCard', 'PayPal'].map((method) {
                          return ListTile(
                            title: Row(
                              children: [
                                Text(method),
                              ],
                            ),
                            leading: Radio<int>(
                              value: method == 'Apple Pay'
                                  ? 0
                                  : method == 'Visa'
                                      ? 1
                                      : method == 'MasterCard'
                                          ? 2
                                          : 3,
                              groupValue: selectedPaymentMethod,
                              onChanged: (value) {
                                setState(() {
                                  selectedPaymentMethod = value!;
                                });
                              },
                            ),
                          );
                        }).toList(),
                        const SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),
                        const AppDividerWidget(text: ''),
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
                        TextField(
                          controller: addressController,
                          decoration: const InputDecoration(
                            hintText: 'Enter your address',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
