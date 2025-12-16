import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:quick_mart/Features/Auth/data/errors/auth_failure.dart';
import 'package:quick_mart/Features/Auth/data/models/user_model.dart';
import 'package:quick_mart/core/utils/constants.dart';

abstract class AuthRemoteDataSource {
  Future<UserCredential> signupWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<UserCredential> loginWithGoogle();
  Future<void> sendEmailVerification();
  Future<bool> isEmailVerified();
  Future<void> loginWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<void> updatePassword();
  Future<void> updateUserProfile({required String name, String? imageUrl});
  Future<void> saveUserData({
    required UserCredential user,
    required String name,
  });
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
    // final GoogleSignIn googleSignIn = GoogleSignIn();
    // await googleSignIn.signOut();
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
    await saveUserData(user: user, name: user.user!.displayName ?? '');
    return user;
  }

  @override
  Future<void> saveUserData({
    required UserCredential user,
    required String name,
  }) async {
    final UserModel userModel = UserModel(
      id: user.user!.uid,
      email: user.user!.email ?? '',
      name: name,
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
  Future<UserCredential> signupWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      return await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw e;
    }
  }

  @override
  Future<void> updateUserProfile({
    required String name,
    String? imageUrl,
  }) async {
    final user = FirebaseAuth.instance.currentUser!;
    await user.updateDisplayName(name);

    if (imageUrl != null && imageUrl.isNotEmpty) {
      await user.updatePhotoURL(imageUrl);
    }

    await user.reload();
  }

  @override
  Future<void> sendEmailVerification() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null && !user.emailVerified) {
      await user.sendEmailVerification();
    }
  }

  @override
  Future<bool> isEmailVerified() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return false;
    await user.reload();
    return user.emailVerified;
  }

  @override
  Future<void> updatePassword() {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }
}
