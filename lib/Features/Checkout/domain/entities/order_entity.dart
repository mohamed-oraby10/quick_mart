import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';

class OrderEntity {
  final String fullName;
  final String phoneNum;
  final String customerAddress;
  final String countryName;
  final String provinceName;
  final String city;
  final List<CartItemEntity> productsList;

  OrderEntity({
    required this.fullName,
    required this.phoneNum,
    required this.customerAddress,
    required this.countryName,
    required this.provinceName,
    required this.city,
    required this.productsList,
  });
}
