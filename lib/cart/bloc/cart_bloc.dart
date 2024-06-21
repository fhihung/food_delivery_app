import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:food_delivery_app/app/storage_service.dart';
import 'package:food_delivery_app/cart/bloc/cart_event.dart';
import 'package:food_delivery_app/cart/bloc/cart_state.dart';
import 'package:food_delivery_app/cart/controllers/cart_controller.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartState()) {
    on<CartInitiated>(_onCartInitiated);
    on<CartFetched>(_onCartFetched);
    on<CartProductQuantityUpdated>(_onCartProductQuantityUpdated, transformer: debounce(const Duration(seconds: 2)));
  }

  final StorageService storageService = StorageService();
  final CartController cartController = CartController();

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }

  FutureOr<void> _onCartInitiated(
      CartInitiated event,
      Emitter<CartState> emit,
      ) async {
    final accessToken = await storageService.getToken();
    if (accessToken != null) {
      await storageService.getUserId();
    }
  }

  FutureOr<void> _onCartFetched(
      CartFetched event,
      Emitter<CartState> emit,
      ) async {
    final accessToken = await storageService.getToken();
    if (accessToken != null) {
      final userId = await storageService.getUserId();
      if (userId != null) {
        final cart = await cartController.fetchCart(int.parse(userId));
        emit(state.copyWith(cartProducts: cart));
      }
    }
  }

  FutureOr<void> _onCartProductQuantityUpdated(
      CartProductQuantityUpdated event,
      Emitter<CartState> emit,
      ) async {
    final accessToken = await storageService.getToken();
    if (accessToken != null) {
      final userId = await storageService.getUserId();
      if (userId != null) {
        await cartController.updateCart(
          int.parse(userId),
          event.productId,
          event.quantity,
        );
        final updatedCart = await cartController.fetchCart(int.parse(userId));
        emit(state.copyWith(cartProducts: updatedCart));
      }
    }
  }
}
