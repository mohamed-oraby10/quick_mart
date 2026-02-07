import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/Features/Profile/domain/entities/order_history_entity.dart';

class CustomerEntity {
  final String? userId;
  final OrderEntity? orderEntity;
  final String? paymentMethod;
  final List<OrderHistoryEntity>? orderHistory;

  CustomerEntity({
     this.userId,
    this.orderEntity,
    this.paymentMethod,
    this.orderHistory,
  });
}
