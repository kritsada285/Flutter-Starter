// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authen_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenRequest _$AuthenRequestFromJson(Map<String, dynamic> json) =>
    AuthenRequest(
      json['strategy'] as String,
      json['phoneNumber'] as String?,
      json['password'] as String?,
      google: (json['google'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {'verifyCode': ''},
    );

Map<String, dynamic> _$AuthenRequestToJson(AuthenRequest instance) =>
    <String, dynamic>{
      'strategy': instance.strategy,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'google': instance.google,
    };
