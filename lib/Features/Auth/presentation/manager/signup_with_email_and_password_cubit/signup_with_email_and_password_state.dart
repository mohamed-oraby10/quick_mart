part of 'signup_with_email_and_password_cubit.dart';

@immutable
sealed class SignupWithEmailAndPasswordState {}

final class SignupWithEmailAndPasswordInitial
    extends SignupWithEmailAndPasswordState {}

final class SignupWithEmailAndPasswordLoading
    extends SignupWithEmailAndPasswordState {}

final class SignupWithEmailAndPasswordFailure
    extends SignupWithEmailAndPasswordState {
  final String errMessage;

  SignupWithEmailAndPasswordFailure(this.errMessage);
}

final class SignupWithEmailAndPasswordSuccess
    extends SignupWithEmailAndPasswordState {}
