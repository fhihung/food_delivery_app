import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_event.freezed.dart';

abstract class FavoriteEvent {
  const FavoriteEvent();
}

@freezed
class FavoriteInitiated extends FavoriteEvent with _$FavoriteInitiated {
  const factory FavoriteInitiated() = _FavoriteInitiated;
}
