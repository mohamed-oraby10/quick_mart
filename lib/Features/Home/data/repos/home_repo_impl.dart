import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Home/domain/entities/category_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/domain/repos/home_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';

class HomeRepoImpl extends HomeRepo {
  @override
  Future<Either<Failure, List<CategoryEntity>>> fetchCategories({
    required int pageNumber,
  }) {
    // TODO: implement fetchCategories
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> fetchLeatestProducts({
    required int pageNumber,
  }) {
    // TODO: implement fetchLeatestProducts
    throw UnimplementedError();
  }
}
