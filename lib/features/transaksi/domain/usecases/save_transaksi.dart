import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/cashier/domain/entities/cashier.dart';
import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';

import 'package:blog_app/features/transaksi/domain/repository/transaksi_repository.dart';
import 'package:fpdart/fpdart.dart';

class SaveTransaksi implements UseCase<SingleTransaksi, SaveTransaksiParams> {
  final TransaksiRepository transaksiRepository;
  const SaveTransaksi(this.transaksiRepository);

  @override
  Future<Either<Failure, SingleTransaksi>> call(SaveTransaksiParams params) async {
   
   
    return  await transaksiRepository.saveTransaksi(
      transaksi: params.transaksi,
      items:params.items
    );

  }
}

class SaveTransaksiParams {
  final SingleTransaksi transaksi;
  final List<CashierItem> items;

  SaveTransaksiParams({
    required this.transaksi,
    required this.items,
  });
}
