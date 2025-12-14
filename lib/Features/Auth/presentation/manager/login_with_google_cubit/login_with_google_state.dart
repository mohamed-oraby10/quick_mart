part of 'login_with_google_cubit.dart';

@immutable
sealed class LoginWithGoogleState {}

final class LoginWithGoogleInitial extends LoginWithGoogleState {}

final class LoginWithGoogleLoading extends LoginWithGoogleState {}

final class LoginWithGoogleFailure extends LoginWithGoogleState {
  final String errMessage;

  LoginWithGoogleFailure(this.errMessage);
}

final class LoginWithGoogleSuccess extends LoginWithGoogleState {}
