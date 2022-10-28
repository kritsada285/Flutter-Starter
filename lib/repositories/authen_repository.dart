import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pine/pine.dart';
import 'package:tgv_mobile/models/authen.dart';
import 'package:tgv_mobile/repositories/authen_repository_type.dart';
import 'package:tgv_mobile/services/authen_service.dart';
import 'package:tgv_mobile/services/requests/authen_request.dart';
import 'package:tgv_mobile/services/responses/authen_dto.dart';
import 'package:tgv_mobile/services/responses/error_response.dart';

class AuthenRepositoryImpl extends AuthenRepository {
  final AuthenService authenService;
  final DTOMapper<AuthenDTO, Authen> mapper;

  AuthenRepositoryImpl({required this.authenService, required this.mapper});

  @override
  Future<Either<ErrorResponse, Authen>> authentication(
      String phoneNumber, String password, String googleAuth) async {
    try {
      AuthenRequest authenRequest =
          AuthenRequest('local', phoneNumber, password);

      final response = await authenService.authentication(authenRequest);

      return Right(mapper.fromDTO(response));
    } catch (error) {
      final DioError errorResponse = error as DioError;

      if (errorResponse.response?.data != null) {
        return Left(ErrorResponse(
            name: errorResponse.response?.data['name'],
            message: errorResponse.response?.data['message'],
            code: errorResponse.response?.data['code'],
            className: errorResponse.response?.data['className']));
      } else {
        return Left(ErrorResponse(
            name: errorResponse.message,
            message: errorResponse.message,
            code: errorResponse.response?.statusCode ?? 0,
            className: ""));
      }
    }
  }
// return
}
