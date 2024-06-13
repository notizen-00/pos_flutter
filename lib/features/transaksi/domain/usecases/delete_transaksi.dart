import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/usecase/usecase.dart';

import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';

import 'package:blog_app/features/transaksi/domain/repository/transaksi_repository.dart';
import 'package:fpdart/fpdart.dart';

class DeleteTransaksi implements UseCase<List<TransaksiLocal>, DeleteTransaksiParams> {
  final TransaksiRepository transaksiRepository;
  const DeleteTransaksi(this.transaksiRepository);

  @override
  Future<Either<Failure, List<TransaksiLocal> >> call(DeleteTransaksiParams params) async {
    
    return  await transaksiRepository.deleteTransaksi(
      transaksi: params.transaksi,
    );

  }
}

class DeleteTransaksiParams {
  final SingleTransaksi transaksi;

  DeleteTransaksiParams({
    required this.transaksi,
  });
}
