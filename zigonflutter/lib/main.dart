// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';

import 'ui/views/camera_view.dart';
import 'ui/views/profile_view.dart';
import 'ui/views/slides_view.dart';
import 'ui/views/splash_view.dart';
import 'ui/views/user_profile_view.dart';
import 'utility/navigation_utility.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  Get.lazyPut(() => SlidesController(), fenix: true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SlidesController>(builder: (_) {
      return GetMaterialApp(
        title: 'Flutter Demo',
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData.dark(),
        // defaultTransition: Transition.rightToLeftWithFade,
        getPages: [
          GetPage(name: PageRouteList.splash, page: () => SplashScreen()),
          GetPage(name: PageRouteList.slides, page: () => SlidesPage()),
          GetPage(
              name: PageRouteList.userProfile, page: () => UserProfileView()),
          GetPage(name: PageRouteList.profile, page: () => ProfileView()),
          GetPage(name: PageRouteList.camera, page: () => CameraView())
        ],
      );
    });
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}









//flutter version 2.8.0