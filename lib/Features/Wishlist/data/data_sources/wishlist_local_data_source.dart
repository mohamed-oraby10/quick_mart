import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive/hive.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/core/utils/constants.dart';

abstract class WishlistLocalDataSource {
  void cacheWishlistItems(ProductEntity product);
  void deleteWishlistItem({required ProductEntity product});
  bool contains(int productId);
  List<CartItemEntity> fetchWishlistItems();
}

class WishlistLocalDataSourceImpl extends WishlistLocalDataSource {
  final Box<CartItemEntity> box = Hive.box<CartItemEntity>(kWishlistBox);

  @override
  void cacheWishlistItems(ProductEntity product) {
    box.put(
      product.productId,
      CartItemEntity(
        product: product,
        quantity: 1,
        userId: FirebaseAuth.instance.currentUser!.uid,
      ),
    );
  }

  @override
  void deleteWishlistItem({required ProductEntity product}) {
    box.delete(product.productId);
  }

  @override
  bool contains(int productId) {
    return box.containsKey(productId);
  }

  @override
  List<CartItemEntity> fetchWishlistItems() {
    return box.values.toList();
  }
}
