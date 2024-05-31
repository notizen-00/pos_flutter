// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentState {
  int get totalBayar => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get kembalian => throw _privateConstructorUsedError;
  String get metodePembayaran => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call(
      {int totalBayar, int total, int kembalian, String metodePembayaran});
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBayar = null,
    Object? total = null,
    Object? kembalian = null,
    Object? metodePembayaran = null,
  }) {
    return _then(_value.copyWith(
      totalBayar: null == totalBayar
          ? _value.totalBayar
          : totalBayar // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      kembalian: null == kembalian
          ? _value.kembalian
          : kembalian // ignore: cast_nullable_to_non_nullable
              as int,
      metodePembayaran: null == metodePembayaran
          ? _value.metodePembayaran
          : metodePembayaran // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$PaymentStateImplCopyWith(
          _$PaymentStateImpl value, $Res Function(_$PaymentStateImpl) then) =
      __$$PaymentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalBayar, int total, int kembalian, String metodePembayaran});
}

/// @nodoc
class __$$PaymentStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentStateImpl>
    implements _$$PaymentStateImplCopyWith<$Res> {
  __$$PaymentStateImplCopyWithImpl(
      _$PaymentStateImpl _value, $Res Function(_$PaymentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBayar = null,
    Object? total = null,
    Object? kembalian = null,
    Object? metodePembayaran = null,
  }) {
    return _then(_$PaymentStateImpl(
      totalBayar: null == totalBayar
          ? _value.totalBayar
          : totalBayar // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      kembalian: null == kembalian
          ? _value.kembalian
          : kembalian // ignore: cast_nullable_to_non_nullable
              as int,
      metodePembayaran: null == metodePembayaran
          ? _value.metodePembayaran
          : metodePembayaran // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentStateImpl implements _PaymentState {
  const _$PaymentStateImpl(
      {required this.totalBayar,
      required this.total,
      required this.kembalian,
      required this.metodePembayaran});

  @override
  final int totalBayar;
  @override
  final int total;
  @override
  final int kembalian;
  @override
  final String metodePembayaran;

  @override
  String toString() {
    return 'PaymentState(totalBayar: $totalBayar, total: $total, kembalian: $kembalian, metodePembayaran: $metodePembayaran)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentStateImpl &&
            (identical(other.totalBayar, totalBayar) ||
                other.totalBayar == totalBayar) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.kembalian, kembalian) ||
                other.kembalian == kembalian) &&
            (identical(other.metodePembayaran, metodePembayaran) ||
                other.metodePembayaran == metodePembayaran));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, totalBayar, total, kembalian, metodePembayaran);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      __$$PaymentStateImplCopyWithImpl<_$PaymentStateImpl>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  const factory _PaymentState(
      {required final int totalBayar,
      required final int total,
      required final int kembalian,
      required final String metodePembayaran}) = _$PaymentStateImpl;

  @override
  int get totalBayar;
  @override
  int get total;
  @override
  int get kembalian;
  @override
  String get metodePembayaran;
  @override
  @JsonKey(ignore: true)
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
