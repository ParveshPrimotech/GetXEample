import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/HomeScreenController.dart';
import '../utils/routes/AppRoutes.dart';
import '../widgets/MainAppBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(HomeScreenController());

    return Scaffold(
        appBar: const MainAppBar(
          title: "Home Page",
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                  () => Text(
                      '${controller.count.value}',
                      style: Theme.of(context).textTheme.headlineLarge,
                  ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(onPressed: ()=> {
                  Get.toNamed(
                      AppRoutes.secondScreen,
                    arguments: {
                        "count": '${controller.count.value}'
                    }
                  )
                },
                child: const Text(
                  "Open Second Screen"
                )
              ),
            ],
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