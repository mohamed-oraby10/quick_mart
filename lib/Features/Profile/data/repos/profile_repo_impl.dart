import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Auth/data/errors/auth_failure.dart';
import 'package:quick_mart/Features/Profile/data/data_source/profile_remote_data_source.dart';
import 'package:quick_mart/Features/Profile/domain/entities/user_entity.dart';
import 'package:quick_mart/Features/Profile/domain/repos/profile_repo.dart';

class ProfileRepoImpl extends ProfileRepo {
  final ProfileRemoteDataSource profileRemoteDataSource;

  ProfileRepoImpl(this.profileRemoteDataSource);
  @override
  Future<Either<AuthFailure, UserEntity>> fetchUserData() async {
    try {
      return right(await profileRemoteDataSource.fetchUserData());
    } catch (e) {
      return left(AuthFailure.unKnown());
    }
  }
}
