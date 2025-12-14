import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:quick_mart/Features/Auth/data/errors/auth_failure.dart';
import 'package:quick_mart/Features/Auth/data/models/user_model.dart';
import 'package:quick_mart/core/utils/constants.dart';

abstract class AuthRemoteDataSource {
  Future<void> signupWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<UserCredential> loginWithGoogle();
  Future<void> emailVerification();
  Future<void> loginWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<void> updatePassword();
  Future<void> saveUserData({required UserCredential user});
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {

  @override
  Future<void> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw e;
    }
  }

  @override
  Future<UserCredential> loginWithGoogle() async {
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
    await saveUserData(user: user);
    return user;
  }

  @override
  Future<void> saveUserData({required UserCredential user}) async {
    final UserModel userModel = UserModel(
      id: user.user!.uid,
      email: user.user!.email ?? '',
      name: user.user!.displayName ?? '',
      imageUrl: user.user?.photoURL ?? '',
    );
    try {
      await FirebaseFirestore.instance
          .collection(kUsersCollection)
          .doc(user.user!.uid)
          .set(userModel.toJson(), SetOptions(merge: true));
    } catch (e) {
      AuthFailure.unKnown();
    }
  }

  @override
  Future<void> signupWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      await saveUserData(user: user);
    } on FirebaseAuthException catch (e) {
      throw e;
    }
  }

   @override
  Future<void> emailVerification() {
    // TODO: implement emailVerification
    throw UnimplementedError();
  }

  @override
  Future<void> updatePassword() {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }
}
