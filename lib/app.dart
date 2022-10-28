import 'package:flutter/material.dart';
import 'package:tgv_mobile/di/dependency_injector.dart';

import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) =>
      DependencyInjector(
          child: MaterialApp(
            title: 'TGV',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const MyHomePage(title: 'Flutter Starter'),
          )
      );
}
