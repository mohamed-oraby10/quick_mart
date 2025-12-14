import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Auth/domain/params/login_params.dart';
import 'package:quick_mart/Features/Auth/domain/repos/auth_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/use_case.dart';

class LoginWithEmailAndPasswordUseCase extends UseCase<void, LoginParams> {
  final AuthRepo authRepo;

  LoginWithEmailAndPasswordUseCase(this.authRepo);

  @override
  Future<Either<Failure, void>> call(LoginParams params) async {
    return await authRepo.loginWithEmailAndPassword(
      email: params.email,
      password: params.password,
    );
  }
}
