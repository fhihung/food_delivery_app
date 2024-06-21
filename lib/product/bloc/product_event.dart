import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.freezed.dart';

abstract class ProductEvent {
  const ProductEvent();
}

@freezed
class ProductInitiated extends ProductEvent with _$ProductInitiated {
  const factory ProductInitiated() = _ProductInitiated;
}

@freezed
class ProductsByBrandIdFetched extends ProductEvent with _$ProductsByBrandIdFetched {
  const factory ProductsByBrandIdFetched({
    required int brandId,
  }) = _ProductsByBrandIdFetched;
}

@freezed
class AddProductPressed extends ProductEvent with _$AddProductPressed {
  const factory AddProductPressed({
    required int productId,
  }) = _AddProductPressed;
}
