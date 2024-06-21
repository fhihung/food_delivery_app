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
class RicesFetched extends ShopEvent with _$RicesFetched {
  const factory RicesFetched() = _RicesFetched;
}

@freezed
class NoodlesFetched extends ShopEvent with _$NoodlesFetched {
  const factory NoodlesFetched() = _NoodlesFetched;
}

@freezed
class DrinksFetched extends ShopEvent with _$DrinksFetched {
  const factory DrinksFetched() = _DrinksFetched;
}

@freezed
class JunkFoodsFetched extends ShopEvent with _$JunkFoodsFetched {
  const factory JunkFoodsFetched() = _JunkFoodsFetched;
}

@freezed
class BrandsFetched extends ShopEvent with _$BrandsFetched {
  const factory BrandsFetched() = _BrandsFetched;
}
