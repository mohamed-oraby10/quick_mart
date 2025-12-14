import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quick_mart/Features/Auth/data/data_sources/auth_remote_data_source.dart';
import 'package:quick_mart/Features/Auth/data/errors/auth_failure.dart';
import 'package:quick_mart/Features/Auth/domain/entities/user_entity.dart';
import 'package:quick_mart/Features/Auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepoImpl(this.authRemoteDataSource);

  @override
  Future<Either<AuthFailure, void>> loginWithEmailAndPassword({
    required UserEntity userEntity,
    required String password,
  }) async {
    try {
      await authRemoteDataSource.loginWithEmailAndPassword(
        email: userEntity.userEemail,
        password: password,
      );
      return right(null);
    } on FirebaseAuthException catch (e) {
      return left(AuthFailure.fromFirebase(e.code));
    }
  }

  @override
  Future<Either<AuthFailure, void>> loginWithGoogle() async {
    try {
      await authRemoteDataSource.loginWithGoogle();
      return right(null);
    } catch (e) {
      return Left(AuthFailure.unKnown());
    }
  }
  @override
  Future<Either<AuthFailure, void>> signupWithEmailAndPassword({
    required UserEntity userEntity,
    required String password,
  }) async {
    try {
      await authRemoteDataSource.signupWithEmailAndPassword(
        email: userEntity.userEemail,
        password: password,
      );
      return right(null);
    } on FirebaseAuthException catch (e) {
      return left(AuthFailure.fromFirebase(e.code));
    }
  }

  @override
  Future<Either<AuthFailure, void>> updatePassword() {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, void>> emailVerification() {
    // TODO: implement emailVerification
    throw UnimplementedError();
  }
}
