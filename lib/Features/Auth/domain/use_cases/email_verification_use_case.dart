import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Auth/domain/repos/auth_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/no_parameter_use_case.dart';

class EmailVerificationUseCase extends NoParameterUseCase<void> {
  final AuthRepo authRepo;

  EmailVerificationUseCase(this.authRepo);

  @override
  Future<Either<Failure, void>> call() async {
    return await authRepo.emailVerification();
  }
}
