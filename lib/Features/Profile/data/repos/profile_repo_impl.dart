import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Auth/data/errors/auth_failure.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/Features/Profile/data/data_source/profile_local_data_source.dart';
import 'package:quick_mart/Features/Profile/data/data_source/profile_remote_data_source.dart';
import 'package:quick_mart/Features/Profile/domain/entities/user_entity.dart';
import 'package:quick_mart/Features/Profile/domain/repos/profile_repo.dart';
import 'package:quick_mart/core/errors/failure.dart';

class ProfileRepoImpl extends ProfileRepo {
  final ProfileRemoteDataSource profileRemoteDataSource;
  final ProfileLocalDataSource profileLocalDataSource;

  ProfileRepoImpl(this.profileRemoteDataSource, this.profileLocalDataSource);
  @override
  Future<Either<AuthFailure, UserEntity>> fetchUserData() async {
    try {
      var cachedUser = profileLocalDataSource.fetchUserData();
      if (cachedUser != null) {
        return right(cachedUser);
      }
      var user = await profileRemoteDataSource.fetchUserData();
      return right(user);
    } catch (e) {
      return left(AuthFailure.unKnown());
    }
  }

  @override
  Future<Either<Failure, void>> updatePaymentMethodCustomer({required String method}) {
    // TODO: implement updatePaymentMethodCustomer
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> updateShippingAddressCustomer({required OrderEntity orderEntity}) {
    // TODO: implement updateShippingAddressCustomer
    throw UnimplementedError();
  }
}
