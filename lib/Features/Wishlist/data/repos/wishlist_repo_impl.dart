import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Wishlist/domain/repos/wishlist_repo.dart';

class WishlistRepoImpl implements WishlistRepo {
  final List<CartItemEntity> wishlistItems = [];

  @override
  List<CartItemEntity> addToWishlist({
    required int productId,
    required ProductEntity product,
  }) {
    final index = wishlistItems.indexWhere(
      (item) => item.product.productId == product.productId,
    );
    if (index == -1) {
      wishlistItems.add(CartItemEntity(product: product, quantity: 1));
    }
    return List.from(wishlistItems);
  }

  @override
  List<CartItemEntity> getWishlistProducts() {
    return List.from(wishlistItems);
  }

  @override
  List<CartItemEntity> removeFromWishlist({required ProductEntity product}) {
    wishlistItems.removeWhere(
      (item) => item.product.productId == product.productId,
    );
    return List.from(wishlistItems);
  }

  @override
  void toggleSelection({required ProductEntity product}) {
    final index = wishlistItems.indexWhere(
      (item) => item.product.productId == product.productId,
    );

    if (index != -1) {
      final item = wishlistItems[index];
      removeFromWishlist(product: item.product);
    } else {
      addToWishlist(productId: product.productId, product: product);
    }
  }
}
