import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Auth/domain/Repos/auth_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/use_case.dart';

class LoginWithGoogleUseCase extends UseCase<void, NoParam> {
  final AuthRepo authRepo;

  LoginWithGoogleUseCase(this.authRepo);

  @override
  Future<Either<Failure, void>> call([NoParam? param]) async {
    return await authRepo.loginWithGoogle();
  }
}
