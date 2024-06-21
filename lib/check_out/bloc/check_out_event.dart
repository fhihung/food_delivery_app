import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_out_event.freezed.dart';

abstract class CheckOutEvent {
  const CheckOutEvent();
}

@freezed
class CheckOutInitiated extends CheckOutEvent with _$CheckOutInitiated {
  const factory CheckOutInitiated() = _CheckOutInitiated;
}

@freezed
class CheckOutFetched extends CheckOutEvent with _$CheckOutFetched {
  const factory CheckOutFetched() = _CheckOutFetched;
}

@freezed
class CheckOutProductQuantityUpdated extends CheckOutEvent with _$CheckOutProductQuantityUpdated {
  const factory CheckOutProductQuantityUpdated({
    required int productId,
    required int quantity,
  }) = _CheckOutProductQuantityUpdated;
}

@freezed
class CheckOutProductQuantityChanged extends CheckOutEvent with _$CheckOutProductQuantityChanged {
  const factory CheckOutProductQuantityChanged({
    required int productId,
    required int quantity,
  }) = _CheckOutProductQuantityChanged;
}

@freezed
class CheckOutPressed extends CheckOutEvent with _$CheckOutPressed {
  const factory CheckOutPressed({
    required String totalPrice,
    required String status,
    required String paymentMethod,
    required String shippingAddress,
    BuildContext? context,
  }) = _CheckOutPressed;
}
