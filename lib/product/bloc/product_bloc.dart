import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:food_delivery_app/app/storage_service.dart';
import 'package:food_delivery_app/product/bloc/product_event.dart';
import 'package:food_delivery_app/product/bloc/product_state.dart';
import 'package:food_delivery_app/product/controllers/product_controller.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc(
    this.productController,
  ) : super(const ProductState()) {
    on<ProductInitiated>(
      _onProductInitiated,
    );
    on<ProductsByBrandIdFetched>(
      _onProductsByBrandIdFetched,
    );

    on<AddProductPressed>(
      _onAddProductPressed,
    );
  }
  final storageService = StorageService();
  final ProductController productController;
  FutureOr<void> _onProductInitiated(
    ProductInitiated event,
    Emitter<ProductState> emit,
  ) async {}

  FutureOr<void> _onProductsByBrandIdFetched(
    ProductsByBrandIdFetched event,
    Emitter<ProductState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      final products = await productController.fetchProductByBrandId(event.brandId);
      emit(state.copyWith(productsByBrandId: products, isLoading: false));
    } catch (error) {
      emit(state.copyWith(isLoading: false));
    }
  }

  FutureOr<void> _onAddProductPressed(
    AddProductPressed event,
    Emitter<ProductState> emit,
  ) async {
    try {
      final accessToken = await storageService.getToken();
      if (accessToken != null) {
        final userId = await storageService.getUserId();
        if (userId != null) {
          await productController.addToCart(
            int.parse(userId),
            event.productId,
            1,
          );
          await productController.addToCart(event.productId, 1, int.parse(userId));
        }
      }
    } catch (error) {}
  }
}
