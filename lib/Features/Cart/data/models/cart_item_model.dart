import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Home/data/models/product_model.dart';

class CartItemModel extends CartItemEntity {
  CartItemModel({required super.product, required super.quantity});

  factory CartItemModel.fromJson(Map<String, dynamic> json) {
    return CartItemModel(
      quantity: json['quantity'] ?? 0,
      product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
    );
  }
  @override
  Map<String, dynamic> toJson() {
    return {
      'quantity': quantity,
      'product': (product as ProductModel).toJson(),
    };
  }
}
