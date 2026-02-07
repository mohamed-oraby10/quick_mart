import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/Features/Profile/domain/repos/profile_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/use_case.dart';

class UpdateShippingAddressUseCase extends UseCase<void, OrderEntity> {
  final ProfileRepo profileRepo;

  UpdateShippingAddressUseCase(this.profileRepo);
  @override
  Future<Either<Failure, void>> call(OrderEntity order) async {
    return await profileRepo.updateShippingAddressCustomer(orderEntity: order);
  }
}
