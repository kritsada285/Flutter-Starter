import 'package:dartz/dartz.dart';
import 'package:tgv_mobile/models/authen.dart';
import 'package:tgv_mobile/services/responses/error_response.dart';

abstract class AuthenRepository {
  Future<Either<ErrorResponse,Authen>> authentication(String phoneNumber , String password , String googleAuth);
}