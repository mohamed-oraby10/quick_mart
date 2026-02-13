import 'package:dartz/dartz.dart';
import 'package:quick_mart/Features/Checkout/domain/entities/order_entity.dart';
import 'package:quick_mart/Features/Profile/domain/entities/order_history_entity.dart';
import 'package:quick_mart/Features/Profile/domain/entities/user_entity.dart';
import 'package:quick_mart/core/errors/failure.dart';

abstract class ProfileRepo {
  Future<Either<Failure, UserEntity>> fetchUserData();
  Future<Either<Failure, void>> updateShippingAddressCustomer({
    required OrderEntity orderEntity
  });
  Future<Either<Failure, List<OrderHistoryEntity>>> fetchOngoingOrders();
}
