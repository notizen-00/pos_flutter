import 'dart:async';
import 'dart:math';

import 'package:blog_app/features/cashier/domain/entities/cashier.dart';
import 'package:blog_app/features/transaksi/data/dto/save_transaksi_local_dto.dart';
import 'package:blog_app/features/transaksi/data/dto/transaksi_dto.dart';

import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';
import 'package:hive/hive.dart';


abstract class TransaksiLocalDataSource {
  Future<SingleTransaksi> saveTransaksi({required SingleTransaksi transaksi,required List<CashierItem> items});
  Future<List<TransaksiLocal>> getAllLocalTransaksi();
  Future<List<TransaksiLocal>> deleteTransaksi({required SingleTransaksi transaksi});
} 

class TransaksiLocalDataSourceImpl implements TransaksiLocalDataSource {
  final Box box;
  
  TransaksiLocalDataSourceImpl(this.box);


  String generateRandomTransactionNumber() {
  // Generate random number between 100000 and 999999
  int randomNumber = Random().nextInt(900000) + 100000;
  return 'TRX_$randomNumber'; // Prefix with 'TRX_' to indicate it's a transaction number
  }

  @override 

  Future<List<TransaksiLocal>> getAllLocalTransaksi() async {
  final List<String> kunci = box.keys.cast<String>().toList();
    final List<TransaksiLocal> allValues = [];
    
    for (var k in kunci) {
      final transaksiLocal = box.get(k);
      // print(transaksiLocal);
      if (transaksiLocal != null) {
        allValues.add(SaveTransaksiLocalDto.fromJson(transaksiLocal).toTransaksiLocal());
      }
    }

    return allValues;
  }

  @override
Future<SingleTransaksi> saveTransaksi({required SingleTransaksi transaksi, required List<CashierItem> items}) async {
  
  print(transaksi.deskripsi);
  if (transaksi.deskripsi != '' ) {

  var singleTransaksi = SingleTransaksiDto.fromEntity(transaksi);
   
    final transaksiSingle = singleTransaksi.copyWith(deskripsi: transaksi.deskripsi,total:transaksi.total,meja:transaksi.meja,authorId: transaksi.authorId);
    final transaksiEntity = transaksiSingle.toEntity();
    
    final saveTransaksiLocal = SaveTransaksiLocalDto.fromEntity(transaksiEntity, items);
    box.put(transaksi.deskripsi!, saveTransaksiLocal.toJson());
    print('berhasil memperbarui data transaksi');
  } else {
    final nomorTransaksi = generateRandomTransactionNumber();
  var singleTransaksi = SingleTransaksiDto.fromEntity(transaksi);
    final transaksiSingle = singleTransaksi.copyWith(deskripsi: nomorTransaksi);
    print(transaksiSingle);
    final transaksiEntity = transaksiSingle.toEntity();
    
    final saveTransaksiLocal = SaveTransaksiLocalDto.fromEntity(transaksiEntity, items);
    box.put(nomorTransaksi, saveTransaksiLocal.toJson());
    print('berhasil membuat data transaksi baru');
  }
  
  return Future.value(transaksi);
}

  @override 

  Future<List<TransaksiLocal>> deleteTransaksi({required SingleTransaksi transaksi}) async {

    final String nomorTransaksi = transaksi.deskripsi != null ? transaksi.deskripsi as String : 'TRX_0';
    if (box.containsKey(nomorTransaksi)) {
    // Jika ada, hapus entri dengan kunci nomorTransaksi
    box.delete(nomorTransaksi);

      final transaksi = await getAllLocalTransaksi();
      return transaksi;
  } else {
    // Jika tidak ada, cetak pesan bahwa transaksi tidak ditemukan
      final transaksi = await getAllLocalTransaksi();
      return transaksi;
  }
  }

}
