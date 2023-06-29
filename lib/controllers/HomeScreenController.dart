import 'package:get/get.dart';

class HomeScreenController extends GetxController{
  final count = 0.obs;

  increment() => {
    count.value++
  };
}