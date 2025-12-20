import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/domain/use_cases/fetch_leatest_products_use_case.dart';

part 'fetch_leatest_products_state.dart';

class FetchLeatestProductsCubit extends Cubit<FetchLeatestProductsState> {
  FetchLeatestProductsCubit(this.fetchLeatestProductsUseCase)
    : super(FetchLeatestProductsInitial());
  final FetchLeatestProductsUseCase fetchLeatestProductsUseCase;
  Future<void> fetchLeatestProducts({required int pageNumber}) async {
    emit(FetchLeatestProductsLoading());
    final result = await fetchLeatestProductsUseCase.call(pageNumber);
    result.fold(
      (failure) => emit(FetchLeatestProductsFailure(failure.errMessage)),
      (products) => emit(FetchLeatestProductsSuccess(products)),
    );
  }
}
