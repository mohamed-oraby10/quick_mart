import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:quick_mart/Features/Auth/data/errors/auth_failure.dart';
import 'package:quick_mart/Features/Auth/data/models/user_model.dart';
import 'package:quick_mart/Features/Auth/domain/entities/user_entity.dart';
import 'package:quick_mart/Features/Auth/domain/repos/auth_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/utils/constants.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either<AuthFailure, void>> loginWithEmailAndPassword({
    required UserEntity userEntity,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userEntity.userEemail,
        password: password,
      );
      return right(null);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'invalid-email':
          {
            return Left(AuthFailure.invalidEmail());
          }
        case 'invalid-credential':
          {
            return Left(AuthFailure.invalidCredential());
          }
        default:
          {
            return Left(AuthFailure.unKnown());
          }
      }
    }
  }

  @override
  Future<Either<AuthFailure, void>> signupWithEmailAndPassword({
    required UserEntity userEntity,
    required String password,
  }) async {
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: userEntity.userEemail,
            password: password,
          );
      saveUserData(user: user);
      return right(null);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'weak-password':
          {
            return Left(AuthFailure.weakPassword());
          }
        case 'invalid-credential':
          {
            return Left(AuthFailure.invalidCredential());
          }
        case 'invalid-email':
          {
            return Left(AuthFailure.invalidEmail());
          }
        case 'email-already-in-use':
          {
            return Left(AuthFailure.usedEmail());
          }
        default:
          return Left(AuthFailure.usedEmail());
      }
    }
  }

  @override
  Future<Either<Failure, UserCredential>> loginWithGoogle() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      await googleSignIn.signOut();
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth?.idToken,
        accessToken: googleAuth?.accessToken,
      );
      UserCredential user = await FirebaseAuth.instance.signInWithCredential(
        credential,
      );
      saveUserData(user: user);
      return Right(user);
    } catch (e) {
      return Left(AuthFailure.unKnown());
    }
  }

  @override
  Future<Either<AuthFailure, void>> saveUserData({
    required UserCredential user,
  }) async {
    try {
      final UserModel userModel = UserModel(
        id: user.user!.uid,
        email: user.user!.email ?? '',
        name: user.user!.displayName ?? '',
        imageUrl: user.user?.photoURL ?? '',
      );
      FirebaseFirestore.instance
          .collection(kUsersCollection)
          .doc(user.user!.uid)
          .set(userModel.toJson(), SetOptions(merge: true));
      return right(null);
    } catch (e) {
      return left(AuthFailure.unKnown());
    }
  }

  @override
  Future<Either<AuthFailure, void>> emailVerification() {
    // TODO: implement emailVerification
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, void>> updatePassword() {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }
}
