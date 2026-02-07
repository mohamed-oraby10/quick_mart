import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/Features/Profile/domain/use_cases/update_shipping_address_use_case.dart';

part 'update_shipping_address_state.dart';

class UpdateShippingAddressCubit extends Cubit<UpdateShippingAddressState> {
  UpdateShippingAddressCubit(this.updateShippingAddressUseCase) : super(UpdateShippingAddressInitial());
   final UpdateShippingAddressUseCase updateShippingAddressUseCase;
  Future<void> updateShippingAddress({required OrderEntity order}) async {
    emit(UpdateShippingAddressLoading());
    var result = await updateShippingAddressUseCase.call(order);
    result.fold(
      (failure) => emit(UpdateShippingAddressFailure(failure.errMessage)),
      (_) => emit(UpdateShippingAddressSuccess()),
    );
  }
}
