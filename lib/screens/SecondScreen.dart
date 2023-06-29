import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/MainAppBar.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // In the details route
    final args = Get.arguments;
    final count = args['count'];

    return Scaffold(
        appBar: const MainAppBar(
          title: "Second Screen",
        ),
        body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '$count',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: ()=> {
                        Get.back()
                      },
                      child: const Text(
                          "Go Back"
                      )
                  )
                ]
            ),
        )
    );
  }
}
