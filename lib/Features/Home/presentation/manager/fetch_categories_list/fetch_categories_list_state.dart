part of 'fetch_categories_list_cubit.dart';

@immutable
sealed class FetchCategoriesListState {}

final class FetchCategoriesListInitial extends FetchCategoriesListState {}
final class FetchCategoriesListSuccess extends FetchCategoriesListState {
  final List<CategoryEntity> categories;
  FetchCategoriesListSuccess(this.categories);
}
final class FetchCategoriesListFailure extends FetchCategoriesListState {
  final String errMessage;
  FetchCategoriesListFailure(this.errMessage);
}
final class FetchCategoriesListLoading extends FetchCategoriesListState {}