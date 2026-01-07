import 'package:quick_mart/core/errors/failure.dart';

class AuthFailure extends Failure {
  AuthFailure(super.errMessage);

  factory AuthFailure.fromFirebase(String code) {
    switch (code) {
      case 'weak-password':
        {
          return AuthFailure('The password provided is too weak.');
        }
      case 'invalid-email':
        {
          return AuthFailure('The email address is badly formatted.');
        }
      case 'email-already-in-use':
        {
          return AuthFailure('The account already exists for that email.');
        }
      default:
        return AuthFailure(
          'Wrong password provided for that user or No user found for that email.',
        );
    }
  }

  factory AuthFailure.unKnown() => AuthFailure('There is an server error');
  factory AuthFailure.notMatchPassword() =>
      AuthFailure('Please make sure both passwords are the same.');
}
