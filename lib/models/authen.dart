import 'package:equatable/equatable.dart';

class Authen extends Equatable {
  final String accessToken;
  final String? appSite;
  final String? appHost;

  const Authen({
    required this.accessToken,
    this.appSite,
    this.appHost,
  });

  @override
  List<Object?> get props => [appHost];
}
