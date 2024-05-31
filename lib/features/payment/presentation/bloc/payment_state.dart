import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_state.freezed.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({
    required int totalBayar,
    required int total,
    required int kembalian,
    required String metodePembayaran
  }) = _PaymentState;

  factory PaymentState.initial() => const PaymentState(
    totalBayar: 0,
    total: 0,
    kembalian: 0,
    metodePembayaran:''
  );
}
