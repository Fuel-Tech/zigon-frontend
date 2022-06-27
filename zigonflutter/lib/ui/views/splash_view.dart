import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zigonflutter/controllers/spalsh_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final SplashController appController = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logo.png'),
          const CircularProgressIndicator(
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}
