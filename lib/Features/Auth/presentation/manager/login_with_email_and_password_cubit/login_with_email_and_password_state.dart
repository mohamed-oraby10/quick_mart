part of 'login_with_email_and_password_cubit.dart';

@immutable
sealed class LoginWithEmailAndPasswordState {}

final class LoginWithEmailAndPasswordInitial
    extends LoginWithEmailAndPasswordState {}

final class LoginWithEmailAndPasswordLoading
    extends LoginWithEmailAndPasswordState {}

final class LoginWithEmailAndPasswordFailure
    extends LoginWithEmailAndPasswordState {
  final String errMessage;

  LoginWithEmailAndPasswordFailure(this.errMessage);
}

final class LoginWithEmailAndPasswordSuccess
    extends LoginWithEmailAndPasswordState {}
