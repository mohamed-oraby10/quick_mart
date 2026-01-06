import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/domain/params/category_params.dart';
import 'package:quick_mart/Features/Home/domain/params/filter_params.dart';
import 'package:quick_mart/Features/Home/domain/use_cases/fetch_products_by_category_use_case.dart';
import 'package:quick_mart/Features/Home/domain/use_cases/filter_categored_products_use_case.dart';

part 'fetch_products_by_category_state.dart';

class FetchProductsByCategoryCubit extends Cubit<FetchProductsByCategoryState> {
  FetchProductsByCategoryCubit(
    this.fetchProductsByCategoryUseCase,
    this.filterCategoredProductsUseCase,
  ) : super(FetchProductsByCategoryInitial());
  final FetchProductsByCategoryUseCase fetchProductsByCategoryUseCase;
  final FilterCategoredProductsUseCase filterCategoredProductsUseCase;

  Future<void> fetchProductsByCategory({required CategoryParams params}) async {
    emit(FetchProductsByCategoryLoading());
    var result = await fetchProductsByCategoryUseCase.call(params);
    result.fold(
      (failure) => emit(FetchProductsByCategoryFailure(failure.errMessage)),
      (products) => emit(FetchProductsByCategorySuccess(products)),
    );
  }

  Future<void> filterProducts({required FilterParams params}) async {
    emit(FetchProductsByCategoryLoading());
    var result = await filterCategoredProductsUseCase.call(params);
    result.fold(
      (failure) => emit(FetchProductsByCategoryFailure(failure.errMessage)),
      (products) => emit(FetchProductsByCategorySuccess(products)),
    );
  }
}
