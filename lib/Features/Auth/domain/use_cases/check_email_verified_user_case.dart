import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Auth/domain/repos/auth_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/no_parameter_use_case.dart';

class CheckEmailVerifiedUseCase extends NoParameterUseCase<bool> {
  final AuthRepo authRepo;
  CheckEmailVerifiedUseCase(this.authRepo);
  @override
  Future<Either<Failure, bool>> call() async {
    return await authRepo.checkEmailVerified();
  }
}
