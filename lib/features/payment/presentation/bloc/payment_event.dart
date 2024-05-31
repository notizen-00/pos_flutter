import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_event.freezed.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.updatePayment({
    required int totalBayar,
    required int kembalian,
    required String metodePembayaran
  }) = UpdatePayment;
}
