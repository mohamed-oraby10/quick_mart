class UserEntity {
  final String userIdd;
  final String fullName;
  final String userEemail;
  final String? image;
  UserEntity({
    required this.fullName,
    required this.userEemail,
    required this.userIdd,
    required this.image,
  });
}
