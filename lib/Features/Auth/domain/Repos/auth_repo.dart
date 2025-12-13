import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Auth/domain/entities/user_entity.dart';
import 'package:quick_mart/core/errors/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure, void>> signupWithEmailAndPassword({required UserEntity userEntity,required String password});
  Future<Either<Failure, void>> loginWithGoogle();
  Future<Either<Failure, void>> emailVerification();
  Future<Either<Failure, void>> loginWithEmailAndPassword({required UserEntity userEntity,required String password});
  Future<Either<Failure, void>> updatePassword();
  Future<Either<Failure, void>> saveUserData();
}
