import 'package:dartz/dartz.dart';
import 'package:quick_mart/core/errors/failure.dart';

abstract class NoParameterUseCase<Type> {
  Future<Either<Failure, Type>> call();
}
