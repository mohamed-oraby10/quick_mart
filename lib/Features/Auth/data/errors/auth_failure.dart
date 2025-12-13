import 'package:quick_mart/core/errors/failure.dart';

class AuthFailure extends Failure {
  AuthFailure(super.errMessage);

  factory AuthFailure.weakPassword() =>
      AuthFailure('The password provided is too weak.');

  factory AuthFailure.invalidEmail() =>
      AuthFailure('The email address is badly formatted.');

  factory AuthFailure.usedEmail() =>
      AuthFailure('The account already exists for that email.');

  factory AuthFailure.invalidCredential() => AuthFailure(
    'Wrong password provided for that user or No user found for that email.',
  );
  factory AuthFailure.unKnown() => AuthFailure('There is an server error');
}
