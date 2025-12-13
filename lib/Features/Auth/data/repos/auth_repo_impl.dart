import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Auth/domain/entities/user_entity.dart';
import 'package:quick_mart/Features/Auth/domain/repos/auth_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either<Failure, void>> emailVerification() {
    // TODO: implement emailVerification
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> loginWithEmailAndPassword({required UserEntity userEntity, required String password}) {
    // TODO: implement loginWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> loginWithGoogle() {
    // TODO: implement loginWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> saveUserData() {
    // TODO: implement saveUserData
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> signupWithEmailAndPassword({required UserEntity userEntity, required String password}) {
    // TODO: implement signupWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> updatePassword() {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }
 
}