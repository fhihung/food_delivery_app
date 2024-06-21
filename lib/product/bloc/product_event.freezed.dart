// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductInitiated {}

/// @nodoc
abstract class $ProductInitiatedCopyWith<$Res> {
  factory $ProductInitiatedCopyWith(
          ProductInitiated value, $Res Function(ProductInitiated) then) =
      _$ProductInitiatedCopyWithImpl<$Res, ProductInitiated>;
}

/// @nodoc
class _$ProductInitiatedCopyWithImpl<$Res, $Val extends ProductInitiated>
    implements $ProductInitiatedCopyWith<$Res> {
  _$ProductInitiatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductInitiatedImplCopyWith<$Res> {
  factory _$$ProductInitiatedImplCopyWith(_$ProductInitiatedImpl value,
          $Res Function(_$ProductInitiatedImpl) then) =
      __$$ProductInitiatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductInitiatedImplCopyWithImpl<$Res>
    extends _$ProductInitiatedCopyWithImpl<$Res, _$ProductInitiatedImpl>
    implements _$$ProductInitiatedImplCopyWith<$Res> {
  __$$ProductInitiatedImplCopyWithImpl(_$ProductInitiatedImpl _value,
      $Res Function(_$ProductInitiatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductInitiatedImpl implements _ProductInitiated {
  const _$ProductInitiatedImpl();

  @override
  String toString() {
    return 'ProductInitiated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductInitiatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ProductInitiated implements ProductInitiated {
  const factory _ProductInitiated() = _$ProductInitiatedImpl;
}

/// @nodoc
mixin _$ProductsByBrandIdFetched {
  int get brandId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsByBrandIdFetchedCopyWith<ProductsByBrandIdFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsByBrandIdFetchedCopyWith<$Res> {
  factory $ProductsByBrandIdFetchedCopyWith(ProductsByBrandIdFetched value,
          $Res Function(ProductsByBrandIdFetched) then) =
      _$ProductsByBrandIdFetchedCopyWithImpl<$Res, ProductsByBrandIdFetched>;
  @useResult
  $Res call({int brandId});
}

/// @nodoc
class _$ProductsByBrandIdFetchedCopyWithImpl<$Res,
        $Val extends ProductsByBrandIdFetched>
    implements $ProductsByBrandIdFetchedCopyWith<$Res> {
  _$ProductsByBrandIdFetchedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandId = null,
  }) {
    return _then(_value.copyWith(
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsByBrandIdFetchedImplCopyWith<$Res>
    implements $ProductsByBrandIdFetchedCopyWith<$Res> {
  factory _$$ProductsByBrandIdFetchedImplCopyWith(
          _$ProductsByBrandIdFetchedImpl value,
          $Res Function(_$ProductsByBrandIdFetchedImpl) then) =
      __$$ProductsByBrandIdFetchedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int brandId});
}

/// @nodoc
class __$$ProductsByBrandIdFetchedImplCopyWithImpl<$Res>
    extends _$ProductsByBrandIdFetchedCopyWithImpl<$Res,
        _$ProductsByBrandIdFetchedImpl>
    implements _$$ProductsByBrandIdFetchedImplCopyWith<$Res> {
  __$$ProductsByBrandIdFetchedImplCopyWithImpl(
      _$ProductsByBrandIdFetchedImpl _value,
      $Res Function(_$ProductsByBrandIdFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandId = null,
  }) {
    return _then(_$ProductsByBrandIdFetchedImpl(
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProductsByBrandIdFetchedImpl implements _ProductsByBrandIdFetched {
  const _$ProductsByBrandIdFetchedImpl({required this.brandId});

  @override
  final int brandId;

  @override
  String toString() {
    return 'ProductsByBrandIdFetched(brandId: $brandId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsByBrandIdFetchedImpl &&
            (identical(other.brandId, brandId) || other.brandId == brandId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brandId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsByBrandIdFetchedImplCopyWith<_$ProductsByBrandIdFetchedImpl>
      get copyWith => __$$ProductsByBrandIdFetchedImplCopyWithImpl<
          _$ProductsByBrandIdFetchedImpl>(this, _$identity);
}

abstract class _ProductsByBrandIdFetched implements ProductsByBrandIdFetched {
  const factory _ProductsByBrandIdFetched({required final int brandId}) =
      _$ProductsByBrandIdFetchedImpl;

  @override
  int get brandId;
  @override
  @JsonKey(ignore: true)
  _$$ProductsByBrandIdFetchedImplCopyWith<_$ProductsByBrandIdFetchedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddProductPressed {
  int get productId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddProductPressedCopyWith<AddProductPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductPressedCopyWith<$Res> {
  factory $AddProductPressedCopyWith(
          AddProductPressed value, $Res Function(AddProductPressed) then) =
      _$AddProductPressedCopyWithImpl<$Res, AddProductPressed>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class _$AddProductPressedCopyWithImpl<$Res, $Val extends AddProductPressed>
    implements $AddProductPressedCopyWith<$Res> {
  _$AddProductPressedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddProductPressedImplCopyWith<$Res>
    implements $AddProductPressedCopyWith<$Res> {
  factory _$$AddProductPressedImplCopyWith(_$AddProductPressedImpl value,
          $Res Function(_$AddProductPressedImpl) then) =
      __$$AddProductPressedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$AddProductPressedImplCopyWithImpl<$Res>
    extends _$AddProductPressedCopyWithImpl<$Res, _$AddProductPressedImpl>
    implements _$$AddProductPressedImplCopyWith<$Res> {
  __$$AddProductPressedImplCopyWithImpl(_$AddProductPressedImpl _value,
      $Res Function(_$AddProductPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$AddProductPressedImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddProductPressedImpl implements _AddProductPressed {
  const _$AddProductPressedImpl({required this.productId});

  @override
  final int productId;

  @override
  String toString() {
    return 'AddProductPressed(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductPressedImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductPressedImplCopyWith<_$AddProductPressedImpl> get copyWith =>
      __$$AddProductPressedImplCopyWithImpl<_$AddProductPressedImpl>(
          this, _$identity);
}

abstract class _AddProductPressed implements AddProductPressed {
  const factory _AddProductPressed({required final int productId}) =
      _$AddProductPressedImpl;

  @override
  int get productId;
  @override
  @JsonKey(ignore: true)
  _$$AddProductPressedImplCopyWith<_$AddProductPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
