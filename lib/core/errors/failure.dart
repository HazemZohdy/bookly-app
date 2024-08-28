import 'package:dio/dio.dart';

abstract class Failure {
  final String erorrMessage;

  const Failure(this.erorrMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.erorrMessage);

  factory ServerFailure.fromDioErorr(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection TimeOut with api Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send TimeOut with api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recived TimeOut with api Server');
      case DioExceptionType.badCertificate:
        return ServerFailure('there bad Certifacate ');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('there is cancel erorr ');
      case DioExceptionType.connectionError:
        return ServerFailure('there is connectionError  ');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('NO INterner connection');
        }
        return ServerFailure('UnException error, please try later!');
      default:
        return ServerFailure('there was an error, please try again');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found,check it now');
    } else if (statusCode == 500) {
      return ServerFailure('error 500 server error, please try again');
    } else {
      return ServerFailure('there was an error, Please try agin');
    }
  }
}
