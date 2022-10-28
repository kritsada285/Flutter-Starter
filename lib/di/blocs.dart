part of 'dependency_injector.dart';

final List<BlocProvider> _blocs = [
  BlocProvider<AuthenBloc>(
    create: (context) => AuthenBloc(
      authenRepository: context.read(),
    )
  ),
];
