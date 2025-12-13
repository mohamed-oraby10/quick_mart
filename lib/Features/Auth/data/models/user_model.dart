import 'package:quick_mart/Features/Auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  final String id;
  final String email;
  final String name;
  final String? imageUrl;

  UserModel(this.id, this.email, this.name, this.imageUrl)
    : super(
        fullName: name,
        userEemail: email,
        userIdd: id,
        image: imageUrl ?? '',
      );
  factory UserModel.fromJson(Map<String, dynamic> data) {
    return UserModel(data['id'], data['email'], data['name'], data['image']);
  }
}
