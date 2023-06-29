import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/MainAppBar.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        title: "Second Screen",
      ),
      body: Center(
        child:ElevatedButton(
            onPressed: ()=> {
              Get.back()
            },
            child: const Text(
               "Go Back"
            )
        ),
      ),
    );
  }
}
