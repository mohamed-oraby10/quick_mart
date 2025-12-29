import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/core/errors/failure.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> saveOrder({required OrderEntity order});
}
