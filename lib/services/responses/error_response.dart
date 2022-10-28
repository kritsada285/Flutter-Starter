import 'package:pine/pine.dart';

class ErrorResponse extends DTO {
  final String name;
  final String message;
  final int code;
  final String className;

  ErrorResponse(
      {required this.name,
      required this.message,
      required this.code,
      required this.className});

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => ErrorResponse(
      name: json['name'],
      message: json['message'],
      code: json['code'],
      className: json['className']);
}
