import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive/hive.dart';
import 'package:quick_mart/Features/Profile/domain/entities/user_entity.dart';
import 'package:quick_mart/core/utils/constants.dart';

abstract class ProfileLocalDataSource {
  UserEntity? fetchUserData();
}

class ProfileLocalDataSourceImpl implements ProfileLocalDataSource {
  @override
  UserEntity? fetchUserData() {
    var box = Hive.box<UserEntity>(kUsersBox);
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) return null;
    var user = box.get(uid);
    return user;
  }
}
