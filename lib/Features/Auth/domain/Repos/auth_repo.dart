import 'package:dartz/dartz.dart';
import 'package:quick_mart/core/errors/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure, void>> signupWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
    String? imageUrl,
  });
  Future<Either<Failure, void>> loginWithGoogle();
  Future<Either<Failure, void>> sendEmailVerification();
  Future<Either<Failure, bool>> checkEmailVerified();
  Future<Either<Failure, void>> loginWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<Failure, void>> updatePassword();
}
