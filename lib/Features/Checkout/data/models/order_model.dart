import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

class OrderModel extends OrderEntity {
  final String orderId;
  final String userId;
  final String customerFullName;
  final String phoneNumber;
  final String streetAddress;
  final String country;
  final String province;
  final String cityName;
  final List<ProductEntity> products;

  OrderModel({
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
       );

  factory OrderModel.fromjson(Map<String, dynamic> data) {
    return OrderModel(
      orderId: data['id'],
      customerFullName: data['customerFullName'],
      phoneNumber: data['phoneNumber'],
      streetAddress: data['streetAddress'],
      country: data['country'],
      province: data['province'],
      cityName: data['cityName'],
      products: data['products'],
      userId: data['userId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': orderId,
      'customerFullName': fullName,
      'phoneNumber': phoneNumber,
      'streetAddress': streetAddress,
      'country': country,
      'province': province,
      'cityName': cityName,
      'products': products,
      'userId': userId,
    };
  }
}
