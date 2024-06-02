
import 'package:blog_app/features/cashier/domain/entities/cashier.dart';
import 'package:blog_app/features/product/domain/entities/product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';


part 'cashier_event.dart';
part 'cashier_state.dart';

class CashierBloc extends Bloc<CashierEvent, CashierState> {
  CashierBloc() : super(CashierInitial()) {
    on<AddProductToCashier>(_onAddProductToCashier);
    on<RemoveProductFromCashier>(_onRemoveProductFromCashier);
    on<IncrementQuantity>(_incrementQuantity);
    on<DecrementQuantity>(_decrementQuantity);
    on<ResetCashier>(_resetCashier);
  }

void _resetCashier(ResetCashier event,Emitter<CashierState> emit ) async{
  try{
    final currentState = state;
    if(currentState is CashierUpdated){
      emit(CashierInitial());
    }
    

  }catch(e)
  {
    emit(CashierFailure(e.toString()));
  }
}

void _incrementQuantity(IncrementQuantity event,Emitter<CashierState> emit) async{
  try{
    final currentState = state;

    if (currentState is CashierUpdated) {
      final updatedItems = List<CashierItem>.from(currentState.cashier.items);
      final indexItem = updatedItems.indexWhere((item) => item.product.id == event.product.id);

        updatedItems[indexItem] = CashierItem(
          product: event.product,
          quantity: updatedItems[indexItem].quantity + 1,
        );

        emit(CashierUpdated(Cashier(items: updatedItems)));
    }
  }catch(e){
  emit(CashierFailure(e.toString()));
  }
}

void _decrementQuantity(DecrementQuantity event,Emitter<CashierState> emit) async{
  try{
    final currentState = state;

    if (currentState is CashierUpdated) {
      final updatedItems = List<CashierItem>.from(currentState.cashier.items);
      // Find the index of the product to be removed
      final indexItem = updatedItems.indexWhere((item) => item.product.id == event.product.id);

      if (updatedItems[indexItem].quantity > 0) {
  if (updatedItems[indexItem].quantity == 1) {
    // Jika jumlah item sama dengan 1, hapus item dari keranjang kasir
    updatedItems.removeAt(indexItem);
  } else {
    // Jika jumlah item lebih dari 1, kurangi satu item dari jumlahnya
    updatedItems[indexItem] = CashierItem(
      product: event.product,
      quantity: updatedItems[indexItem].quantity - 1,
    );
  }
  emit(CashierUpdated(Cashier(items: updatedItems)));
}

        
    }
  }catch(e){
  emit(CashierFailure(e.toString()));
  }
}


void _onAddProductToCashier(AddProductToCashier event, Emitter<CashierState> emit) async {
  try {
    final currentState = state;
    if (currentState is CashierUpdated) {
      final existingItemIndex = currentState.cashier.items.indexWhere((item) => item.product.id == event.product.id);
      
      if (existingItemIndex != -1) {
        // Produk dengan ID yang sama sudah ada, update kuantitasnya
        final updatedItems = List<CashierItem>.from(currentState.cashier.items);
        updatedItems[existingItemIndex] = CashierItem(
          product: event.product,
          quantity: updatedItems[existingItemIndex].quantity + 1,
        );
        emit(CashierUpdated(Cashier(items: updatedItems)));
      } else {
        // Produk dengan ID yang sama belum ada, tambahkan produk baru dengan kuantitas q
        final newItem = CashierItem(product: event.product, quantity: 1);
        final updatedItems = List<CashierItem>.from(currentState.cashier.items)..add(newItem);
        emit(CashierUpdated(Cashier(items: updatedItems)));
      }
    } else {
      // Keranjang masih kosong, tambahkan produk baru dengan kuantitas q
      final newItem = CashierItem(product: event.product, quantity: 1);
      emit(CashierUpdated(Cashier(items: [newItem])));
    }
  } catch (e) {
    emit(CashierFailure(e.toString()));
  }
}

void _onRemoveProductFromCashier(RemoveProductFromCashier event, Emitter<CashierState> emit) async {
  try {
    final currentState = state;
    if (currentState is CashierUpdated) {
      final updatedItems = List<CashierItem>.from(currentState.cashier.items);
      // Find the index of the product to be removed
      final indexToRemove = updatedItems.indexWhere((item) => item.product.id == event.product.id);
      if (indexToRemove != -1) {
        // Remove the product if found
        updatedItems.removeAt(indexToRemove);
        emit(CashierUpdated(Cashier(items: updatedItems)));
      }
    }
  } catch (e) {
    emit(CashierFailure(e.toString()));
  }
}

}

