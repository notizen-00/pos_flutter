import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/product/domain/entities/product.dart';
import 'package:blog_app/features/product/domain/repository/product_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetAllProducts implements UseCase<List<Product>, NoParams> {
  final ProductRepository productRepository;
  GetAllProducts(this.productRepository);

  @override
  Future<Either<Failure, List<Product>>> call(NoParams params) async {
    return await productRepository.getAllData();
  }
}
