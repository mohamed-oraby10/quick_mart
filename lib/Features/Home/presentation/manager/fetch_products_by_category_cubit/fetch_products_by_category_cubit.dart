import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/domain/params/category_params.dart';
import 'package:quick_mart/Features/Home/domain/use_cases/fetch_products_by_category_use_case.dart';

part 'fetch_products_by_category_state.dart';

class FetchProductsByCategoryCubit extends Cubit<FetchProductsByCategoryState> {
  FetchProductsByCategoryCubit(this.fetchProductsByCategoryUseCase)
    : super(FetchProductsByCategoryInitial());
  final FetchProductsByCategoryUseCase fetchProductsByCategoryUseCase;

  Future<void> fetchProductsByCategory({required CategoryParams params}) async {
    emit(FetchProductsByCategoryLoading());
    var result = await fetchProductsByCategoryUseCase.call(params);
    result.fold(
      (failure) => emit(FetchProductsByCategoryFailure(failure.errMessage)),
      (products) => emit(FetchProductsByCategorySuccess(products)),
    );
  }
}
