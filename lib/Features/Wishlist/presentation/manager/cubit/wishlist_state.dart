part of 'wishlist_cubit.dart';

@immutable
sealed class WishlistState {}

final class WishlistInitial extends WishlistState {}

final class WishlistLoaded extends WishlistState {
  final List<CartItemEntity> cartItems;
  WishlistLoaded(this.cartItems);
}
