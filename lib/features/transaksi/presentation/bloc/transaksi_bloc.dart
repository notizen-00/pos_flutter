import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/cashier/domain/entities/cashier.dart';
import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';
import 'package:blog_app/features/transaksi/domain/usecases/get_all_transaksi.dart';
import 'package:blog_app/features/transaksi/domain/usecases/get_local_transaksi.dart';
import 'package:blog_app/features/transaksi/domain/usecases/save_transaksi.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'transaksi_event.dart';
part 'transaksi_state.dart';

class TransaksiBloc extends Bloc<TransaksiEvent, TransaksiState> {

  final GetAllTransaksi _getAllTransaksi;
  final GetAllLocalTransaksi _getAllLocalTransaksi;
  final SaveTransaksi _saveTransaksi;
  
  TransaksiBloc({
    required GetAllTransaksi getAllTransaksi,
    required SaveTransaksi saveTransaksi,
    required GetAllLocalTransaksi getAllLocalTransaksi
  })  : 
    _getAllTransaksi = getAllTransaksi,
    _saveTransaksi = saveTransaksi,
    _getAllLocalTransaksi = getAllLocalTransaksi,
    super(TransaksiInitial()) {
    on<TransaksiEvent>((event, emit) => emit(TransaksiLoading()));
    on<TransaksiFetchAllTransaksi>(_onFetchAllTransaksi);
    on<TransaksiFetchAllLocalTransaksi>(_onFetchAllLocalTransaksi);
    on<TransaksiSave>(_onSaveTransaksi);
    on<TransaksiUpdate>(_onUpdateTransaksi);
  
  }


void _onFetchAllTransaksi(
  TransaksiFetchAllTransaksi event,
  Emitter<TransaksiState> emit,
) async {
  final res = await _getAllTransaksi(NoParams());

  res.fold(
    (l) => emit(TransaksiFailure(l.message, error: 'errorr')),
    (r) {
      if (r.isEmpty) {
        emit(const TransaksiFailure('No Transaksi available', error: 'Data Transaksi Kosong'));
      } else {
        emit(TransaksiDisplaySuccess(transaksi: r));
      }
    },
  );
}

void _onFetchAllLocalTransaksi(
  TransaksiFetchAllLocalTransaksi event,
  Emitter<TransaksiState> emit,
) async {
  final res = await _getAllLocalTransaksi(NoParams());

  res.fold(
    (l) => emit(TransaksiFailure(l.message, error: 'errorr')),
    (r) {
      if (r.isEmpty) {
        emit(const TransaksiFailure('No Transaksi available', error: 'Data Transaksi Kosong'));
      } else {
        emit(TransaksiLocalDisplaySuccess(transaksi: r));
      }
    },
  );
}

void _onUpdateTransaksi(
  TransaksiUpdate event,
  Emitter<TransaksiState> emit,

){

  final currentState = state;
  if(currentState is TransaksiUpdated){
    final updatedTransaksi = event.transaksi; 
    emit(TransaksiUpdated(transaksi: updatedTransaksi));
  }

}
void _onSaveTransaksi(
    TransaksiSave event,
    Emitter<TransaksiState> emit,
  ) async {
    final res = await _saveTransaksi(SaveTransaksiParams(
      transaksi: event.transaksi,
      items: event.items,
    ));

    res.fold(
      (l) => emit(TransaksiFailure(l.message, error: 'error')),
      (r) => emit(TransaksiSaveSuccess(transaksi: r)),
    );
  }
}


