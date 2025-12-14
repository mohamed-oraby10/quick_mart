import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Profile/domain/entities/user_entity.dart';
import 'package:quick_mart/Features/Profile/domain/repos/profile_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/use_case.dart';

class FetchUserDataUseCase extends UseCase<UserEntity, void> {
  final ProfileRepo profileRepo;

  FetchUserDataUseCase(this.profileRepo);
  @override
  Future<Either<Failure, UserEntity>> call(void params) async {
    return await profileRepo.fetchUserData();
  }
}
