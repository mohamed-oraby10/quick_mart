import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Profile/domain/entities/order_history_entity.dart';
import 'package:quick_mart/Features/Profile/domain/use_cases/fetch_ongoing_orders_use_case.dart';

part 'fetch_ongoing_orders_state.dart';

class FetchOngoingOrdersCubit extends Cubit<FetchOngoingOrdersState> {
  FetchOngoingOrdersCubit(this.fetchOngoingOrdersUseCase)
    : super(FetchOngoingOrdersInitial());
  final FetchOngoingOrdersUseCase fetchOngoingOrdersUseCase;

  Future<void> fetchOngoingOrders() async {
    emit(FetchOngoingOrdersLoading());
    var result = await fetchOngoingOrdersUseCase.call();
    result.fold(
      (failure) => emit(FetchOngoingOrdersFailure(failure.errMessage)),
      (orders) => emit(FetchOngoingOrdersSuccess(orders)),
    );
  }
}
