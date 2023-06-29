import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../screens/HomeScreen.dart';
import '../../screens/SecondScreen.dart';

class AppRoutes {
  static const String home = '/';
  static const String secondScreen = '/second';

  static final List<GetPage> routes = [
    _createPage(home, const HomeScreen()),
    _createPage(secondScreen,const SecondScreen())
  ];

  static GetPage _createPage(
      String name,
      Widget widget,
      {Object? arguments}
  ){
    return GetPage(
        name: name,
        page: () => widget,
        arguments: arguments
    );
  }
}