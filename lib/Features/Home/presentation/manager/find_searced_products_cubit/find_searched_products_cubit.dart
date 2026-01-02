import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/domain/use_cases/find_searched_products_use_case.dart';

part 'find_searched_products_state.dart';

class FindSearchedProductsCubit extends Cubit<FindSearchedProductsState> {
  FindSearchedProductsCubit(this.findSearchedProductsUseCase)
    : super(FindSearchedProductsInitial());
  final FindSearchedProductsUseCase findSearchedProductsUseCase;

  Future<void> findSearchedProducts({required String productName}) async {
    emit(FindSearchedProductsLoading());
    var result = await findSearchedProductsUseCase.call(productName);
    result.fold(
      (failure) => emit(FindSearchedProductsFailure(failure.errMessage)),
      (products) => emit(FindSearchedProductsSuccess(products)),
    );
  }
}
