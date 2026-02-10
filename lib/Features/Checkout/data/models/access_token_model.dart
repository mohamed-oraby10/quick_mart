class AccessToken {
  final String token;
  final int expiresIn;

  AccessToken({required this.token, required this.expiresIn});

  factory AccessToken.fromJson(Map<String, dynamic> json) {
    return AccessToken(
      token: json['access_token'],
      expiresIn: json['expires_in'],
    );
  }
}
