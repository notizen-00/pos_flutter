import 'package:blog_app/core/utils/token_manager.dart';
import 'package:dio/dio.dart';
import 'package:blog_app/core/config/config.dart';
import 'package:blog_app/core/error/exceptions.dart';
import 'package:blog_app/features/auth/data/models/user_model.dart';
import 'dart:developer';


abstract class AuthRemoteDataSource {


  Future<UserModel> loginWithEmailPassword({
    required String email,
    required String password,
  });
  Future<UserModel?> getCurrentUserData();

  Future<UserModel?> logoutUser();

  
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;
  final TokenManager tokenManager;

  AuthRemoteDataSourceImpl({
    required this.dio,
    required this.tokenManager,
  });


  @override
  Future<UserModel> loginWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {


      final response = await dio.post(
        '${Config.baseUrl}auth/login', // Menggunakan URL login dari konfigurasi
        data: {
          'email': email,
          'password': password,
        },
      );
     
    
      if (response.statusCode == 200) {
        final userModel = UserModel.fromJson(response.data);
        await tokenManager.saveToken(userModel.token); // Simpan token
        return userModel;
      }else{
        throw const ServerException('Failed');
      }
    } on DioException catch (e) {
        if(e.response?.statusCode == 401){
            throw const ServerException('Username dan password salah !');    
          }else if(e.response?.statusCode == 403){
            throw const ServerException('Halaman di larang akses');
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
Future<UserModel?> logoutUser() async {
  try {
    final token = await tokenManager.getToken();
    
    if (token != null) {
      final response = await dio.post(
        '${Config.baseUrl}auth/logout'      , // URL logout
        options: Options(
          headers: {
            'Authorization': 'Bearer $token', // Menggunakan token untuk otorisasi
          },
        ),
      );
      
      // Clear token locally after successful logout
      await tokenManager.clearToken();
      
      // Return user model from response data
      return UserModel.fromJson(response.data);
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
  Future<UserModel?> getCurrentUserData() async {
    try {
      final token = await tokenManager.getToken();
      if (token != null) {
        // Mengambil ID pengguna dari token
    
        // Menggunakan ID pengguna untuk mengambil data pengguna saat ini dari server
        final response = await dio.get(
          '${Config.baseUrl}user', // Menggunakan URL pengguna saat ini dari konfigurasi
          options: Options(
            headers: {
              'Authorization': 'Bearer $token', // Menggunakan token untuk otorisasi
            },
          ),
        );
    
        if (response.statusCode == 200) {
          final userData = UserModel.fromJson(response.data);
          log(response.data);
          return userData;
        } else if(response.statusCode == 404) {
          throw const ServerException('Failed to get current user data');
        }else{
          throw const ServerException('Failed to get current user data');
        }
      } else {
        return null;
      }
    } on DioException catch (e) {
      print('test');
      throw ServerException(e.message.toString());
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
