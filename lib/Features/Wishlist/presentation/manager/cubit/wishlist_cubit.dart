import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Wishlist/domain/repos/wishlist_repo.dart';

part 'wishlist_state.dart';

class WishlistCubit extends Cubit<WishlistState> {
  WishlistCubit(this.wishlistRepo) : super(WishlistInitial());
  final WishlistRepo wishlistRepo;

  void loadWishlist() {
    emit(WishlistLoaded(wishlistRepo.getWishlistProducts()));
  }

  void addToWishlist({required ProductEntity product}) {
    var result = wishlistRepo.addToWishlist(
      productId: product.productId,
      product: product,
    );
    emit(WishlistLoaded(result));
  }

  void remove(ProductEntity product) {
    final products = wishlistRepo.removeFromWishlist(product: product);
    emit(WishlistLoaded(products));
  }

  void toggleItem(ProductEntity product) {
    wishlistRepo.toggleSelection(product: product);
    emit(WishlistLoaded(wishlistRepo.getWishlistProducts()));
  }
}
