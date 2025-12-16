import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Auth/domain/use_cases/check_email_verified_user_case.dart';
import 'package:quick_mart/Features/Auth/domain/use_cases/email_verification_use_case.dart';

part 'verify_email_state.dart';
class VerifyEmailCubit extends Cubit<VerifyEmailState> {
  VerifyEmailCubit(
    this.sendEmailVerificationUseCase,
    this.checkEmailVerifiedUseCase,
  ) : super(VerifyEmailInitial());

  final EmailVerificationUseCase sendEmailVerificationUseCase;
  final CheckEmailVerifiedUseCase checkEmailVerifiedUseCase;

  Future<void> sendEmail() async {
    emit(VerifyEmailLoading());
    final result = await sendEmailVerificationUseCase();
    result.fold(
      (failure) =>
          emit(VerifyEmailFailure(errMessage: failure.errMessage)),
      (_) => emit(VerifyEmailSuccess()),
    );
  }

  Future<void> checkEmail() async {
    emit(VerifyEmailLoading());
    final result = await checkEmailVerifiedUseCase();
    result.fold(
      (failure) =>
          emit(VerifyEmailFailure(errMessage: failure.errMessage)),
      (isVerified) {
        if (isVerified) {
          emit(EmailVerified());
        } else {
          emit(EmailNotVerified());
        }
      },
    );
  }
}
