import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../screens/HomeScreen.dart';
import '../../screens/SecondScreen.dart';

class AppRoutes {
  static const String home = '/';
  static const String secondScreen = '/second';

  static final List<GetPage> routes = [
    GetPage(
      name: home,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: secondScreen,
      page: () => const SecondScreen(),
    ),
  ];
}