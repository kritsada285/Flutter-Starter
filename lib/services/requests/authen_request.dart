import 'package:json_annotation/json_annotation.dart';

part 'authen_request.g.dart';

@JsonSerializable()
class AuthenRequest {
  AuthenRequest(this.strategy, this.phoneNumber, this.password,
      {this.google = const {'verifyCode': ''}});

  String strategy;
  String? phoneNumber;
  String? password;
  Map<String, String>? google;

  void _setGoogleAuth(String google2FA) {
    Map<String, String> google = {};
    google['verifyCode'] = google2FA;
  }

  factory AuthenRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthenRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenRequestToJson(this);
}
