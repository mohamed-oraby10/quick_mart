import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';

abstract class CheckoutRemoteDataSource {
  Future<void> saveOrder({required OrderEntity order});
}

class CheckoutRemoteDataSourceImpl implements CheckoutRemoteDataSource{
  @override
  Future<void> saveOrder({required OrderEntity order}) {
    // TODO: implement saveOrder
    throw UnimplementedError();
  }
}