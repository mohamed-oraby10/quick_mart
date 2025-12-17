import 'package:quick_mart/Features/Home/domain/entities/category_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/api_service.dart';

abstract class HomeRemoteDataSource {
  Future<List<CategoryEntity>> fetchCategories({required int pageNumber});
  Future<List<ProductEntity>> fetchLeatestProducts({required int pageNumber});
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<CategoryEntity>> fetchCategories({
    required int pageNumber,
  }) async {
    await apiService.get(endPoint: 'category-list');
  }

  @override
  Future<List<ProductEntity>> fetchLeatestProducts({required int pageNumber}) {
    // TODO: implement fetchLeatestProducts
    throw UnimplementedError();
  }
}
