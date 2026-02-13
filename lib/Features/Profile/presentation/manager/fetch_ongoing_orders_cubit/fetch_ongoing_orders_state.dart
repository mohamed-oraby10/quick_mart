part of 'fetch_ongoing_orders_cubit.dart';

@immutable
sealed class FetchOngoingOrdersState {}

final class FetchOngoingOrdersInitial extends FetchOngoingOrdersState {}

final class FetchOngoingOrdersLoading extends FetchOngoingOrdersState {}

final class FetchOngoingOrdersSuccess extends FetchOngoingOrdersState {
  final List<OrderEntity> orders;

  FetchOngoingOrdersSuccess(this.orders);
}

final class FetchOngoingOrdersFailure extends FetchOngoingOrdersState {
  final String errMessage;

  FetchOngoingOrdersFailure(this.errMessage);
}
