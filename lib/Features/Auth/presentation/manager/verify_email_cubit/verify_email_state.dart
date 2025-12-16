part of 'verify_email_cubit.dart';

abstract class VerifyEmailState {}

class VerifyEmailInitial extends VerifyEmailState {}

class VerifyEmailSuccess extends VerifyEmailState {}

class VerifyEmailFailure extends VerifyEmailState {
  final String errMessage;

  VerifyEmailFailure({required this.errMessage});
}

class VerifyEmailLoading extends VerifyEmailState {}

class EmailVerified extends VerifyEmailState {}

class EmailNotVerified extends VerifyEmailState {}
