import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Auth/domain/use_cases/email_verification_use_case.dart';

part 'verify_email_state.dart';

class VerifyEmailCubit extends Cubit<ResetPasswordState> {
  VerifyEmailCubit(this.emailVerificationUseCase) : super(ResetPasswordInitial());
  final EmailVerificationUseCase emailVerificationUseCase;
  Future<void> resetPassword({required String email}) async {
    emit(ResetPasswordLoading());
    var result = await emailVerificationUseCase.call();
    result.fold(
      (failure) {
        emit(ResetPasswordFailure(errMessage: failure.errMessage));
      },
      (_) {
        emit(ResetPasswordSuccess());
      },
    );
  }
}
