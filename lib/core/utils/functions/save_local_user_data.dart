import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive/hive.dart';
import 'package:quick_mart/Features/Auth/data/models/user_model.dart';
import 'package:quick_mart/Features/Profile/domain/entities/user_entity.dart';
import 'package:quick_mart/core/utils/constants.dart';

void saveLocalUserData(UserModel userModel) {
  var box = Hive.box<UserEntity>(kUsersBox);
  final uid = FirebaseAuth.instance.currentUser!.uid;
  box.put(uid, userModel);
}
