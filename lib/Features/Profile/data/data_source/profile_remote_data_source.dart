import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quick_mart/Features/Auth/data/models/user_model.dart';
import 'package:quick_mart/core/utils/constants.dart';

abstract class ProfileRemoteDataSource {
  Future<UserModel> fetchUserData();
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  @override
  Future<UserModel> fetchUserData() async {
    var userCollection = await FirebaseFirestore.instance
        .collection(kUsersCollection)
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    var userData = userCollection.data();
    return UserModel(
      name: userData?['name'] ?? '',
      email: userData?['email'] ?? '',
      id: userData?['id'] ?? '',
      imageUrl: userData?['image'] ?? '',
    );
  }
}
