import 'package:dartz/dartz.dart';
import 'package:quick_mart/core/errors/failure.dart';

abstract class UseCase<Type, Param, SecondParam> {
  Future<Either<Failure, Type>> call(
    [ Param param,
     SecondParam secondParam,]
  );
}
