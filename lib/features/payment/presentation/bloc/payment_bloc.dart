import 'package:bloc/bloc.dart';
import 'payment_event.dart';
import 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(PaymentState.initial());

  Stream<PaymentState> mapEventToState(PaymentEvent event) async* {
    yield* event.map(
      updatePayment: (e) async* {
        yield state.copyWith(
          totalBayar: e.totalBayar,
          kembalian: e.kembalian,
          metodePembayaran: e.metodePembayaran
        );
      },
    );
  }
}
