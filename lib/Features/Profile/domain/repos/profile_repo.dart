import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Profile/domain/entities/customer_entity.dart';
import 'package:quick_mart/Features/Profile/domain/entities/user_entity.dart';
import 'package:quick_mart/core/errors/failure.dart';

abstract class ProfileRepo {
  Future<Either<Failure, UserEntity>> fetchUserData();
  Future<Either<Failure, void>> saveCustomerProfile({
    required CustomerEntity customerEntity,
  });
}
