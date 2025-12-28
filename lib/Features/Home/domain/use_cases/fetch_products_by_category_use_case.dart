import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/domain/params/category_params.dart';
import 'package:quick_mart/Features/Home/domain/repos/home_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/use_case.dart';

class FetchProductsByCategoryUseCase
    extends UseCase<List<ProductEntity>, CategoryParams> {
  final HomeRepo homeRepo;

  FetchProductsByCategoryUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<ProductEntity>>> call(
    CategoryParams params,
  ) async {
    return await homeRepo.fetchProductsByCategory(
      pageNumber: params.pageNumber,
      categoryName: params.categoryName,
    );
  }
}
