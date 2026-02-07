import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quick_mart/Features/Auth/data/models/user_model.dart';
import 'package:quick_mart/Features/Checkout/data/models/order_model.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/core/utils/constants.dart';
import 'package:quick_mart/core/utils/functions/save_local_user_data.dart';

abstract class ProfileRemoteDataSource {
  Future<UserModel> fetchUserData();
  Future<void> updateShippingAddressCustomer({required OrderEntity order});
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  var customerCollection = FirebaseFirestore.instance.collection(
    kCustomersCollection,
  );
  String get currentUserId => FirebaseAuth.instance.currentUser!.uid;

  @override
  Future<UserModel> fetchUserData() async {
    var userCollection = await FirebaseFirestore.instance
        .collection(kUsersCollection)
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    var userData = userCollection.data();
    var userModel = UserModel(
      name: userData?['name'] ?? '',
      email: userData?['email'] ?? '',
      id: userData?['id'] ?? '',
      imageUrl: userData?['image'] ?? '',
    );
    saveLocalUserData(userModel);
    return userModel;
  }

  @override
  Future<void> updateShippingAddressCustomer({
    required OrderEntity order,
  }) async {
    final orderId = FirebaseFirestore.instance
        .collection(kOrdersCollection)
        .doc()
        .id;
    final orderModel = OrderModel(
      userId: currentUserId,
      customerFullName: order.fullName,
      phoneNumber: order.phoneNum,
      streetAddress: order.customerAddress,
      country: order.countryName,
      province: order.provinceName,
      cityName: order.city,
      products: [],
      orderId: orderId,
    ).toJson();
    await customerCollection
        .doc(currentUserId)
        .set(orderModel, SetOptions(merge: true));
  }
}
