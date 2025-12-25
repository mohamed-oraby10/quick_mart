import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

abstract class CartRepo {
  List<CartItemEntity> addToCart({
    required ProductEntity product,
    required int quantity,
  });
  List<CartItemEntity> removeFromCart({required ProductEntity product});
  List<CartItemEntity> decreaseQuantity({required ProductEntity product});
  List<CartItemEntity> getCartProducts();
  void toggleSelection({required int productId});
}
