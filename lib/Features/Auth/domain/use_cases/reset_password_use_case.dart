import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Auth/domain/repos/auth_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/use_case.dart';

class ResetPasswordUseCase extends UseCase<void, String> {
  final AuthRepo authRepo;

  ResetPasswordUseCase(this.authRepo);

  @override
  Future<Either<Failure, void>> call(String email) async {
    return await authRepo.resetPassword(email: email);
  }
}
