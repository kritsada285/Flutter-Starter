import 'package:tgv_mobile/models/authen.dart';
import 'package:tgv_mobile/services/responses/authen_dto.dart';
import 'package:pine/pine.dart';

class AuthenMapper extends DTOMapper<AuthenDTO, Authen> {
  @override
  Authen fromDTO(AuthenDTO dto) => Authen(
      accessToken: dto.accessToken, appSite: dto.appSite, appHost: dto.appHost);

  @override
  AuthenDTO toDTO(Authen model) => AuthenDTO(
      accessToken: model.accessToken,
      appSite: model.appSite,
      appHost: model.appHost);
}
