import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/HomeScreenController.dart';
import '../widgets/MainAppBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(HomeScreenController());

    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 50),
            child: MainAppBar(
              title: "Home Page",
            )),
        body: Center(
          child : Obx(
              () => Text(
                '${controller.count.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
          onPressed: controller.increment,
          child : const Icon(
             Icons.add,
          ),
      ),
    );
  }
}