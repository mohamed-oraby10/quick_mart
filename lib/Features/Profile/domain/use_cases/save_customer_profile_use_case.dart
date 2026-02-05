import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Profile/domain/entities/customer_entity.dart';
import 'package:quick_mart/Features/Profile/domain/repos/profile_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/use_case.dart';

class SaveCustomerProfileUseCase extends UseCase<void, CustomerEntity> {
  final ProfileRepo profileRepo;

  SaveCustomerProfileUseCase(this.profileRepo);
  @override
  Future<Either<Failure, void>> call(CustomerEntity customer) async {
    return profileRepo.saveCustomerProfile(customerEntity: customer);
  }
}
