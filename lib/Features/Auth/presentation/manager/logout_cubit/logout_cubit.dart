import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Auth/domain/use_cases/logout_use_case.dart';

part 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit(this.logoutUseCase) : super(LogoutInitial());

  final LogoutUseCase logoutUseCase;

  Future<void> logout() async {
    emit(LogoutLoading());
    final result = await logoutUseCase.call();
    result.fold(
      (failure) => emit(LogoutFailure(failure.errMessage)),
      (_) => emit(LogoutSuccess()),
    );
  }
}
