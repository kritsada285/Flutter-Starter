import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:tgv_mobile/services/requests/authen_request.dart';
import 'package:tgv_mobile/services/responses/authen_dto.dart';

part 'authen_service.g.dart';

@RestApi()
abstract class AuthenService {
  factory AuthenService(Dio dio, {String? baseUrl}) =>
      _AuthenService(dio, baseUrl: baseUrl);

  @POST('authentication')
  Future<AuthenDTO> authentication(@Body() AuthenRequest authenRequest);
}
