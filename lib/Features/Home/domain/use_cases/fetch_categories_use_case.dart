import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Home/domain/entities/category_entity.dart';
import 'package:quick_mart/Features/Home/domain/repos/home_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/use_case.dart';

class FetchCategoriesUseCase extends UseCase<List<CategoryEntity>, int> {
  final HomeRepo homeRepo;

  FetchCategoriesUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<CategoryEntity>>> call(int pageNumber) async {
    return await homeRepo.fetchCategories(pageNumber: pageNumber);
  }
}
