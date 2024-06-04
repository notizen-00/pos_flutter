import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/common/entities/user.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class TransaksiRepository {
  
  Future<Either<Failure, User>> loginWithEmailPassword({
    required String email,
    required String password,
  });

  Future<Either<Failure, User>> currentUser();

  Future<Either<Failure, User>> userLogout();
}
