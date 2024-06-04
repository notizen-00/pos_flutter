import 'package:blog_app/core/error/exceptions.dart';
import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/network/connection_checker.dart';
import 'package:blog_app/core/utils/token_manager.dart';
import 'package:blog_app/features/cashier/domain/entities/cashier.dart';
import 'package:blog_app/features/transaksi/data/datasource/transkasi_remote_data_source.dart';
import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';
import 'package:blog_app/features/transaksi/domain/repository/transaksi_repository.dart';
import 'package:fpdart/fpdart.dart';

class TransaksiRepositoryImpl implements TransaksiRepository {
  final TransaksiRemoteDataSource remoteDataSource;
  final ConnectionChecker connectionChecker;
  final TokenManager tokenManager;

  const TransaksiRepositoryImpl(
    this.remoteDataSource,
    this.connectionChecker,
    this.tokenManager,
  );

@override
Future<Either<Failure, SingleTransaksi>> saveTransaksi({required SingleTransaksi transaksi,required List<CashierItem> items}) async {
  try {
    // Check connection
    if (!await connectionChecker.isConnected) {
      return left(Failure('No internet connection'));
    }

    final response = await remoteDataSource.saveTransaksi(transaksi:transaksi,items:items);
    
    return right(response);
  } on ServerException catch (e) {
    return left(Failure(e.message.toString()));
  }
}

  @override
  Future<Either<Failure, List<Transaksi>>> getAllData() async {
    try {
      final transaksi = await remoteDataSource.getAllData();
      return Right(transaksi); // Return success with Right
    } on ServerException catch (e) {
      return Left(Failure( e.message)); // Return failure with Left
    }
  }


}
