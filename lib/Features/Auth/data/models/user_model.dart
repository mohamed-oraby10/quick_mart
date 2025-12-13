import 'package:quick_mart/Features/Auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  final String id;
  final String email;
  final String name;
  final String? imageUrl;

  UserModel({
    required this.id,
    required this.email,
    required this.name,
    required this.imageUrl,
  }) : super(
         fullName: name,
         userEemail: email,
         userIdd: id,
         image: imageUrl ?? '',
       );
  factory UserModel.fromJson(Map<String, dynamic> data) {
    return UserModel(
      id: data['id'],
      email: data['email'],
      name: data['name'],
      imageUrl: data['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'email': email, 'image': imageUrl};
  }
}
