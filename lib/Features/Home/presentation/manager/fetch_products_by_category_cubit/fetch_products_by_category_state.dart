part of 'fetch_products_by_category_cubit.dart';

@immutable
sealed class FetchProductsByCategoryState {}

final class FetchProductsByCategoryInitial
    extends FetchProductsByCategoryState {}

final class FetchProductsByCategoryLoading
    extends FetchProductsByCategoryState {}

final class FetchProductsByCategoryFailure
    extends FetchProductsByCategoryState {
  final String errMessage;

  FetchProductsByCategoryFailure(this.errMessage);
}

final class FetchProductsByCategorySuccess
    extends FetchProductsByCategoryState {
  final List<ProductEntity> products;

  FetchProductsByCategorySuccess(this.products);
}
