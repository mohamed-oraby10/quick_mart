import 'package:hive/hive.dart';
import 'package:quick_mart/Features/Home/domain/entities/category_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/constants.dart';

void saveLocalCategories(List<CategoryEntity> categories) {
  var box = Hive.box<CategoryEntity>(kCategoriesBox);
  box.addAll(categories);
}

void saveLocalProducts(List<ProductEntity> products, String boxName) {
  var box = Hive.box<ProductEntity>(boxName);
  box.addAll(products);
}
