// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_out_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckOutState {
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  MUser? get user => throw _privateConstructorUsedError;
  List<MProduct> get products => throw _privateConstructorUsedError;
  List<MCart> get cartProducts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckOutStateCopyWith<CheckOutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckOutStateCopyWith<$Res> {
  factory $CheckOutStateCopyWith(
          CheckOutState value, $Res Function(CheckOutState) then) =
      _$CheckOutStateCopyWithImpl<$Res, CheckOutState>;
  @useResult
  $Res call(
      {String errorMessage,
      bool isLoading,
      MUser? user,
      List<MProduct> products,
      List<MCart> cartProducts});
}

/// @nodoc
class _$CheckOutStateCopyWithImpl<$Res, $Val extends CheckOutState>
    implements $CheckOutStateCopyWith<$Res> {
  _$CheckOutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? isLoading = null,
    Object? user = freezed,
    Object? products = null,
    Object? cartProducts = null,
  }) {
    return _then(_value.copyWith(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MUser?,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<MProduct>,
      cartProducts: null == cartProducts
          ? _value.cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<MCart>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckOutStateImplCopyWith<$Res>
    implements $CheckOutStateCopyWith<$Res> {
  factory _$$CheckOutStateImplCopyWith(
          _$CheckOutStateImpl value, $Res Function(_$CheckOutStateImpl) then) =
      __$$CheckOutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String errorMessage,
      bool isLoading,
      MUser? user,
      List<MProduct> products,
      List<MCart> cartProducts});
}

/// @nodoc
class __$$CheckOutStateImplCopyWithImpl<$Res>
    extends _$CheckOutStateCopyWithImpl<$Res, _$CheckOutStateImpl>
    implements _$$CheckOutStateImplCopyWith<$Res> {
  __$$CheckOutStateImplCopyWithImpl(
      _$CheckOutStateImpl _value, $Res Function(_$CheckOutStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? isLoading = null,
    Object? user = freezed,
    Object? products = null,
    Object? cartProducts = null,
  }) {
    return _then(_$CheckOutStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MUser?,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<MProduct>,
      cartProducts: null == cartProducts
          ? _value._cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<MCart>,
    ));
  }
}

/// @nodoc

class _$CheckOutStateImpl implements _CheckOutState {
  const _$CheckOutStateImpl(
      {this.errorMessage = '',
      this.isLoading = false,
      this.user,
      final List<MProduct> products = const <MProduct>[],
      final List<MCart> cartProducts = const <MCart>[]})
      : _products = products,
        _cartProducts = cartProducts;

  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final MUser? user;
  final List<MProduct> _products;
  @override
  @JsonKey()
  List<MProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<MCart> _cartProducts;
  @override
  @JsonKey()
  List<MCart> get cartProducts {
    if (_cartProducts is EqualUnmodifiableListView) return _cartProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartProducts);
  }

  @override
  String toString() {
    return 'CheckOutState(errorMessage: $errorMessage, isLoading: $isLoading, user: $user, products: $products, cartProducts: $cartProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckOutStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._cartProducts, _cartProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      errorMessage,
      isLoading,
      user,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_cartProducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckOutStateImplCopyWith<_$CheckOutStateImpl> get copyWith =>
      __$$CheckOutStateImplCopyWithImpl<_$CheckOutStateImpl>(this, _$identity);
}

abstract class _CheckOutState implements CheckOutState {
  const factory _CheckOutState(
      {final String errorMessage,
      final bool isLoading,
      final MUser? user,
      final List<MProduct> products,
      final List<MCart> cartProducts}) = _$CheckOutStateImpl;

  @override
  String get errorMessage;
  @override
  bool get isLoading;
  @override
  MUser? get user;
  @override
  List<MProduct> get products;
  @override
  List<MCart> get cartProducts;
  @override
  @JsonKey(ignore: true)
  _$$CheckOutStateImplCopyWith<_$CheckOutStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
