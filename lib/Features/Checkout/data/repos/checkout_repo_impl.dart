import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/Features/Checkout/domain/repos/checkout_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';

class CheckoutRepoImpl implements CheckoutRepo{
  @override
  Future<Either<Failure, void>> saveOrder({required OrderEntity order}) {
    // TODO: implement saveOrder
    throw UnimplementedError();
  }
}