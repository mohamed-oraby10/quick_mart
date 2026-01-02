import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Home/domain/entities/category_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<CategoryEntity>>> fetchCategories({
    required int pageNumber,
  });
  Future<Either<Failure, List<ProductEntity>>> fetchLeatestProducts({
    required int pageNumber,
  });
   Future<Either<Failure, List<ProductEntity>>> fetchProductsByCategory({
    required int pageNumber,
    required String categoryName
  });
   Future<Either<Failure, List<ProductEntity>>> findSearchedProducts({
    required String productName
  });
}
