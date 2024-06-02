import 'package:blog_app/core/error/exceptions.dart';
import 'package:blog_app/core/error/failures.dart'; // Import failure class
import 'package:blog_app/core/network/connection_checker.dart';
import 'package:blog_app/core/utils/token_manager.dart';
import 'package:blog_app/features/product/data/datasources/product_remote_data_source.dart';
import 'package:blog_app/features/product/domain/entities/product.dart';
import 'package:blog_app/features/product/domain/repository/product_repository.dart';

import 'package:fpdart/fpdart.dart'; // Import Either class

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
  Future<Either<Failure, Product>> getDetailData({required int id}) async {
    try {
      final products = await remoteDataSource.getDetailData(id: id);
      return Right(products as Product); // Return success with Right
    } on ServerException catch (e) {
      return Left(Failure(e.message)); // Return failure with Left
    }
  }

  @override
  Future<Either<Failure, List<Product>>> getAllData() async {
    try {
      final products = await remoteDataSource.getAllData();
      return Right(products); // Return success with Right
    } on ServerException catch (e) {
      return Left(Failure( e.message)); // Return failure with Left
    }
  }
}

