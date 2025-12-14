import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Profile/domain/use_cases/fetch_user_data_use_case.dart';

part 'fetch_user_data_state.dart';

class FetchUserDataCubit extends Cubit<FetchUserDataState> {
  FetchUserDataCubit(this.fetchUserDataUseCase) : super(FetchUserDataInitial());
  final FetchUserDataUseCase fetchUserDataUseCase;
  Future<void> fetchUserData() async {
    emit(FetchUserDataLoading());
    var result = await fetchUserDataUseCase.call(null);
    result.fold(
      (failure) => emit(FetchUserDataFailure(failure.errMessage)),
      (_) => emit(FetchUserDataSuccess()),
    );
  }
}
