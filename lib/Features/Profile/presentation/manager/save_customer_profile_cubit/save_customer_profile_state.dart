part of 'save_customer_profile_cubit.dart';

@immutable
sealed class SaveCustomerProfileState {}

final class SaveCustomerProfileInitial extends SaveCustomerProfileState {}

final class SaveCustomerProfileLoading extends SaveCustomerProfileState {}

final class SaveCustomerProfileFailure extends SaveCustomerProfileState {
  final String errMessage;

  SaveCustomerProfileFailure(this.errMessage);
}

final class SaveCustomerProfileSuccess extends SaveCustomerProfileState {}
