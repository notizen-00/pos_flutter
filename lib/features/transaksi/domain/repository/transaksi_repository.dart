import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/features/cashier/domain/entities/cashier.dart';
import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class TransaksiRepository {
  

  Future<Either<Failure, List<Transaksi>>> getAllData();

  Future<Either<Failure, SingleTransaksi>> saveTransaksi({required SingleTransaksi transaksi,required List<CashierItem> items});
}
