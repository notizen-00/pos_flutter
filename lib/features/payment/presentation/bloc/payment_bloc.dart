import 'package:bloc/bloc.dart';
import 'payment_event.dart';
import 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(const PaymentState.initial()) {
    on<UpdatePayment>(_onUpdatePayment);
    on<PaymentReset>(_onResetPayment);
  }

  void _onUpdatePayment(UpdatePayment event, Emitter<PaymentState> emit) async {
    
    try {
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

  void _onResetPayment(PaymentReset event,Emitter<PaymentState> emit) async {
    try{
      emit(const PaymentState.initial());
    }catch(e){
      emit(PaymentState.failure(message:e.toString()));
    }
  }
}
