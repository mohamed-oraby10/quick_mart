part of 'reset_password_cubit.dart';

@immutable
sealed class ResetPasswordState {}

final class ResetPasswordInitial extends ResetPasswordState {}

final class ResetPasswordFailure extends ResetPasswordState {
  final String errMessage;

  ResetPasswordFailure(this.errMessage);
}

final class ResetPasswordLaoding extends ResetPasswordState {}

final class ResetPasswordSuccess extends ResetPasswordState {}
