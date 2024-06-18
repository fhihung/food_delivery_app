import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_event.freezed.dart';

abstract class ShopEvent {
  const ShopEvent();
}

@freezed
class ShopInitiated extends ShopEvent with _$ShopInitiated {
  const factory ShopInitiated() = _ShopInitiated;
}

@freezed
class FoodsFetched extends ShopEvent with _$FoodsFetched {
  const factory FoodsFetched() = _FoodsFetched;
}

@freezed
class DrinksFetched extends ShopEvent with _$DrinksFetched {
  const factory DrinksFetched() = _DrinksFetched;
}
