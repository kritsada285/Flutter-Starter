part of 'dependency_injector.dart';

final List<RepositoryProvider> _repositories = [
  RepositoryProvider<AuthenRepository>(
    create: (context) => AuthenRepositoryImpl(
      authenService: context.read(),
      mapper: context.read(),
    ),
  ),
];
