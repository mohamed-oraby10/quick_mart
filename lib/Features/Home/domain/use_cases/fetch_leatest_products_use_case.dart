import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/domain/repos/home_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/use_case.dart';

class FetchLeatestProductsUseCase extends UseCase<List<ProductEntity>, int> {
  final HomeRepo homeRepo;

  FetchLeatestProductsUseCase(this.homeRepo);
  @override
  Future<Either<Failure, List<ProductEntity>>> call(int pageNumber) async {
    return await homeRepo.fetchLeatestProducts(pageNumber: pageNumber);
  }
}
