import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quick_mart/Features/Checkout/data/models/order_model.dart';
import 'package:quick_mart/core/utils/constants.dart';

abstract class CheckoutRemoteDataSource {
  Future<void> saveOrder({required OrderModel order});
}

class CheckoutRemoteDataSourceImpl implements CheckoutRemoteDataSource {
  @override
  Future<void> saveOrder({required OrderModel order}) async {
    final orders = FirebaseFirestore.instance.collection(kOrdersCollection);
    await orders.doc(order.orderId).set(order.toJson());
  }
}
