// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShopState {
  List<MDrink> get fetchedDrinks => throw _privateConstructorUsedError;
  List<MFood> get fetchedFoods => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopStateCopyWith<ShopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopStateCopyWith<$Res> {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) then) =
      _$ShopStateCopyWithImpl<$Res, ShopState>;
  @useResult
  $Res call(
      {List<MDrink> fetchedDrinks,
      List<MFood> fetchedFoods,
      String errorMessage});
}

/// @nodoc
class _$ShopStateCopyWithImpl<$Res, $Val extends ShopState>
    implements $ShopStateCopyWith<$Res> {
  _$ShopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchedDrinks = null,
    Object? fetchedFoods = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      fetchedDrinks: null == fetchedDrinks
          ? _value.fetchedDrinks
          : fetchedDrinks // ignore: cast_nullable_to_non_nullable
              as List<MDrink>,
      fetchedFoods: null == fetchedFoods
          ? _value.fetchedFoods
          : fetchedFoods // ignore: cast_nullable_to_non_nullable
              as List<MFood>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopStateImplCopyWith<$Res>
    implements $ShopStateCopyWith<$Res> {
  factory _$$ShopStateImplCopyWith(
          _$ShopStateImpl value, $Res Function(_$ShopStateImpl) then) =
      __$$ShopStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MDrink> fetchedDrinks,
      List<MFood> fetchedFoods,
      String errorMessage});
}

/// @nodoc
class __$$ShopStateImplCopyWithImpl<$Res>
    extends _$ShopStateCopyWithImpl<$Res, _$ShopStateImpl>
    implements _$$ShopStateImplCopyWith<$Res> {
  __$$ShopStateImplCopyWithImpl(
      _$ShopStateImpl _value, $Res Function(_$ShopStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchedDrinks = null,
    Object? fetchedFoods = null,
    Object? errorMessage = null,
  }) {
    return _then(_$ShopStateImpl(
      fetchedDrinks: null == fetchedDrinks
          ? _value._fetchedDrinks
          : fetchedDrinks // ignore: cast_nullable_to_non_nullable
              as List<MDrink>,
      fetchedFoods: null == fetchedFoods
          ? _value._fetchedFoods
          : fetchedFoods // ignore: cast_nullable_to_non_nullable
              as List<MFood>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShopStateImpl implements _ShopState {
  const _$ShopStateImpl(
      {final List<MDrink> fetchedDrinks = const <MDrink>[],
      final List<MFood> fetchedFoods = const <MFood>[],
      this.errorMessage = ''})
      : _fetchedDrinks = fetchedDrinks,
        _fetchedFoods = fetchedFoods;

  final List<MDrink> _fetchedDrinks;
  @override
  @JsonKey()
  List<MDrink> get fetchedDrinks {
    if (_fetchedDrinks is EqualUnmodifiableListView) return _fetchedDrinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchedDrinks);
  }

  final List<MFood> _fetchedFoods;
  @override
  @JsonKey()
  List<MFood> get fetchedFoods {
    if (_fetchedFoods is EqualUnmodifiableListView) return _fetchedFoods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchedFoods);
  }

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'ShopState(fetchedDrinks: $fetchedDrinks, fetchedFoods: $fetchedFoods, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopStateImpl &&
            const DeepCollectionEquality()
                .equals(other._fetchedDrinks, _fetchedDrinks) &&
            const DeepCollectionEquality()
                .equals(other._fetchedFoods, _fetchedFoods) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_fetchedDrinks),
      const DeepCollectionEquality().hash(_fetchedFoods),
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopStateImplCopyWith<_$ShopStateImpl> get copyWith =>
      __$$ShopStateImplCopyWithImpl<_$ShopStateImpl>(this, _$identity);
}

abstract class _ShopState implements ShopState {
  const factory _ShopState(
      {final List<MDrink> fetchedDrinks,
      final List<MFood> fetchedFoods,
      final String errorMessage}) = _$ShopStateImpl;

  @override
  List<MDrink> get fetchedDrinks;
  @override
  List<MFood> get fetchedFoods;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ShopStateImplCopyWith<_$ShopStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
