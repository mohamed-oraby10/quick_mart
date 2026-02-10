class ServerException implements Exception {
  final String? message;
  ServerException(this.message);
}

class InvalidCredentialsException implements Exception {
  final String message;
  InvalidCredentialsException(this.message);
}
