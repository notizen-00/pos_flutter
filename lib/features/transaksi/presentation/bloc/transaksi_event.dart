part of 'transaksi_bloc.dart';

abstract class TransaksiEvent  {
  const TransaksiEvent();
}

class TransaksiFetchAllTransaksi extends TransaksiEvent {

}

class TransaksiFetchAllLocalTransaksi extends TransaksiEvent {
  
}

class TransaksiDelete extends TransaksiEvent {
  final SingleTransaksi transaksi;
  const TransaksiDelete({ required this.transaksi });
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
    required this.transaksi,
  
  });

  
}

class TransaksiUpdateLocal extends TransaksiEvent {

  final SingleTransaksi transaksi;
  final List<CashierItem> items;

  TransaksiUpdateLocal({
    required this.transaksi,
    required this.items
  
  });

  
}

