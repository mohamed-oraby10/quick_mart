import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Auth/domain/repos/auth_repo.dart';

part 'update_password_state.dart';

class UpdatePasswordCubit extends Cubit<UpdatePasswordState> {
  UpdatePasswordCubit(this.authRepo) : super(UpdatePasswordInitial());

  final AuthRepo authRepo;
  Future<void> updatePassword({required String newPassword}) async {
    emit(UpdatePasswordLoading());
    var result = await authRepo.updatePassword(newPassword: newPassword);
    result.fold(
      (failure) => emit(UpdatePasswordFailure(failure.errMessage)),
      (_) => emit(UpdatePasswordSuccess()),
    );
  }
}
