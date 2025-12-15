import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Auth/domain/params/register_params.dart';
import 'package:quick_mart/Features/Auth/domain/use_cases/signup_with_email_and_password_use_case.dart';

part 'signup_with_email_and_password_state.dart';

class SignupWithEmailAndPasswordCubit
    extends Cubit<SignupWithEmailAndPasswordState> {
  SignupWithEmailAndPasswordCubit(this.signupWithEmailAndPasswordUseCase)
    : super(SignupWithEmailAndPasswordInitial());
  final SignupWithEmailAndPasswordUseCase signupWithEmailAndPasswordUseCase;
  Future<void> signupWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
    String? imageUrl,
  }) async {
    emit(SignupWithEmailAndPasswordLoading());
    var result = await signupWithEmailAndPasswordUseCase.call(
      RegisterParams(
        email: email,
        password: password,
        name: name,
        imageUrl: imageUrl ?? '',
      ),
    );
    result.fold(
      (failure) => emit(SignupWithEmailAndPasswordFailure(failure.errMessage)),
      (_) => emit(SignupWithEmailAndPasswordSuccess()),
    );
  }
}
