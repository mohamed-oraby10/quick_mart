import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

class CartItemEntity {
  final ProductEntity product;
  final int quantity;

  CartItemEntity({
    required this.product,
    required this.quantity,
  });

  CartItemEntity copyWith({
    int? quantity,
  }) {
    return CartItemEntity(
      product: product,
      quantity: quantity ?? this.quantity,
    );
  }
}
