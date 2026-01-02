part of 'find_searched_products_cubit.dart';

@immutable
sealed class FindSearchedProductsState {}

final class FindSearchedProductsInitial extends FindSearchedProductsState {}

final class FindSearchedProductsLoading extends FindSearchedProductsState {}

final class FindSearchedProductsSuccess extends FindSearchedProductsState {
  final List<ProductEntity> products;

  FindSearchedProductsSuccess(this.products);
}

final class FindSearchedProductsFailure extends FindSearchedProductsState {
  final String errMessage;

  FindSearchedProductsFailure(this.errMessage);
}
