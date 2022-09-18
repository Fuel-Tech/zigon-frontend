// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zigonflutter/controllers/app_controller.dart';
import 'package:zigonflutter/controllers/cameratestpage.dart';
import 'package:zigonflutter/controllers/slidetestpage.dart';

import 'ui/views/profile_view.dart';
import 'ui/views/splash_view.dart';
import 'ui/views/user_profile_view.dart';
import 'utility/navigation_utility.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut(() => AppController(), fenix: true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (_) {
      return GetMaterialApp(
        title: 'Flutter Demo',
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData.dark(),
        // defaultTransition: Transition.rightToLeftWithFade,
        getPages: [
          GetPage(name: PageRouteList.splash, page: () => SplashScreen()),
          GetPage(name: PageRouteList.slides, page: () => TestPage()),
          GetPage(
              name: PageRouteList.userProfile, page: () => UserProfileView()),
          GetPage(name: PageRouteList.profile, page: () => ProfileView()),
        ],
      );
    });
  }
}
















//flutter version 2.8.0