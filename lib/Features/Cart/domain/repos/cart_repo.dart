import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

abstract class CartRepo {
  List<ProductEntity> addToCart({required ProductEntity product, required int quantity});
  List<ProductEntity> removeFromCart({required ProductEntity product});
  List<ProductEntity> getCartProducts();
}