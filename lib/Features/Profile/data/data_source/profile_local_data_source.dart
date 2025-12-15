import 'package:hive/hive.dart';
import 'package:quick_mart/Features/Profile/domain/entities/user_entity.dart';
import 'package:quick_mart/core/utils/constants.dart';

abstract class ProfileLocalDataSource {
  UserEntity fetchUserData();
}

class ProfileLocalDataSourceImpl implements ProfileLocalDataSource {
  @override
  UserEntity fetchUserData() {
    var box = Hive.box<UserEntity>(kUsersBox);
    var user = box.get('currentUser');
    if (user == null) {
      throw Exception('No cached user');
    }
    return user;
  }
}
