import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Wishlist/data/data_sources/wishlist_local_data_source.dart';
import 'package:quick_mart/Features/Wishlist/domain/repos/wishlist_repo.dart';

class WishlistRepoImpl implements WishlistRepo {
  final WishlistLocalDataSource wishlistLocalDataSource;

  WishlistRepoImpl(this.wishlistLocalDataSource);

  @override
  List<CartItemEntity> addToWishlist({
    required ProductEntity product,
  }) {
    wishlistLocalDataSource.cacheWishlistItems(product);
    return wishlistLocalDataSource.fetchWishlistItems();
  }

  @override
  List<CartItemEntity> getWishlistProducts() {
    return wishlistLocalDataSource.fetchWishlistItems();
  }

  @override
  List<CartItemEntity> removeFromWishlist({required ProductEntity product}) {
    wishlistLocalDataSource.deleteWishlistItem(product: product);
    return wishlistLocalDataSource.fetchWishlistItems();
  }

  @override
  void toggleSelection({required ProductEntity product}) {
    if (wishlistLocalDataSource.contains(product.productId)) {
      wishlistLocalDataSource.deleteWishlistItem(product: product);
    } else {
      wishlistLocalDataSource.cacheWishlistItems(product);
    }
  }
}
