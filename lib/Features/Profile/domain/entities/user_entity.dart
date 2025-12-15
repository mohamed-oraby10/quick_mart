import 'package:hive/hive.dart';

part 'user_entity.g.dart';

@HiveType(typeId: 0)
class UserEntity {
  @HiveField(0)
  final String userIdd;
  @HiveField(1)
  final String fullName;
  @HiveField(2)
  final String userEemail;
  @HiveField(3)
  final String? image;
  UserEntity({
    required this.fullName,
    required this.userEemail,
    required this.userIdd,
    required this.image,
  });
}
