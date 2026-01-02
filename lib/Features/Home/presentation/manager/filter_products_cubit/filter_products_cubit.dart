import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/domain/use_cases/filter_products_use_case.dart';

part 'filter_products_state.dart';

class FilterProductsCubit extends Cubit<FilterProductsState> {
  FilterProductsCubit(this.filterProductsUseCase)
    : super(FilterProductsInitial());
  final FilterProductsUseCase filterProductsUseCase;
  Future<void> filterProducts() async {
    emit(FilterProductsLoading());
    var result = await filterProductsUseCase.call();
    result.fold(
      (failure) => emit(FilterProductsFailure(failure.errMessage)),
      (products) => emit(FilterProductsSuccess(products)),
    );
  }
}
