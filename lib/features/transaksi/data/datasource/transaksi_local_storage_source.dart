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
  Future<SingleTransaksi> saveTransaksi({required SingleTransaksi transaksi,required List<CashierItem> items}) async {
    
    
    final nomorTransaksi = generateRandomTransactionNumber();

    var singleTransaksi = SingleTransaksiDto.fromEntity(transaksi);
    
    final transaksiSingle = singleTransaksi.copyWith(deskripsi: nomorTransaksi);
    final transaksiEntity = transaksiSingle.toEntity();


    final saveTransaksiLocal = SaveTransaksiLocalDto.fromEntity(transaksiEntity,items);
 
    box.put(nomorTransaksi,saveTransaksiLocal.toJson());

    // print(box.get(nomorTransaksi));
    // box.clear();
      
    return Future.value(transaksi);
  
  }
}
