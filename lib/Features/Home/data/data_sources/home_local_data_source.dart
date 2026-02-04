import 'package:quick_mart/Features/Home/domain/emuns/filter_type.dart';
import 'package:quick_mart/Features/Home/domain/entities/category_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

abstract class HomeLocalDataSource {
  List<CategoryEntity> fetchCategories({required int pageNumber});
  List<ProductEntity> fetchLeatestProducts({required int pageNumber});
  List<ProductEntity> fetchProductsByCategory({
    required int pageNumber,
    required String categoryName,
  });
  List<ProductEntity> findSearchedProducts({required String productName});
  List<ProductEntity> filterProducts({required FilterType filter});
  List<ProductEntity> filterCategoredProducts({
    required FilterType filter,
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
  List<ProductEntity> fetchProductsByCategory({required int pageNumber, required String categoryName}) {
    // TODO: implement fetchProductsByCategory
    throw UnimplementedError();
  }

  @override
  List<ProductEntity> filterCategoredProducts({required FilterType filter, required String categoryName}) {
    // TODO: implement filterCategoredProducts
    throw UnimplementedError();
  }

  @override
  List<ProductEntity> filterProducts({required FilterType filter}) {
    // TODO: implement filterProducts
    throw UnimplementedError();
  }

  @override
  List<ProductEntity> findSearchedProducts({required String productName}) {
    // TODO: implement findSearchedProducts
    throw UnimplementedError();
  }
}
