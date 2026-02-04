import 'package:quick_mart/Features/Home/domain/entities/category_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

abstract class HomeLocalDataSource {
  List<CategoryEntity> fetchCategories({required int pageNumber});
  List<ProductEntity> fetchLeatestProducts({required int pageNumber});
  List<ProductEntity> fetchProductsByCategory({
    required int pageNumber,
    required String categoryName,
  });
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  List<CategoryEntity> fetchCategories({required int pageNumber}) {
    // TODO: implement fetchCategories
    throw UnimplementedError();
  }

  @override
  List<ProductEntity> fetchLeatestProducts({required int pageNumber}) {
    // TODO: implement fetchLeatestProducts
    throw UnimplementedError();
  }

  @override
  List<ProductEntity> fetchProductsByCategory({
    required int pageNumber,
    required String categoryName,
  }) {
    // TODO: implement fetchProductsByCategory
    throw UnimplementedError();
  }
}
