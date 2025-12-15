import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Auth/domain/params/register_params.dart';
import 'package:quick_mart/Features/Auth/domain/repos/auth_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/use_case.dart';

class SignupWithEmailAndPasswordUseCase extends UseCase<void, RegisterParams> {
  final AuthRepo authRepo;

  SignupWithEmailAndPasswordUseCase(this.authRepo);

  @override
  Future<Either<Failure, void>> call(RegisterParams params) async {
    return await authRepo.signupWithEmailAndPassword(
      email: params.email,
      password: params.password,
      name: params.name,
      imageUrl: params.imageUrl,
    );
  }
}
