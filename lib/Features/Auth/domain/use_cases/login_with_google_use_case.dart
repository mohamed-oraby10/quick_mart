import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Auth/domain/Repos/auth_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/no_parameter_use_case.dart';

class LoginWithGoogleUseCase extends NoParameterUseCase<void> {
  final AuthRepo authRepo;

  LoginWithGoogleUseCase(this.authRepo);

  @override
  Future<Either<Failure, void>> call() async {
    return await authRepo.loginWithGoogle();
  }
}
