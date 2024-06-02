// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int totalBayar, int kembalian, int total, String metodePembayaran)
        updatePayment,
    required TResult Function() paymentReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int totalBayar, int kembalian, int total, String metodePembayaran)?
        updatePayment,
    TResult? Function()? paymentReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int totalBayar, int kembalian, int total, String metodePembayaran)?
        updatePayment,
    TResult Function()? paymentReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdatePayment value) updatePayment,
    required TResult Function(PaymentReset value) paymentReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdatePayment value)? updatePayment,
    TResult? Function(PaymentReset value)? paymentReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdatePayment value)? updatePayment,
    TResult Function(PaymentReset value)? paymentReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdatePaymentImplCopyWith<$Res> {
  factory _$$UpdatePaymentImplCopyWith(
          _$UpdatePaymentImpl value, $Res Function(_$UpdatePaymentImpl) then) =
      __$$UpdatePaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int totalBayar, int kembalian, int total, String metodePembayaran});
}

/// @nodoc
class __$$UpdatePaymentImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$UpdatePaymentImpl>
    implements _$$UpdatePaymentImplCopyWith<$Res> {
  __$$UpdatePaymentImplCopyWithImpl(
      _$UpdatePaymentImpl _value, $Res Function(_$UpdatePaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBayar = null,
    Object? kembalian = null,
    Object? total = null,
    Object? metodePembayaran = null,
  }) {
    return _then(_$UpdatePaymentImpl(
      totalBayar: null == totalBayar
          ? _value.totalBayar
          : totalBayar // ignore: cast_nullable_to_non_nullable
              as int,
      kembalian: null == kembalian
          ? _value.kembalian
          : kembalian // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      metodePembayaran: null == metodePembayaran
          ? _value.metodePembayaran
          : metodePembayaran // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePaymentImpl implements UpdatePayment {
  const _$UpdatePaymentImpl(
      {required this.totalBayar,
      required this.kembalian,
      required this.total,
      required this.metodePembayaran});

  @override
  final int totalBayar;
  @override
  final int kembalian;
  @override
  final int total;
  @override
  final String metodePembayaran;

  @override
  String toString() {
    return 'PaymentEvent.updatePayment(totalBayar: $totalBayar, kembalian: $kembalian, total: $total, metodePembayaran: $metodePembayaran)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePaymentImpl &&
            (identical(other.totalBayar, totalBayar) ||
                other.totalBayar == totalBayar) &&
            (identical(other.kembalian, kembalian) ||
                other.kembalian == kembalian) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.metodePembayaran, metodePembayaran) ||
                other.metodePembayaran == metodePembayaran));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, totalBayar, kembalian, total, metodePembayaran);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePaymentImplCopyWith<_$UpdatePaymentImpl> get copyWith =>
      __$$UpdatePaymentImplCopyWithImpl<_$UpdatePaymentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int totalBayar, int kembalian, int total, String metodePembayaran)
        updatePayment,
    required TResult Function() paymentReset,
  }) {
    return updatePayment(totalBayar, kembalian, total, metodePembayaran);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int totalBayar, int kembalian, int total, String metodePembayaran)?
        updatePayment,
    TResult? Function()? paymentReset,
  }) {
    return updatePayment?.call(totalBayar, kembalian, total, metodePembayaran);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int totalBayar, int kembalian, int total, String metodePembayaran)?
        updatePayment,
    TResult Function()? paymentReset,
    required TResult orElse(),
  }) {
    if (updatePayment != null) {
      return updatePayment(totalBayar, kembalian, total, metodePembayaran);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdatePayment value) updatePayment,
    required TResult Function(PaymentReset value) paymentReset,
  }) {
    return updatePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdatePayment value)? updatePayment,
    TResult? Function(PaymentReset value)? paymentReset,
  }) {
    return updatePayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdatePayment value)? updatePayment,
    TResult Function(PaymentReset value)? paymentReset,
    required TResult orElse(),
  }) {
    if (updatePayment != null) {
      return updatePayment(this);
    }
    return orElse();
  }
}

abstract class UpdatePayment implements PaymentEvent {
  const factory UpdatePayment(
      {required final int totalBayar,
      required final int kembalian,
      required final int total,
      required final String metodePembayaran}) = _$UpdatePaymentImpl;

  int get totalBayar;
  int get kembalian;
  int get total;
  String get metodePembayaran;
  @JsonKey(ignore: true)
  _$$UpdatePaymentImplCopyWith<_$UpdatePaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentResetImplCopyWith<$Res> {
  factory _$$PaymentResetImplCopyWith(
          _$PaymentResetImpl value, $Res Function(_$PaymentResetImpl) then) =
      __$$PaymentResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentResetImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$PaymentResetImpl>
    implements _$$PaymentResetImplCopyWith<$Res> {
  __$$PaymentResetImplCopyWithImpl(
      _$PaymentResetImpl _value, $Res Function(_$PaymentResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentResetImpl implements PaymentReset {
  const _$PaymentResetImpl();

  @override
  String toString() {
    return 'PaymentEvent.paymentReset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int totalBayar, int kembalian, int total, String metodePembayaran)
        updatePayment,
    required TResult Function() paymentReset,
  }) {
    return paymentReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int totalBayar, int kembalian, int total, String metodePembayaran)?
        updatePayment,
    TResult? Function()? paymentReset,
  }) {
    return paymentReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int totalBayar, int kembalian, int total, String metodePembayaran)?
        updatePayment,
    TResult Function()? paymentReset,
    required TResult orElse(),
  }) {
    if (paymentReset != null) {
      return paymentReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdatePayment value) updatePayment,
    required TResult Function(PaymentReset value) paymentReset,
  }) {
    return paymentReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdatePayment value)? updatePayment,
    TResult? Function(PaymentReset value)? paymentReset,
  }) {
    return paymentReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdatePayment value)? updatePayment,
    TResult Function(PaymentReset value)? paymentReset,
    required TResult orElse(),
  }) {
    if (paymentReset != null) {
      return paymentReset(this);
    }
    return orElse();
  }
}

abstract class PaymentReset implements PaymentEvent {
  const factory PaymentReset() = _$PaymentResetImpl;
}
