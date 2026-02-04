import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quick_mart/Features/Home/data/data_sources/home_local_data_source.dart';
import 'package:quick_mart/Features/Home/data/data_sources/home_remote_data_source.dart';
import 'package:quick_mart/Features/Home/domain/emuns/filter_type.dart';
import 'package:quick_mart/Features/Home/domain/entities/category_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/domain/repos/home_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl(this.homeRemoteDataSource, this.homeLocalDataSource);
  @override
  Future<Either<ServerFailure, List<CategoryEntity>>> fetchCategories({
    required int pageNumber,
  }) async {
    try {
      var categories = homeLocalDataSource.fetchCategories();
      if (categories.isNotEmpty) {
        return right(categories);
      }
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
      var productsList = homeLocalDataSource.fetchLeatestProducts();
      if (productsList.isNotEmpty) {
        return right(productsList);
      }
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
  Future<Either<Failure, List<ProductEntity>>> fetchProductsByCategory({
    required int pageNumber,
    required String categoryName,
  }) async {
    try {
      var productsList = homeLocalDataSource.fetchProductsByCategory();
      if (productsList.isNotEmpty) {
        return right(productsList);
      }
      return right(
        await homeRemoteDataSource.fetchProductsByCategory(
          pageNumber: pageNumber,
          categoryName: categoryName,
        ),
      );
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> findSearchedProducts({
    required String productName,
  }) async {
    try {
      return right(
        await homeRemoteDataSource.findSearchedProducts(
          productName: productName,
        ),
      );
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> filterProducts({
    required FilterType filterType,
  }) async {
    try {
      return right(
        await homeRemoteDataSource.filterProducts(filter: filterType),
      );
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> filterCategoredProducts({
    required FilterType filterType,
    required String categoryName,
  }) async {
    try {
      return right(
        await homeRemoteDataSource.filterCategoredProducts(
          filter: filterType,
          categoryName: categoryName,
        ),
      );
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
