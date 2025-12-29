part of 'save_order_cubit.dart';

@immutable
sealed class SaveOrderState {}

final class SaveOrderInitial extends SaveOrderState {}

final class SaveOrderLoading extends SaveOrderState {}

final class SaveOrderFailure extends SaveOrderState {
  final String errMessage;

  SaveOrderFailure(this.errMessage);
}

final class SaveOrderSuccess extends SaveOrderState {}
