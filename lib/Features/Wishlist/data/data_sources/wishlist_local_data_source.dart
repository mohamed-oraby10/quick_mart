import 'package:hive/hive.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/constants.dart';

abstract class WishlistLocalDataSource {
  void cacheWishlistItems(List<CartItemEntity> wishlistProducts);
  void deleteWishlistItem({required ProductEntity product});
  List<CartItemEntity> fetchWishlistItems();
}

class WishlistLocalDataSourceImpl extends WishlistLocalDataSource {
  var box = Hive.box<CartItemEntity>(kWishlistBox);

  @override
  void cacheWishlistItems(List<CartItemEntity> wishlistProducts) {
    box.addAll(wishlistProducts);
  }

  @override
  void deleteWishlistItem({required ProductEntity product}) {
    box.delete(product.productId);
  }

  @override
  List<CartItemEntity> fetchWishlistItems() {
    return box.values.toList();
  }
}
