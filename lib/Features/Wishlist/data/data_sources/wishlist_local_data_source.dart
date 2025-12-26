import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';

abstract class WishlistLocalDataSource {
  void cacheWishlistItems(List<CartItemEntity> items);
  void deleteWishlistItem();
}


class WishlistLocalDataSourceImpl extends WishlistLocalDataSource{
  @override
  void cacheWishlistItems(List<CartItemEntity> items) {
    // TODO: implement cacheWishlistItems
  }

  @override
  void deleteWishlistItem() {
    // TODO: implement deleteWishlistItem
  }
}