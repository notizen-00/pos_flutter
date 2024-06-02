import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/features/product/domain/entities/product.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class ProductRepository {
  
  Future<Either<Failure, Product>> getDetailData({
    required int id
  });

  Future<Either<Failure, List<Product>>> getAllData();

}
