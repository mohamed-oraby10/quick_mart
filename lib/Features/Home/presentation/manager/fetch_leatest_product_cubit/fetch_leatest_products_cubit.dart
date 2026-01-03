import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/domain/use_cases/fetch_leatest_products_use_case.dart';
import 'package:quick_mart/Features/Home/domain/use_cases/filter_products_use_case.dart';

part 'fetch_leatest_products_state.dart';

class FetchLeatestProductsCubit extends Cubit<FetchLeatestProductsState> {
  FetchLeatestProductsCubit(
    this.fetchLeatestProductsUseCase,
    this.filterProductsUseCase,
  ) : super(FetchLeatestProductsInitial());
  final FetchLeatestProductsUseCase fetchLeatestProductsUseCase;
  final FilterProductsUseCase filterProductsUseCase;
  Future<void> fetchLeatestProducts({required int pageNumber}) async {
    emit(FetchLeatestProductsLoading());
    final result = await fetchLeatestProductsUseCase.call(pageNumber);
    result.fold(
      (failure) => emit(FetchLeatestProductsFailure(failure.errMessage)),
      (products) => emit(FetchLeatestProductsSuccess(products)),
    );
  }

  Future<void> filterProducts() async {
    emit(FetchLeatestProductsLoading());
    var result = await filterProductsUseCase.call();
    result.fold(
      (failure) => emit(FetchLeatestProductsFailure(failure.errMessage)),
      (products) => emit(FetchLeatestProductsSuccess(products)),
    );
  }
}
