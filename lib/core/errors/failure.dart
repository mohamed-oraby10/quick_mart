import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection timeout with Api server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send timeout with Api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive timeout with Api server');
      case DioExceptionType.badCertificate:
        return ServerFailure('bad Certificate timeout with Api server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          e.response!.statusCode!,
          e.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('cancel timeout with Api server');
      case DioExceptionType.connectionError:
        return ServerFailure('connection Error with Api server');
      case DioExceptionType.unknown:
        return ServerFailure('there is unknown error, please try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCose, dynamic response) {
    if (statusCose == 404) {
      return ServerFailure('Your request was not found, please try later');
    } else if (statusCose == 500) {
      return ServerFailure('There is a problem with server, please try later');
    } else if (statusCose == 400 || statusCose == 401 || statusCose == 403) {
      return ServerFailure(response['error']['message']);
    } else {
      return ServerFailure('There is an error, please try again');
    }
  }
}
