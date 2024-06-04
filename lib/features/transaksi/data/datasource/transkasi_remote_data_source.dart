import 'package:blog_app/core/utils/token_manager.dart';
import 'package:blog_app/features/cashier/domain/entities/cashier.dart';
import 'package:blog_app/features/transaksi/data/dto/save_transaksi_dto.dart';
import 'package:blog_app/features/transaksi/data/dto/transaksi_dto.dart';
import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';
import 'package:dio/dio.dart';
import 'package:blog_app/core/config/config.dart';
import 'package:blog_app/core/error/exceptions.dart';



abstract class TransaksiRemoteDataSource {


  Future<List<Transaksi>> getAllData();

  Future<SingleTransaksi> saveTransaksi({ required SingleTransaksi transaksi,required List<CashierItem> items});

  
}

class TransaksiRemoteDataSourceImpl implements TransaksiRemoteDataSource {
  final Dio dio;
  final TokenManager tokenManager;

  TransaksiRemoteDataSourceImpl({
    required this.dio,
    required this.tokenManager,
  });



  @override
Future<SingleTransaksi> saveTransaksi({required SingleTransaksi transaksi,required List<CashierItem> items}) async {
  try {
    final token = await tokenManager.getToken();
    
    if (token != null) {

      final saveDto = SaveTransaksiDto.fromEntity(transaksi,items);

      final response = await dio.post(
        '${Config.baseUrl}admin/transaksis',
      data: saveDto.toJson(),// URL logout
        options: Options(
          headers: {
            'Authorization': 'Bearer $token', // Menggunakan token untuk otorisasi
          },
        ),
      );
      
      final transaksiDto = SingleTransaksiDto.fromJson(response.data).toEntity();
      return transaksiDto;
    } else {
      throw const ServerException('No token available');
    }
  } on DioException catch (e) {
    // Handle DioError for failed request
    throw ServerException(e.toString());
  } catch (e) {
    // Handle other exceptions
    throw ServerException(e.toString());
  }
}

 @override
  Future<List<Transaksi>> getAllData() async {
    try {
      final token = await tokenManager.getToken();
      if (token != null) {
        final response = await dio.get(
          '${Config.baseUrl}admin/transaksis', 
          options: Options(
            headers: {
              'Authorization': 'Bearer $token', 
            },
          ),
        );
      
        if (response.statusCode == 200) {
          final List<dynamic> data = response.data['data'];
          return data.map((item) => TransaksiDto.fromJson(item).toEntity()).toList();
        } else if(response.statusCode == 404) {
          throw const ServerException('Failed to get current user data');
        }else{
          throw const ServerException('Failed to get current user data');
        }
      } else {
        throw const ServerException('Token tidak valid');
      }
    } on DioException catch (e) {
      if(e.response?.statusCode == 401){
            throw const ServerException('Token Expired silahkan logout dan login kembali');    
          }else if(e.response?.statusCode == 500){
            throw const ServerException('Server sedang error');
          }else if(e.response?.statusCode == 404)
          {
          throw const ServerException('Api Produk tidak di temukan');
          }
      throw ServerException(e.message.toString());
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
