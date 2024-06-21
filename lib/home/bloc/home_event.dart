import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

abstract class HomeEvent {
  const HomeEvent();
}

@freezed
class HomeInitiated extends HomeEvent with _$HomeInitiated {
  const factory HomeInitiated() = _HomeInitiated;
}

@freezed
class NewProductsFetched extends HomeEvent with _$NewProductsFetched {
  const factory NewProductsFetched() = _NewProductsFetched;
}

@freezed
class CategoryProductsFetched extends HomeEvent with _$CategoryProductsFetched {
  const factory CategoryProductsFetched() = _CategoryProductsFetched;
}
