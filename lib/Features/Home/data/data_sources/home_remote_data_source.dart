import 'package:quick_mart/Features/Home/data/models/product_model.dart';
import 'package:quick_mart/Features/Home/domain/entities/category_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/api_service.dart';

abstract class HomeRemoteDataSource {
  Future<List<CategoryEntity>> fetchCategories({required int pageNumber});
  Future<List<ProductEntity>> fetchLeatestProducts({required int pageNumber});
  Future<List<ProductEntity>> fetchProductsByCategory({
    required int pageNumber,
    required String categoryName,
  });
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<CategoryEntity>> fetchCategories({
    required int pageNumber,
  }) async {
    final data = await apiService.get(endPoint: 'category-list');

    final categories = data as List<dynamic>;

    return categories
        .map<CategoryEntity>((e) => CategoryEntity(categoryName: e))
        .toList();
  }

  @override
  Future<List<ProductEntity>> fetchLeatestProducts({
    required int pageNumber,
  }) async {
    bool isUpdatedInLastYear(String isoDate) {
      final parsedDate = DateTime.parse(isoDate);
      final oneYearAgo = DateTime.now().subtract(const Duration(days: 365));
      return parsedDate.isAfter(oneYearAgo);
    }

    final data = await apiService.get(endPoint: '');

    final products = data['products'] as List;

    final filteredProducts = products.where((product) {
      final updatedAt = product['meta']['updatedAt'];
      return isUpdatedInLastYear(updatedAt);
    }).toList();

    return filteredProducts
        .map<ProductEntity>((json) => ProductModel.fromJson(json))
        .toList();
  }

  @override
  Future<List<ProductEntity>> fetchProductsByCategory({
    required int pageNumber,
    required String categoryName,
  }) async {
    var data = await apiService.get(endPoint: 'category/$categoryName');
    List<ProductEntity> products = [];
    for (var product in data['products']) {
      products.add(ProductModel.fromJson(product));
    }
    return products;
  }
}
