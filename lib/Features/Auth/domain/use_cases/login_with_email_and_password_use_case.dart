import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Auth/domain/Entities/user_entity.dart';
import 'package:quick_mart/Features/Auth/domain/repos/auth_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/use_case.dart';

class LoginWithEmailAndPasswordUseCase extends UseCase<void, UserEntity> {
  final AuthRepo authRepo;

  LoginWithEmailAndPasswordUseCase(this.authRepo);

  @override
  Future<Either<Failure, void>> call([UserEntity? user]) async {
    return await authRepo.loginWithEmailAndPassword();
  }
}
