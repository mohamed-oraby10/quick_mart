import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quick_mart/Features/Auth/data/data_sources/auth_remote_data_source.dart';
import 'package:quick_mart/Features/Auth/data/errors/auth_failure.dart';
import 'package:quick_mart/Features/Auth/domain/repos/auth_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';

class AuthRepoImpl extends AuthRepo {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepoImpl(this.authRemoteDataSource);

  @override
  Future<Either<AuthFailure, void>> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await authRemoteDataSource.loginWithEmailAndPassword(
        email: email,
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
    required String email,
    required String password,
    required String name,
    String? imageUrl,
  }) async {
    try {
      final user = await authRemoteDataSource.signupWithEmailAndPassword(
        email: email,
        password: password,
      );
      await authRemoteDataSource.updateUserProfile(
        name: name,
        imageUrl: imageUrl,
      );
      await authRemoteDataSource.saveUserData(user: user, name: name);
      return right(null);
    } on FirebaseAuthException catch (e) {
      return left(AuthFailure.fromFirebase(e.code));
    }
  }

  @override
  Future<Either<AuthFailure, void>> resetPassword({
    required String email,
  }) async {
    try {
      await authRemoteDataSource.resetPassword(email: email);
      return right(null);
    } catch (e) {
      return left(AuthFailure.unKnown());
    }
  }

  @override
  Future<Either<Failure, void>> updatePassword({
    required String newPassword,
  }) async {
    try {
      final currentUser = FirebaseAuth.instance.currentUser!;
      currentUser.updatePassword(newPassword);
      return right(null);
    } on FirebaseAuthException catch (e) {
      return left(AuthFailure.fromFirebase(e.code));
    }
  }

  @override
  Future<Either<Failure, void>> verifyOldPassword({
    required String oldPassword,
  }) async {
    try {
      final currentUser = FirebaseAuth.instance.currentUser!;
      final credential = EmailAuthProvider.credential(
        email: currentUser.email!,
        password: oldPassword,
      );
      await currentUser.reauthenticateWithCredential(credential);
      return right(null);
    } on FirebaseAuthException catch (e) {
      return left(AuthFailure.fromFirebase(e.code));
    }
  }
}
