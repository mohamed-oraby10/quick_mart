import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/Features/Profile/domain/repos/profile_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/no_parameter_use_case.dart';

class FetchOngoingOrdersUseCase extends NoParameterUseCase<List<OrderEntity>> {
  final ProfileRepo profileRepo;

  FetchOngoingOrdersUseCase(this.profileRepo);
  @override
  Future<Either<Failure, List<OrderEntity>>> call() async {
    return await profileRepo.fetchOngoingOrders();
  }
}
