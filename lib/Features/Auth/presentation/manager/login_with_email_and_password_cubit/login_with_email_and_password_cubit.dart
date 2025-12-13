import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Auth/domain/use_cases/login_with_email_and_password_use_case.dart';

part 'login_with_email_and_password_state.dart';

class LoginWithEmailAndPasswordCubit
    extends Cubit<LoginWithEmailAndPasswordState> {
  LoginWithEmailAndPasswordCubit(this.loginWithEmailAndPasswordUseCase)
    : super(LoginWithEmailAndPasswordInitial());

  final LoginWithEmailAndPasswordUseCase loginWithEmailAndPasswordUseCase;

  Future<void> loginWithEmailAndPassword() async {
    emit(LoginWithEmailAndPasswordLoading());
    var result = await loginWithEmailAndPasswordUseCase.call();
    result.fold(
      (failure) => emit(LoginWithEmailAndPasswordFailure(failure.errMessage)),
      (_) => emit(LoginWithEmailAndPasswordSuccess()),
    );
  }
}
