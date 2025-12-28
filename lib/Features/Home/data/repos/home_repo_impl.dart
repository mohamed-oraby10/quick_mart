import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quick_mart/Features/Home/data/data_sources/home_remote_data_source.dart';
import 'package:quick_mart/Features/Home/domain/entities/category_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/domain/repos/home_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl(this.homeRemoteDataSource);
  @override
  Future<Either<ServerFailure, List<CategoryEntity>>> fetchCategories({
    required int pageNumber,
  }) async {
    try {
      return right(
        await homeRemoteDataSource.fetchCategories(pageNumber: pageNumber),
      );
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<ServerFailure, List<ProductEntity>>> fetchLeatestProducts({
    required int pageNumber,
  }) async {
    try {
      return right(
        await homeRemoteDataSource.fetchLeatestProducts(pageNumber: pageNumber),
      );
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
  
  @override
  Future<Either<Failure, List<ProductEntity>>> fetchProductsByCategory({required int pageNumber, required String categoryName}) {
    // TODO: implement fetchProductsByCategory
    throw UnimplementedError();
  }
}
