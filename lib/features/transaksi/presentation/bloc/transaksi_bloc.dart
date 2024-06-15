import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/cashier/domain/entities/cashier.dart';
import 'package:blog_app/features/cashier/presentation/bloc/cashier_bloc.dart';
import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';
import 'package:blog_app/features/transaksi/domain/usecases/delete_transaksi.dart';
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
  final DeleteTransaksi _deleteTransaksi;

  
  TransaksiBloc({
    required GetAllTransaksi getAllTransaksi,
    required SaveTransaksi saveTransaksi,
    required GetAllLocalTransaksi getAllLocalTransaksi,
    required DeleteTransaksi deleteTransaksi, 

  })  : 
    _getAllTransaksi = getAllTransaksi,
    _saveTransaksi = saveTransaksi,
    _getAllLocalTransaksi = getAllLocalTransaksi,
    _deleteTransaksi = deleteTransaksi,
    super(TransaksiInitial()) {
    on<TransaksiEvent>((event, emit) => emit(TransaksiLoading()));
    on<TransaksiFetchAllTransaksi>(_onFetchAllTransaksi);
    on<TransaksiFetchAllLocalTransaksi>(_onFetchAllLocalTransaksi);
    on<TransaksiSave>(_onSaveTransaksi);
    on<TransaksiUpdate>(_onUpdateTransaksi);
    on<TransaksiUpdateLocal>(_onUpdateTransaksiLocal);
    on<TransaksiDelete>(_onDeleteTransaksi);
  
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

void _onUpdateTransaksiLocal(
  TransaksiUpdateLocal event,
  Emitter<TransaksiState> emit,
) async {
  try {
    print('transaksiUpdateLocal');
    // Lakukan pemrosesan update transaksi lokal di sini
    final updatedTransaksi = event.transaksi;
    final items = event.items;

    emit(TransaksiUpdatedLocal(transaksi: updatedTransaksi, items: items));
  } catch (e) {
    // Tangani kesalahan jika terjadi
    emit(TransaksiFailure(e.toString(), error: 'error'));
  }
}

void _onUpdateTransaksi(
  TransaksiUpdate event,
  Emitter<TransaksiState> emit,

)async {

  // final currentState = state;
  // if(currentState is TransaksiUpdated){
    // print('update kah ?');

    final updatedTransaksi =  event.transaksi; 
    emit(TransaksiUpdated(transaksi: updatedTransaksi));
  // }

  // print('gagal update');

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

void _onDeleteTransaksi(
  TransaksiDelete event,
  Emitter<TransaksiState> emit,
)async{
  final res = await _deleteTransaksi(DeleteTransaksiParams(
        transaksi : event.transaksi
  ));
  print('data berhasil di hapus');
  res.fold(
    (l) => emit(TransaksiFailure(l.message, error: 'error')),
    (r) => emit(TransaksiLocalDisplaySuccess(transaksi: r)),
  );
}
}


