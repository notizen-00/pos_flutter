import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/cashier/domain/entities/cashier.dart';
import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';
import 'package:blog_app/features/transaksi/domain/usecases/get_all_transaksi.dart';
import 'package:blog_app/features/transaksi/domain/usecases/save_transaksi.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'transaksi_event.dart';
part 'transaksi_state.dart';

class TransaksiBloc extends Bloc<TransaksiEvent, TransaksiState> {

  final GetAllTransaksi _getAllTransaksi;
  final SaveTransaksi _saveTransaksi;
  TransaksiBloc({

    required GetAllTransaksi getAllTransaksi,
    required SaveTransaksi saveTransaksi
  })  : 
    _getAllTransaksi = getAllTransaksi,
    _saveTransaksi = saveTransaksi,
    super(TransaksiInitial()) {
    on<TransaksiEvent>((event, emit) => emit(TransaksiLoading()));
    on<TransaksiFetchAllTransaksi>(_onFetchAllTransaksi);
    on<TransaksiSave>(_onSaveTransaksi);
  
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
        emit(const TransaksiFailure('No products available', error: 'empty'));
      } else {
        emit(TransaksiDisplaySuccess(transaksi: r));
      }
    },
  );
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


