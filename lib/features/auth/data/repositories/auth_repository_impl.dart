import 'package:blog_app/core/constants/constants.dart';
import 'package:blog_app/core/error/exceptions.dart';
import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/network/connection_checker.dart';
import 'package:blog_app/core/utils/token_manager.dart';
import 'package:blog_app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:blog_app/core/common/entities/user.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final ConnectionChecker connectionChecker;
  final TokenManager tokenManager;
  const AuthRepositoryImpl(
    this.remoteDataSource,
    this.connectionChecker,
    this.tokenManager,
    
  );

@override
Future<Either<Failure, User>> userLogout() async {
  try {
    // Check connection
    if (!await connectionChecker.isConnected) {
      return left(Failure('No internet connection'));
    }

    // Clear token
    
    await remoteDataSource.logoutUser();
   

    // Return empty user model or null
    return right(User(id: '', email: '', name: '', token: ''));
  } on ServerException catch (e) {
    return left(Failure(e.message.toString()));
  }
}

  @override
  Future<Either<Failure, User>> currentUser() async {
    try {
      if (!await (connectionChecker.isConnected)) {

        final token = await tokenManager.getToken();
      
        if (token == null) {
          return left(Failure('User Belum Login !'));
        }         
      }
      final user = await remoteDataSource.getCurrentUserData();
      if (user == null) {
        return left(Failure('User Belum Login !!'));
      }

      return right(user);
    } on ServerException catch (e) {
      return left(Failure(e.message.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> loginWithEmailPassword({
    required String email,
    required String password,
  }) async {
    return _getUser(
      () async => await remoteDataSource.loginWithEmailPassword(
        email: email,
        password: password,
      ),
    );
  }




  Future<Either<Failure, User>> _getUser(
    Future<User> Function() fn,
  ) async {
    try {
      if (!await (connectionChecker.isConnected)) {
        return left(Failure(Constants.noConnectionErrorMessage));
      }
      final user = await fn();

      return right(user);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }
}
