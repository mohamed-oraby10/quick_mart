import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';

class OrderEntity {
  final String fullName;
  final String phoneNum;
  final String customerAddress;
  final String countryName;
  final String provinceName;
  final String city;
  final Timestamp? timeStamp;
  final List<CartItemEntity> productsList;

  OrderEntity({
     this.timeStamp,
    required this.fullName,
    required this.phoneNum,
    required this.customerAddress,
    required this.countryName,
    required this.provinceName,
    required this.city,
    required this.productsList,
  });
}
