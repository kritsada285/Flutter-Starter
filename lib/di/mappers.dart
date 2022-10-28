part of 'dependency_injector.dart';


final List<SingleChildWidget> _mappers = [
  Provider<DTOMapper<AuthenDTO, Authen>>(
    create: (_) => AuthenMapper(),
  ),
];
