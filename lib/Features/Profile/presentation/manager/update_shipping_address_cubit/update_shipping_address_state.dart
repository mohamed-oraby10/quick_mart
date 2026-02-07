part of 'update_shipping_address_cubit.dart';

@immutable
sealed class UpdateShippingAddressState {}

final class UpdateShippingAddressInitial extends UpdateShippingAddressState {}

final class UpdateShippingAddressLoading extends UpdateShippingAddressState {}

final class UpdateShippingAddressFailure extends UpdateShippingAddressState {
  final String errMessage;

  UpdateShippingAddressFailure(this.errMessage);
}

final class UpdateShippingAddressSuccess extends UpdateShippingAddressState {}
