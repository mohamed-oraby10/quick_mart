import 'package:hive/hive.dart';
import 'package:quick_mart/Features/Home/domain/entities/category_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/constants.dart';

abstract class HomeLocalDataSource {
  List<CategoryEntity> fetchCategories();
  List<ProductEntity> fetchLeatestProducts();
  List<ProductEntity> fetchProductsByCategory({required String categoryName});
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  List<CategoryEntity> fetchCategories() {
    var box = Hive.box<CategoryEntity>(kCategoriesBox);
    return box.values.toList();
  }

  @override
  List<ProductEntity> fetchLeatestProducts() {
    var box = Hive.box<ProductEntity>(kLeatestProductsBox);
    return box.values.toList();
  }

  @override
  List<ProductEntity> fetchProductsByCategory({required String categoryName}) {
    var box = Hive.box(kProductsByCategoryBox);

    final data = box.get(categoryName);

    return List<ProductEntity>.from(data);
  }
}
