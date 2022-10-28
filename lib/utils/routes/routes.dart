import 'package:flutter/material.dart';
import 'package:tgv_mobile/pages/home_page.dart';
import 'package:tgv_mobile/pages/profile_page.dart';

class Routes {
  Routes._();

  //static variables
  static const String profile = '/profile';
  static const String home = '/';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const MyHomePage(title: 'Flutter Starter'),
    profile: (BuildContext context) => const ProfilePage(title: 'Profile Page'),
  };
}
