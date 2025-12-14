import 'package:firebase_auth/firebase_auth.dart';
import 'package:quick_mart/Features/Auth/domain/entities/user_entity.dart';

abstract class AuthRemoteDataSource {
  Future<void> signupWithEmailAndPassword({
    required UserEntity userEntity,
    required String password,
  });
  Future<UserCredential> loginWithGoogle();
  Future<void> emailVerification();
  Future<void> loginWithEmailAndPassword({
    required UserEntity userEntity,
    required String password,
  });
  Future<void> updatePassword();
  Future<void> saveUserData({required UserCredential user});
}


class AuthRemoteDataSourceImpl extends AuthRemoteDataSource
{
  @override
  Future<void> emailVerification() {
    // TODO: implement emailVerification
    throw UnimplementedError();
  }

  @override
  Future<void> loginWithEmailAndPassword({required UserEntity userEntity, required String password}) {
    // TODO: implement loginWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> loginWithGoogle() {
    // TODO: implement loginWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> saveUserData({required UserCredential user}) {
    // TODO: implement saveUserData
    throw UnimplementedError();
  }

  @override
  Future<void> signupWithEmailAndPassword({required UserEntity userEntity, required String password}) async{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userEntity.userEemail,
        password: password,
      );
  }

  @override
  Future<void> updatePassword() {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }
  
}