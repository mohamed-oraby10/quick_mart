import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';

sealed class CartState {}

final class CartInitial extends CartState {}
final class CartLoaded extends CartState {
  List<CartItemEntity> cartItems;
  CartLoaded(this.cartItems);
}