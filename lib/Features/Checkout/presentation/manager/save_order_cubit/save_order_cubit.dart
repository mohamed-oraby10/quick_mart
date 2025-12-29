import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/Features/Checkout/domain/use_cases/save_order_use_case.dart';

part 'save_order_state.dart';

class SaveOrderCubit extends Cubit<SaveOrderState> {
  SaveOrderCubit(this.saveOrderUseCase) : super(SaveOrderInitial());
  final SaveOrderUseCase saveOrderUseCase;
  Future<void> saveOrder({required OrderEntity order}) async {
    emit(SaveOrderLoading());
    var result = await saveOrderUseCase.call(order);
    result.fold(
      (failure) => emit(SaveOrderFailure(failure.errMessage)),
      (_) => emit(SaveOrderSuccess()),
    );
  }
}
