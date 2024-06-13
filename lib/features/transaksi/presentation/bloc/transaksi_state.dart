  part of 'transaksi_bloc.dart';


  abstract class TransaksiState {
    const TransaksiState();

  }

  class TransaksiInitial extends TransaksiState {}

  class TransaksiLoading extends TransaksiState {}

  class TransaksiDisplaySuccess extends TransaksiState {
    final List<Transaksi> transaksi;
    const TransaksiDisplaySuccess({
      required this.transaksi,
    });

  }

   class TransaksiLocalDisplaySuccess extends TransaksiState {
    final List<TransaksiLocal> transaksi;
    const TransaksiLocalDisplaySuccess({
      required this.transaksi,
    });

  }


  class TransaksiUpdated extends TransaksiState {
    
    final SingleTransaksi transaksi;

    const TransaksiUpdated({
      required this.transaksi,
    });

  }

  class TransaksiDeleteSuccess extends TransaksiState {

    final SingleTransaksi transaksi;
    const TransaksiDeleteSuccess({
      required this.transaksi,
    });
  }

  class TransaksiFailure extends TransaksiState {
    final String error;

    const TransaksiFailure(String message, {required this.error});

  }

  class TransaksiSaveSuccess extends TransaksiState {
    final SingleTransaksi transaksi;

    const TransaksiSaveSuccess({
      required this.transaksi,
    });
    
  }
