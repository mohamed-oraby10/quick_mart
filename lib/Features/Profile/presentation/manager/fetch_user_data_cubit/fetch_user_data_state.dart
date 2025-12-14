part of 'fetch_user_data_cubit.dart';

@immutable
sealed class FetchUserDataState {}

final class FetchUserDataInitial extends FetchUserDataState {}

final class FetchUserDataLoading extends FetchUserDataState {}

final class FetchUserDataFailure extends FetchUserDataState {
  final String errMessage;

  FetchUserDataFailure(this.errMessage);
}

final class FetchUserDataSuccess extends FetchUserDataState {
  final UserEntity user;

  FetchUserDataSuccess(this.user);
}
