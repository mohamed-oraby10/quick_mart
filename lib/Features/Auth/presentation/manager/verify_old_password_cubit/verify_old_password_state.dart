part of 'verify_old_password_cubit.dart';

@immutable
sealed class VerifyOldPasswordState {}

final class VerifyOldPasswordInitial extends VerifyOldPasswordState {}

final class VerifyOldPasswordFailure extends VerifyOldPasswordState {
  final String errMessage;

  VerifyOldPasswordFailure(this.errMessage);
}

final class VerifyOldPasswordSuccess extends VerifyOldPasswordState {}

final class VerifyOldPasswordLoading extends VerifyOldPasswordState {}