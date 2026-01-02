part of 'filter_products_cubit.dart';

@immutable
sealed class FilterProductsState {}

final class FilterProductsInitial extends FilterProductsState {}

final class FilterProductsLoading extends FilterProductsState {}

final class FilterProductsFailure extends FilterProductsState {
  final String errMessage;

  FilterProductsFailure(this.errMessage);
}

final class FilterProductsSuccess extends FilterProductsState {
  final List<ProductEntity> products;

  FilterProductsSuccess(this.products);
}
