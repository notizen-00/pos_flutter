part of 'transaksi_bloc.dart';

abstract class TransaksiEvent  {
  const TransaksiEvent();
}

class TransaksiFetchAllTransaksi extends TransaksiEvent {

}

class TransaksiFetchAllLocalTransaksi extends TransaksiEvent {
  
}

class TransaksiSave extends TransaksiEvent {
  final SingleTransaksi transaksi;
  final List<CashierItem> items;

  TransaksiSave({
    required this.transaksi,
    required this.items,
  });
}

class TransaksiUpdate extends TransaksiEvent {

  final SingleTransaksi transaksi;

  TransaksiUpdate({
    required this.transaksi
  });

  
}

