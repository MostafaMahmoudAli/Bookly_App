import 'package:dio/dio.dart';

abstract class Failure
{
  final String errMessage;
  Failure(this.errMessage);
}

class ServerFailure extends Failure{
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioError)
  {
    switch(dioError.type)
    {
      case DioErrorType.connectionTimeout:
       return ServerFailure("Connection timeout with ApiServer ");

      case DioErrorType.sendTimeout:
        return ServerFailure("Send timeout with ApiServer ");

      case DioErrorType.receiveTimeout:
        return ServerFailure("Receive timeout with ApiServer ");

      case DioErrorType.badCertificate:
        return ServerFailure("Bad Certificate with ApiServer ");

      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(dioError.response!.statusCode!,dioError.response!.data);

      case DioErrorType.cancel:
        return ServerFailure("request to ApiServer was canceled");

      case DioErrorType.connectionError:
        return ServerFailure("An Connection Error");

      case DioErrorType.unknown:
        return ServerFailure("unknown");

      default:
        return ServerFailure("UnExpected Error");
    }
  }


  factory ServerFailure.fromResponse(int?statusCode, dynamic response)
  {
    if(statusCode == 400 || statusCode ==401 || statusCode==403)
    {
      return ServerFailure(response!["error"]["message"]);
    }else if(statusCode == 404)
    {
      return ServerFailure("Your request not found , Please try again later !");
    }else if (statusCode == 500)
    {
      return ServerFailure("Internet server error , Please try later !");
    }else if (statusCode ==501)
    {
      return ServerFailure("the server does not support the functionality required to fulfill the request");
    }else
    {
      return ServerFailure("Oops there was an error , Please try later!");
    }
  }
}