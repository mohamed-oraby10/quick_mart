abstract class WishlistRepo {
  List<int> addToWishlist({required int productId});
  List<int> removeFromWishlist({required int productId});
  List<int> getWishlistProducts();
}