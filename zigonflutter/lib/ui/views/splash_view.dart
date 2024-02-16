import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zigonflutter/controllers/slide_screen_controller.dart';
import 'package:zigonflutter/controllers/splash_screen_controller.dart';
import 'package:zigonflutter/utility/app_utility.dart';
import 'package:zigonflutter/utility/navigation_utility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

// import 'package:zigonflutter/controllers/spalsh_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final SplashScreenController splashScreenController =
      Get.put(SplashScreenController());

  Future<void> splashCheck() async {
    //Check User Logged In
    await splashScreenController.initilizeapp();
    Get.find<SlideScreenController>()
        .setVideoData(splashScreenController.slideListModel);
    log("DOWNLOADED DATA");
    Get.offNamed(PageRouteList.bottomBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FutureBuilder(
          future: splashCheck(),
          builder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo.png'),
                SpinKitCircle(
                  color: AppUtil.secondary,
                )
              ],
            );
          }),
    );
  }
}
