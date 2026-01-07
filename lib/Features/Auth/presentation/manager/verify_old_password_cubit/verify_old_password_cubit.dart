import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Auth/domain/repos/auth_repo.dart';

part 'verify_old_password_state.dart';

class VerifyOldPasswordCubit extends Cubit<VerifyOldPasswordState> {
  VerifyOldPasswordCubit(this.authRepo) : super(VerifyOldPasswordInitial());

  final AuthRepo authRepo;
  Future<void> verifyOldPassword({required String oldPassword}) async {
    emit(VerifyOldPasswordLoading());
    var result = await authRepo.verifyOldPassword(oldPassword: oldPassword);
    result.fold(
      (failure) => emit(VerifyOldPasswordFailure(failure.errMessage)),
      (_) => emit(VerifyOldPasswordSuccess()),
    );
  }
}
