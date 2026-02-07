import 'package:hive/hive.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/constants.dart';

void saveProductsByCategories(
  String categoryName,
  List<ProductEntity> products,
) {
  var box = Hive.box(kProductsByCategoryBox);
  box.put(categoryName, products);
}
