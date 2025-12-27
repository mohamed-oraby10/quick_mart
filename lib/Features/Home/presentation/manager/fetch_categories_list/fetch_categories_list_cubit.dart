import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Home/domain/entities/category_entity.dart';
import 'package:quick_mart/Features/Home/domain/use_cases/fetch_categories_use_case.dart';

part 'fetch_categories_list_state.dart';

class FetchCategoriesListCubit extends Cubit<FetchCategoriesListState> {
  FetchCategoriesListCubit(this.fetchCategoriesUseCase) : super(FetchCategoriesListInitial());
  final FetchCategoriesUseCase fetchCategoriesUseCase;
  Future<void> fetchCategoriesList({required int pageNumber}) async {
    emit(FetchCategoriesListLoading());
    final result = await fetchCategoriesUseCase.call( pageNumber);
    result.fold(
      (failure) => emit(FetchCategoriesListFailure(failure.errMessage)),
      (categories) {
        emit(FetchCategoriesListSuccess(categories));
      },
    );
  }
}
