part of 'dependency_injector.dart';


final List<SingleChildWidget> _providers = [
  Provider<Dio>(
    create: (_) => Dio(),
  ),
  Provider<AuthenService>(
    create: (context) => AuthenService(
      context.read(),
      baseUrl: 'https://demobet360.asia/',
    ),
  ),
];
