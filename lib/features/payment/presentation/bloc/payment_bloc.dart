import 'package:bloc/bloc.dart';
import 'payment_event.dart';
import 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(PaymentState.initial()){
    on<UpdatePayment>(_onUpdatePayment);
  }

  void _onUpdatePayment(UpdatePayment event,Emitter<PaymentState> emit) async{
      final currentState = state;
      try{

          if(currentState is UpdatePayment){
               emit(PaymentState.updated(totalBayar: state.totalBayar, total: state.total, kembalian: state.kembalian, metodePembayaran: state.metodePembayaran,errorMessage:''));
          }
       
      }catch(e){
        emit(PaymentState.failure(message:e.toString()));
      }
    
  }

}
