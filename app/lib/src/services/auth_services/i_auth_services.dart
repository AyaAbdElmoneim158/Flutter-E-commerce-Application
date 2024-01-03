import 'package:app/src/core/error/i_failures.dart';
import 'package:app/src/model/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthService {
  Future<Either<IFailure, UserModel>> login({
    required String email,
    required String password,
  });

  Future<Either<IFailure, UserModel>> register({
    required String email,
    required String password,
    required String name,
  });

  Future<Either<IFailure, UserModel>> signInWithGoogle();

  Future<Either<IFailure, bool>> resetPassword({
    required String email,
  });

  Future<Either<IFailure, bool>> logout();

  Future<Either<IFailure, Stream<User?>>> authState();
}
