import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_state.freezed.dart';

@freezed
class PaymentState with _$PaymentState {
  
 const factory PaymentState.initial() = _Initial;

  const factory PaymentState.updated({
    required int totalBayar,
    required int total,
    required int kembalian,
    required String metodePembayaran,
  }) = _Updated;

 const factory PaymentState.failure({required String message}) = _Failure;

}
