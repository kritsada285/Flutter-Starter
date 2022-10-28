import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pine/pine.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:tgv_mobile/blocs/authen/authen_bloc.dart';
import 'package:tgv_mobile/models/authen.dart';
import 'package:tgv_mobile/repositories/authen_repository.dart';
import 'package:tgv_mobile/repositories/authen_repository_type.dart';
import 'package:tgv_mobile/repositories/mappers/authen_mapper.dart';
import 'package:tgv_mobile/services/authen_service.dart';
import 'package:tgv_mobile/services/responses/authen_dto.dart';

part 'providers.dart';
part 'mappers.dart';
part 'repositories.dart';
part 'blocs.dart';

class DependencyInjector extends StatelessWidget {
  final Widget child;

  const DependencyInjector({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => DependencyInjectorHelper(
    blocs: _blocs,
    providers: _providers,
    repositories: _repositories,
    mappers: _mappers,
    child: child,
  );
}
