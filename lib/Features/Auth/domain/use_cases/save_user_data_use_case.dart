import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quick_mart/Features/Auth/domain/repos/auth_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/use_case.dart';

class SaveUserDataUseCase extends UseCase<void, UserCredential, void> {
  final AuthRepo authRepo;

  SaveUserDataUseCase(this.authRepo);

  @override
  Future<Either<Failure, void>> call([
    UserCredential? param,
    void secondParam,
  ]) async {
    return await authRepo.saveUserData(user: param!);
  }
}
