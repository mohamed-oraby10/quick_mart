import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quick_mart/Features/Cart/data/models/cart_item_model.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';

class OrderModel extends OrderEntity {
  final String orderId;
  final String userId;
  final String customerFullName;
  final String phoneNumber;
  final String streetAddress;
  final String country;
  final String province;
  final String cityName;
  final List<CartItemEntity> products;
  final Timestamp time;

  OrderModel({
    required this.time,
    required this.userId,
    required this.orderId,
    required this.customerFullName,
    required this.phoneNumber,
    required this.streetAddress,
    required this.country,
    required this.province,
    required this.cityName,
    required this.products,
  }) : super(
         fullName: customerFullName,
         phoneNum: phoneNumber,
         customerAddress: streetAddress,
         countryName: country,
         provinceName: province,
         city: cityName,
         productsList: products,
         timeStamp: time,
       );
  factory OrderModel.fromJson(Map<String, dynamic> data) {
    return OrderModel(
      time: data['time'] as Timestamp? ?? Timestamp.now(),
      orderId: data['orderId'] ?? '',
      userId: data['userId'] ?? '',
      customerFullName: data['customerFullName'] ?? '',
      phoneNumber: data['phoneNumber'] ?? '',
      streetAddress: data['streetAddress'] ?? '',
      country: data['country'] ?? '',
      province: data['province'] ?? '',
      cityName: data['cityName'] ?? '',
      products: (data['products'] as List? ?? [])
          .map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'time': FieldValue.serverTimestamp(),
      'orderId': orderId,
      'userId': userId,
      'customerFullName': customerFullName,
      'phoneNumber': phoneNumber,
      'streetAddress': streetAddress,
      'country': country,
      'province': province,
      'cityName': cityName,
      'products': products.map((e) => e.toJson()).toList(),
    };
  }
}
