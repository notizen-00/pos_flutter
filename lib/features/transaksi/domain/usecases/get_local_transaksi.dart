import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';
import 'package:blog_app/features/transaksi/domain/repository/transaksi_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetAllLocalTransaksi implements UseCase<List<TransaksiLocal>, NoParams> {
  final TransaksiRepository transaksiRepository;
  GetAllLocalTransaksi(this.transaksiRepository);

  @override
  Future<Either<Failure, List<TransaksiLocal>>> call(NoParams params) async {
    return await transaksiRepository.getAllLocalTransaksi();
  }


}

