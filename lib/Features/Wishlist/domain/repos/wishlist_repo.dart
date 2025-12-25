import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

abstract class WishlistRepo {
  List<CartItemEntity> addToWishlist({
    required int productId,
    required ProductEntity product,
  });
  List<CartItemEntity> removeFromWishlist({required int productId});
  List<CartItemEntity> getWishlistProducts();
}
