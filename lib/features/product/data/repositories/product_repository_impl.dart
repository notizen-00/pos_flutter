import 'package:blog_app/core/constants/constants.dart';
import 'package:blog_app/core/error/exceptions.dart';
import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/network/connection_checker.dart';
import 'package:blog_app/core/utils/token_manager.dart';
import 'package:blog_app/features/product/data/datasources/product_remote_data_source.dart';
import 'package:blog_app/features/product/domain/entities/product.dart';
import 'package:blog_app/features/product/domain/repository/product_repository.dart';
import 'package:fpdart/fpdart.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;
  final ConnectionChecker connectionChecker;
  final TokenManager tokenManager;
  const ProductRepositoryImpl(
    this.remoteDataSource,
    this.connectionChecker,
    this.tokenManager,
  );


@override
Future<Either<Failure, List<Product>>> getAllData() async {
  try {
    if (!await connectionChecker.isConnected) {
      final token = await tokenManager.getToken();
      if (token == null) {
        return left(Failure('Invalid Token'));
      }
    }

    final products = await remoteDataSource.getAllData();
    return right(products);
  } on ServerException catch (e) {
    return left(Failure(e.message));
  }
}


  @override
  Future<Either<Failure, Product>> getDetailData({
    required int id
  }) async {
    return _getProduct(
      () async => await remoteDataSource.getDetailData(
        id: id,
      ),
    );
  }




  Future<Either<Failure, Product>> _getProduct(
    Future<List<Product>> Function() fn,
  ) async {
    try {
      if (!await (connectionChecker.isConnected)) {
        return left(Failure(Constants.noConnectionErrorMessage));
      }
      final product = await fn();

      return right(product as Product);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }
  
  @override
  getAllProducts() {
    // TODO: implement getAllProducts
    throw UnimplementedError();
  }
}
