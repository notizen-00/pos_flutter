import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/product/domain/entities/product.dart';
import 'package:blog_app/features/product/domain/repository/product_repository.dart';
import 'package:fpdart/fpdart.dart';

class DetailProduct implements UseCase<Product, DetailProductParams> {
  final ProductRepository productRepository;
  const DetailProduct(this.productRepository);

  @override
  Future<Either<Failure, Product>> call(DetailProductParams params) async {
    return await productRepository.getDetailData(
      id: params.id,
    );
  }
}

class DetailProductParams {
  final int id;

  DetailProductParams({
    required this.id
  });
}
