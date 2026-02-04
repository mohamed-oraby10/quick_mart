import 'package:hive/hive.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
part 'cart_item_entity.g.dart';

@HiveType(typeId: 20)
class CartItemEntity {
  @HiveField(0)
  final ProductEntity product;
  @HiveField(1)
  final int quantity;
  @HiveField(2)
  final bool isSelected;
  @HiveField(3)
  final String? userId;
  CartItemEntity({
    this.isSelected = true,
    required this.product,
    required this.quantity,
    this.userId,
  });

  CartItemEntity copyWith({int? quantity, bool? isSelected}) {
    return CartItemEntity(
      product: product,
      quantity: quantity ?? this.quantity,
      isSelected: isSelected ?? this.isSelected,
      userId: userId,
    );
  }

  Map<String, dynamic> toJson() {
    return {'product': product.toJson(), 'quantity': quantity};
  }
}
