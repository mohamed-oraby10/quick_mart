part of 'fetch_leatest_products_cubit.dart';

@immutable
sealed class FetchLeatestProductsState {}

final class FetchLeatestProductsInitial extends FetchLeatestProductsState {}

final class FetchLeatestProductsLoading extends FetchLeatestProductsState {}

final class FetchLeatestProductsFailure extends FetchLeatestProductsState {
  final String errMessage;

  FetchLeatestProductsFailure(this.errMessage);
}

final class FetchLeatestProductsSuccess extends FetchLeatestProductsState {
  final List<ProductEntity> products;

  FetchLeatestProductsSuccess(this.products);
}
