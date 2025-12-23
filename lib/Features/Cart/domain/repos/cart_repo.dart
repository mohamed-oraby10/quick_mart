import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

abstract class CartRepo {
  Future<void> addToCart({required ProductEntity product, required int quantity});
  Future<void> removeFromCart({required ProductEntity product});
}