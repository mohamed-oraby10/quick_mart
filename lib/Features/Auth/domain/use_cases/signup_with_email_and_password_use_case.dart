import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Auth/domain/entities/user_entity.dart';
import 'package:quick_mart/Features/Auth/domain/repos/auth_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';
import 'package:quick_mart/core/use_cases/use_case.dart';

class SignupWithEmailAndPasswordUseCase extends UseCase<void, UserEntity,String> {
  final AuthRepo authRepo;

  SignupWithEmailAndPasswordUseCase(this.authRepo);
  
  @override
  Future<Either<Failure, void>> call([UserEntity? param, String? secondParam]) async {
    return await authRepo.signupWithEmailAndPassword(
      userEntity: param!,
      password: secondParam!,
    );
  }

}
