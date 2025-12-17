import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Auth/domain/use_cases/reset_password_use_case.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(this.resetPasswordUseCase) : super(ResetPasswordInitial());
  final ResetPasswordUseCase resetPasswordUseCase;

  Future<void> resetPassword({required String email}) async {
    emit(ResetPasswordLaoding());
    var result = await resetPasswordUseCase.call(email);
    result.fold(
      (failure) => emit(ResetPasswordFailure(failure.errMessage)),
      (_) => emit(ResetPasswordSuccess()),
    );
  }
}
