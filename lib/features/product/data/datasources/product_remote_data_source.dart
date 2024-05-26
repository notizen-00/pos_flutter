import 'package:blog_app/core/utils/token_manager.dart';
import 'package:blog_app/features/product/data/dto/product_dto.dart';
import 'package:blog_app/features/product/data/dto/product_dto_extension.dart';
import 'package:blog_app/features/product/domain/entities/product.dart';
import 'package:dio/dio.dart';
import 'package:blog_app/core/config/config.dart';
import 'package:blog_app/core/error/exceptions.dart';


abstract class ProductRemoteDataSource {
  Future<List<Product>> getDetailData({
    required int id,
  });
  Future<List<Product>> getAllData();
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final Dio dio;
  final TokenManager tokenManager;

  ProductRemoteDataSourceImpl({
    required this.dio,
    required this.tokenManager,
  });


  @override
  Future<List<Product>> getDetailData({
    required int id,
  }) async {
    try {
        final token = await tokenManager.getToken();
        final response = await dio.get(
        '${Config.getDetailProduct}/$id',
        options: Options(
            headers: {
              'Authorization': 'Bearer $token', 
            },
          ),
        );

      if (response.statusCode == 200) {
        final productDetail = response.data;
        return productDetail;
      }else{
        throw const ServerException('Failed');
      }
    } on DioException catch (e) {
        if(e.response?.statusCode == 401){
            throw const ServerException('Token Expired silahkan logout dan login kembali');    
          }else if(e.response?.statusCode == 500){
            throw const ServerException('Server sedang error');
          }else if(e.response?.statusCode == 404)
          {
          throw const ServerException('Halaman tidak di temukan');
          }
      throw ServerException(e.message.toString());
      
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<List<Product>> getAllData() async {
    try {
      final token = await tokenManager.getToken();
      if (token != null) {
        final response = await dio.get(
          '${Config.baseUrl}admin/produks', 
          options: Options(
            headers: {
              'Authorization': 'Bearer $token', 
            },
          ),
        );
    
        if (response.statusCode == 200) {
          final List<dynamic> data = response.data['data'];
          return data.map((item) => ProductDto.fromJson(item).toEntity()).toList();
        } else if(response.statusCode == 404) {
          throw const ServerException('Failed to get current user data');
        }else{
          throw const ServerException('Failed to get current user data');
        }
      } else {
        throw const ServerException('Token tidak valid');
      }
    } on DioException catch (e) {
      throw ServerException(e.message.toString());
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
