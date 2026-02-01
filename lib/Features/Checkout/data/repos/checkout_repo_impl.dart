import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quick_mart/Features/Auth/data/errors/auth_failure.dart';
import 'package:quick_mart/Features/Checkout/data/data_source/checkout_remote_data_source.dart';
import 'package:quick_mart/Features/Checkout/data/models/order_model.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/Features/Checkout/domain/repos/checkout_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/utils/constants.dart';

class CheckoutRepoImpl implements CheckoutRepo {
  final CheckoutRemoteDataSource checkoutRemoteDataSource;

  CheckoutRepoImpl(this.checkoutRemoteDataSource);
  @override
  Future<Either<Failure, void>> saveOrder({required OrderEntity order}) async {
    try {
      final currentUserId = FirebaseAuth.instance.currentUser!.uid;
      final orderId = FirebaseFirestore.instance
          .collection(kOrdersCollection)
          .doc()
          .id;
      final selectedProducts = order.productsList
          .where((item) => item.isSelected)
          .toList();

      final orderModel = OrderModel(
        orderId: orderId,
        userId: currentUserId,
        customerFullName: order.fullName,
        phoneNumber: order.phoneNum,
        streetAddress: order.customerAddress,
        country: order.countryName,
        province: order.provinceName,
        cityName: order.city,
        products: selectedProducts,
      );
      await checkoutRemoteDataSource.saveOrder(order: orderModel);
      return right(null);
    } catch (e) {
      return left(AuthFailure.unKnown());
    }
  }
}
