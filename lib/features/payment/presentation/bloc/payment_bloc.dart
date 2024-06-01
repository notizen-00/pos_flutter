import 'package:bloc/bloc.dart';
import 'payment_event.dart';
import 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(const PaymentState.initial()) {
    on<UpdatePayment>(_onUpdatePayment);
  }

  void _onUpdatePayment(UpdatePayment event, Emitter<PaymentState> emit) async {
    
    try {

        print(event);
        emit(PaymentState.updated(
          totalBayar: event.totalBayar,
          total: event.total,
          kembalian: event.kembalian,
          metodePembayaran: event.metodePembayaran,
        ));
    
      
    } catch (e) {
      emit(PaymentState.failure(message: e.toString()));
    }
  }
}
