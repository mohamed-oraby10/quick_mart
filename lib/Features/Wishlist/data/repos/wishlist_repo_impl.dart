import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Wishlist/data/data_sources/wishlist_local_data_source.dart';
import 'package:quick_mart/Features/Wishlist/domain/repos/wishlist_repo.dart';

class WishlistRepoImpl implements WishlistRepo {
  final List<CartItemEntity> wishlistItems = [];
  final WishlistLocalDataSource wishlistLocalDataSource;

  WishlistRepoImpl(this.wishlistLocalDataSource);

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
    List<CartItemEntity> wishlistProducts = List.from(wishlistItems);
    wishlistLocalDataSource.cacheWishlistItems(wishlistProducts);
    return wishlistProducts;
  }

  @override
  List<CartItemEntity> getWishlistProducts() {
    return wishlistLocalDataSource.fetchWishlistItems();
  }

  @override
  List<CartItemEntity> removeFromWishlist({required ProductEntity product}) {
    wishlistItems.removeWhere(
      (item) => item.product.productId == product.productId,
    );
    wishlistLocalDataSource.deleteWishlistItem(product: product);
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
