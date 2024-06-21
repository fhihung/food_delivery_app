import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/models/m_cart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.freezed.dart';

abstract class CartEvent {
  const CartEvent();
}

@freezed
class CartInitiated extends CartEvent with _$CartInitiated {
  const factory CartInitiated() = _CartInitiated;
}

@freezed
class CartFetched extends CartEvent with _$CartFetched {
  const factory CartFetched() = _CartFetched;
}

@freezed
class CartProductQuantityUpdated extends CartEvent with _$CartProductQuantityUpdated {
  const factory CartProductQuantityUpdated({
    required int productId,
    required int quantity,
  }) = _CartProductQuantityUpdated;
}

@freezed
class CartProductQuantityChanged extends CartEvent with _$CartProductQuantityChanged {
  const factory CartProductQuantityChanged({
    required int productId,
    required int quantity,
  }) = _CartProductQuantityChanged;
}

@freezed
class CheckOutPressed extends CartEvent with _$CheckOutPressed {
  const factory CheckOutPressed({
    BuildContext? context,
    List<MCart>? cartProducts,
  }) = _CheckOutPressed;
}
