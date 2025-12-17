import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Home/domain/entities/category_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<CategoryEntity>>> fetchCategories();
  Future<Either<Failure, List<ProductEntity>>> fetchLeatestProducts();
}
