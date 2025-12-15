import 'package:quick_mart/Features/Profile/domain/entities/user_entity.dart';

abstract class ProfileLocalDataSource {
  UserEntity fetchUserData();
}

class ProfileLocalDataSourceImpl implements ProfileLocalDataSource{
  @override
  UserEntity fetchUserData() {
    // TODO: implement fetchUserData
    throw UnimplementedError();
  }

}