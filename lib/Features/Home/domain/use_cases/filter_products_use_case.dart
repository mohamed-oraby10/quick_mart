import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/domain/repos/home_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/no_parameter_use_case.dart';

class FilterProductsUseCase extends NoParameterUseCase<List<ProductEntity>> {
  final HomeRepo homeRepo;

  FilterProductsUseCase(this.homeRepo);
  @override
  Future<Either<Failure, List<ProductEntity>>> call() async {
    return await homeRepo.filterProducts();
  }
}
