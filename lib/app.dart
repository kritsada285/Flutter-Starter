import 'package:flutter/material.dart';
import 'package:tgv_mobile/constants/app_theme.dart';
import 'package:tgv_mobile/di/dependency_injector.dart';
import 'utils/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) =>
      DependencyInjector(
          child: MaterialApp(
            title: 'TGV',
            theme: AppTheme.lightThemeData,
            routes: Routes.routes
          )
      );
}
