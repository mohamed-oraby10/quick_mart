import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

class CartItemEntity {
  final ProductEntity product;
  final int quantity;
  final bool isSelected;

  CartItemEntity({
    this.isSelected = true,
    required this.product,
    required this.quantity,
  });

  CartItemEntity copyWith({int? quantity, bool? isSelected}) {
    return CartItemEntity(
      product: product,
      quantity: quantity ?? this.quantity,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
