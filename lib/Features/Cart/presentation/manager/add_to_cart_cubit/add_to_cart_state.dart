part of 'add_to_cart_cubit.dart';

@immutable
sealed class AddToCartState {}

final class AddToCartInitial extends AddToCartState {}
final class AddToCartSuccess extends AddToCartState {
  final List<ProductEntity> cartProducts;
  AddToCartSuccess({required this.cartProducts});
}
