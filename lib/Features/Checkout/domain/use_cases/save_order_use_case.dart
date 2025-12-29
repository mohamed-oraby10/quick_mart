import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/Features/Checkout/domain/repos/checkout_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/use_case.dart';

class SaveOrderUseCase extends UseCase<void, OrderEntity> {
  final CheckoutRepo checkoutRepo;

  SaveOrderUseCase(this.checkoutRepo);
  @override
  Future<Either<Failure, void>> call(OrderEntity order) async {
    return await checkoutRepo.saveOrder(order: order);
  }
}
