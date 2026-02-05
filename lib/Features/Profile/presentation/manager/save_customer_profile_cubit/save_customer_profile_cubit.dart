import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Profile/domain/entities/customer_entity.dart';
import 'package:quick_mart/Features/Profile/domain/use_cases/save_customer_profile_use_case.dart';

part 'save_customer_profile_state.dart';

class SaveCustomerProfileCubit extends Cubit<SaveCustomerProfileState> {
  SaveCustomerProfileCubit(this.saveCustomerProfileUseCase)
    : super(SaveCustomerProfileInitial());
  final SaveCustomerProfileUseCase saveCustomerProfileUseCase;

  Future<void> saveCustomerProfile({required CustomerEntity customer}) async {
    emit(SaveCustomerProfileLoading());
    var result = await saveCustomerProfileUseCase.call(customer);
    result.fold(
      (failure) => emit(SaveCustomerProfileFailure(failure.errMessage)),
      (_) => emit(SaveCustomerProfileSuccess()),
    );
  }
}
