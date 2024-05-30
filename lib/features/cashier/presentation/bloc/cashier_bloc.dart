import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:blog_app/features/product/domain/entities/product.dart';

part 'cashier_event.dart';
part 'cashier_state.dart';

class CashierBloc extends Bloc<CashierEvent, CashierState> {
  CashierBloc() : super(CashierInitial()) {
    on<AddProductToCashier>(_onAddProductToCashier);
  }

  void _onAddProductToCashier(AddProductToCashier event, Emitter<CashierState> emit) async {
    try {
      final currentState = state;
      if (currentState is CashierUpdated) {
        final updatedProducts = List<Product>.from(currentState.cashier.products)..add(event.product);
        emit(CashierUpdated(Cashier(products: updatedProducts)));
      } else {
        emit(CashierUpdated(Cashier(products: [event.product])));
      }
    } catch (e) {
      emit(CashierFailure(e.toString()));
    }
  }
}

