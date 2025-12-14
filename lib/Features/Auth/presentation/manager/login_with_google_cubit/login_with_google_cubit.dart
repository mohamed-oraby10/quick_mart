import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Auth/domain/use_cases/login_with_google_use_case.dart';
part 'login_with_google_state.dart';

class LoginWithGoogleCubit extends Cubit<LoginWithGoogleState> {
  LoginWithGoogleCubit(this.loginWithGoogleUseCase)
    : super(LoginWithGoogleInitial());
  final LoginWithGoogleUseCase loginWithGoogleUseCase;
  Future<void> loginWithGoogle() async {
    emit(LoginWithGoogleLoading());
    var result = await loginWithGoogleUseCase.call();
    result.fold(
      (failure) => emit(LoginWithGoogleFailure(failure.errMessage)),
      (_) => emit(LoginWithGoogleSuccess()),
    );
  }
}
