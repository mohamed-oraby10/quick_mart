import 'package:quick_mart/Features/Checkout/data/models/order_model.dart';
import 'package:quick_mart/Features/Profile/data/models/order_history_model.dart';
import 'package:quick_mart/Features/Profile/domain/entities/customer_entity.dart';

class CustomerModel extends CustomerEntity {
  final String id;
  final OrderModel? orderModel;
  final String? paymentWay;
  final List<OrderHistoryModel>? ordersHistory;

  CustomerModel({
    required this.id,
    this.orderModel,
    this.paymentWay,
    this.ordersHistory,
  }) : super(
         userId: id,
         orderEntity: orderModel,
         paymentMethod: paymentWay,
         orderHistory: ordersHistory,
       );

  factory CustomerModel.fromJson(Map<String, dynamic> json, String docId) {
    return CustomerModel(
      id: docId,
      orderModel: json['order'] != null
          ? OrderModel.fromJson(json['order'])
          : null,
      paymentWay: json['paymentWay'] as String?,
      ordersHistory: json['ordersHistory'] != null
          ? (json['ordersHistory'] as List)
                .map((e) => OrderHistoryModel.fromJson(e, e['id']))
                .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'order': orderEntity != null
          ? (orderEntity as OrderModel).toJson()
          : null,
      'paymentWay': paymentMethod,
      'ordersHistory': orderHistory
          ?.map((e) => (e as OrderHistoryModel).toJson())
          .toList(),
    };
  }
}
