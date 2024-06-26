import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_event.freezed.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.updatePayment({
    required int totalBayar,
    required int kembalian,
    required int total,
    required String metodePembayaran,
  }) = UpdatePayment;

  const factory PaymentEvent.paymentReset() = PaymentReset;
}
