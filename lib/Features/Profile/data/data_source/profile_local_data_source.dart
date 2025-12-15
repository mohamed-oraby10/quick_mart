import 'package:quick_mart/Features/Auth/data/models/user_model.dart';

abstract class ProfileLocalDataSource {
  UserModel fetchUserData();
}

class ProfileLocalDataSourceImpl implements ProfileLocalDataSource{
  @override
  UserModel fetchUserData() {
    // TODO: implement fetchUserData
    throw UnimplementedError();
  }

}