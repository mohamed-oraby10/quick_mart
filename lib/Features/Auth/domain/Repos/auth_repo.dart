import 'package:dartz/dartz.dart';
import 'package:quick_mart/core/errors/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure, void>> signupWithEmailAndPassword();
  Future<Either<Failure, void>> loginWithGoogle();
  Future<Either<Failure, void>> emailVerification();
  Future<Either<Failure, void>> loginWithEmailAndPassword();
  Future<Either<Failure, void>> updatePassword();
}
