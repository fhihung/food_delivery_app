// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpInitiated {}

/// @nodoc
abstract class $SignUpInitiatedCopyWith<$Res> {
  factory $SignUpInitiatedCopyWith(
          SignUpInitiated value, $Res Function(SignUpInitiated) then) =
      _$SignUpInitiatedCopyWithImpl<$Res, SignUpInitiated>;
}

/// @nodoc
class _$SignUpInitiatedCopyWithImpl<$Res, $Val extends SignUpInitiated>
    implements $SignUpInitiatedCopyWith<$Res> {
  _$SignUpInitiatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpInitiatedImplCopyWith<$Res> {
  factory _$$SignUpInitiatedImplCopyWith(_$SignUpInitiatedImpl value,
          $Res Function(_$SignUpInitiatedImpl) then) =
      __$$SignUpInitiatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpInitiatedImplCopyWithImpl<$Res>
    extends _$SignUpInitiatedCopyWithImpl<$Res, _$SignUpInitiatedImpl>
    implements _$$SignUpInitiatedImplCopyWith<$Res> {
  __$$SignUpInitiatedImplCopyWithImpl(
      _$SignUpInitiatedImpl _value, $Res Function(_$SignUpInitiatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpInitiatedImpl implements _SignUpInitiated {
  const _$SignUpInitiatedImpl();

  @override
  String toString() {
    return 'SignUpInitiated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpInitiatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SignUpInitiated implements SignUpInitiated {
  const factory _SignUpInitiated() = _$SignUpInitiatedImpl;
}

/// @nodoc
mixin _$SignUpSubmitted {
  String get account => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpSubmittedCopyWith<SignUpSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpSubmittedCopyWith<$Res> {
  factory $SignUpSubmittedCopyWith(
          SignUpSubmitted value, $Res Function(SignUpSubmitted) then) =
      _$SignUpSubmittedCopyWithImpl<$Res, SignUpSubmitted>;
  @useResult
  $Res call(
      {String account, String password, String address, String phoneNumber});
}

/// @nodoc
class _$SignUpSubmittedCopyWithImpl<$Res, $Val extends SignUpSubmitted>
    implements $SignUpSubmittedCopyWith<$Res> {
  _$SignUpSubmittedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? password = null,
    Object? address = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpSubmittedImplCopyWith<$Res>
    implements $SignUpSubmittedCopyWith<$Res> {
  factory _$$SignUpSubmittedImplCopyWith(_$SignUpSubmittedImpl value,
          $Res Function(_$SignUpSubmittedImpl) then) =
      __$$SignUpSubmittedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String account, String password, String address, String phoneNumber});
}

/// @nodoc
class __$$SignUpSubmittedImplCopyWithImpl<$Res>
    extends _$SignUpSubmittedCopyWithImpl<$Res, _$SignUpSubmittedImpl>
    implements _$$SignUpSubmittedImplCopyWith<$Res> {
  __$$SignUpSubmittedImplCopyWithImpl(
      _$SignUpSubmittedImpl _value, $Res Function(_$SignUpSubmittedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? password = null,
    Object? address = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$SignUpSubmittedImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpSubmittedImpl implements _SignUpSubmitted {
  const _$SignUpSubmittedImpl(
      {required this.account,
      required this.password,
      required this.address,
      required this.phoneNumber});

  @override
  final String account;
  @override
  final String password;
  @override
  final String address;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'SignUpSubmitted(account: $account, password: $password, address: $address, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpSubmittedImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, account, password, address, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpSubmittedImplCopyWith<_$SignUpSubmittedImpl> get copyWith =>
      __$$SignUpSubmittedImplCopyWithImpl<_$SignUpSubmittedImpl>(
          this, _$identity);
}

abstract class _SignUpSubmitted implements SignUpSubmitted {
  const factory _SignUpSubmitted(
      {required final String account,
      required final String password,
      required final String address,
      required final String phoneNumber}) = _$SignUpSubmittedImpl;

  @override
  String get account;
  @override
  String get password;
  @override
  String get address;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$SignUpSubmittedImplCopyWith<_$SignUpSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
