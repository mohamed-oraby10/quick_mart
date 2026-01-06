import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/domain/params/filter_params.dart';
import 'package:quick_mart/Features/Home/domain/repos/home_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/use_case.dart';

class FilterCategoredProductsUseCase
    extends UseCase<List<ProductEntity>, FilterParams> {
  final HomeRepo homeRepo;

  FilterCategoredProductsUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<ProductEntity>>> call(FilterParams params) async {
    return await homeRepo.filterCategoredProducts(
      filterType: params.filterType,
      categoryName: params.categoryName,
    );
  }
}
