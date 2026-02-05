import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';

class OrderHistoryEntity {
  final String id;
  final bool isFinished;
  final Timestamp time;
  final List<CartItemEntity> products;

  OrderHistoryEntity(this.id, this.isFinished, this.time, this.products);
}
