import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  Failures(this.errMessage);
}

class ServerFailures extends Failures {
  ServerFailures(super.errMessage);

  factory ServerFailures.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailures('connection Timeout with api server');
      case DioExceptionType.sendTimeout:
        return ServerFailures('send Timeout with api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailures('receive Timeout with api server');
      case DioExceptionType.badCertificate:
        return ServerFailures('bad Certificate with api server');
      case DioExceptionType.badResponse:
        return ServerFailures('bad Response with api server');
      case DioExceptionType.cancel:
        return ServerFailures('request to api was canceled');
      case DioExceptionType.connectionError:
        return ServerFailures('no internet connection');
      case DioExceptionType.unknown:
        return ServerFailures('unexpected error, please try again');
      default:
        return ServerFailures('unexpected error, please try again');
    }
  }

  factory ServerFailures.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailures(response['errors']['message']);
    } else if (statusCode == 404) {
      return ServerFailures('your request not found');
    } else if (statusCode == 500) {
      return ServerFailures('internal server error, please try again');
    } else {
      return ServerFailures('unexpected error, please try again');
    }
  }
}
