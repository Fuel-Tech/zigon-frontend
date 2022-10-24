import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';

// import 'package:zigonflutter/controllers/spalsh_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final SlidesController appController = Get.put(SlidesController());
  @override
  Widget build(BuildContext context) {
    // appController.initializeApp();
    // Future.delayed(const Duration(seconds: 3))
    //     .then((value) => Get.toNamed(PageRouteList.slides));
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
