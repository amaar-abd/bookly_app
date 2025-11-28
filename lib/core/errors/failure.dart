import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessege;
  Failure(this.errorMessege);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessege);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection timeout wuth Apiserver');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout wuth Apiserver');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout wuth Apiserver');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad SSL Certificate, please try again later');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Request was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure(
          'No Internet Connection, please check your network',
        );
      case DioExceptionType.unknown:
        return ServerFailure(
          'No Internet Connection, please check your network',
        );
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      if (response is Map && response['error'] is Map) {
        return ServerFailure(response['error']['message'].toString());
      }
      // return ServerFailure(response.toString());
      return ServerFailure('Error $statusCode: ${response.toString()}');

    } else if (statusCode == 404) {
      return ServerFailure('method not found ');
    } else if (statusCode == 500) {
      return ServerFailure('internal  server error');
    } else {
      return ServerFailure('there was an error');
    }
  }
}
