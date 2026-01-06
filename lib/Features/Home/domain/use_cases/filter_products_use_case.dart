import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Home/domain/emuns/filter_type.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/domain/repos/home_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/use_case.dart';

class FilterProductsUseCase extends UseCase<List<ProductEntity>, FilterType> {
  final HomeRepo homeRepo;

  FilterProductsUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<ProductEntity>>> call(FilterType filter) async {
    return await homeRepo.filterProducts(filterType: filter);
  }
}
