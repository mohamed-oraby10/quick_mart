import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Profile/domain/entities/order_history_entity.dart';

class OrderHistoryModel extends OrderHistoryEntity {
  OrderHistoryModel({
    required String id,
    required bool isFinished,
    required Timestamp time,
    required List<CartItemEntity> products,
  }) : super(id, isFinished, time, products);

  factory OrderHistoryModel.fromJson(Map<String, dynamic> json, String docId) {
    return OrderHistoryModel(
      id: docId,
      isFinished: json['isFinished'] as bool,
      time: json['time'] as Timestamp,
      products: json['products'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'isFinished': isFinished, 'time': time, 'products': products};
  }
}
