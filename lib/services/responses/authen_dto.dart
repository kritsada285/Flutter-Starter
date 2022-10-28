import 'package:equatable/equatable.dart';
import 'package:pine/dto/dto.dart';

class AuthenDTO extends DTO with EquatableMixin {

  final String accessToken;
  final String? appSite;
  final String? appHost;

  AuthenDTO({
    required this.accessToken,
    this.appSite,
    this.appHost,
  });

  factory AuthenDTO.fromJson(Map<String, dynamic> json) => AuthenDTO(
    accessToken: json['accessToken'],
    appSite: json['app_site'],
    appHost: json['app_host'],
  );

  @override
  List<Object?> get props => [appHost];


}