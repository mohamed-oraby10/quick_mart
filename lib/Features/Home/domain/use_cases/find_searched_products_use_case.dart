import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/domain/repos/home_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/use_case.dart';

class FindSearchedProductsUseCase extends UseCase<List<ProductEntity>, String> {
  final HomeRepo homeRepo;

  FindSearchedProductsUseCase(this.homeRepo);
  @override
  Future<Either<Failure, List<ProductEntity>>> call(String productName) async {
    return await homeRepo.findSearchedProducts(productName: productName);
  }
}
