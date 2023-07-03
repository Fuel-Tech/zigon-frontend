// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zigonflutter/controllers/app_controller.dart';
import 'package:zigonflutter/controllers/slide_screen_controller.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';
import 'package:zigonflutter/ui/views/discover_view/discover_view.dart';
import 'package:zigonflutter/ui/views/user_settings_screen.dart/user_settings_view.dart';
import 'package:zigonflutter/ui/views/video_upload_screens/camera_page.dart';
import 'package:zigonflutter/ui/views/view_slides_view.dart';
import 'package:zigonflutter/utility/shared_prefs.dart';
import 'ui/views/notifications_view/notifications_view.dart';
import 'ui/views/profile_screen/profile_view.dart';
import 'ui/views/slides_screen/slides_view2.dart';
import 'ui/views/splash_view.dart';
import 'ui/views/video_upload_screens/upload_final_screen.dart';
import 'utility/navigation_utility.dart';
import 'package:camera/camera.dart';
import 'package:permission_handler/permission_handler.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefHandler().instanceInit();
  cameras = await availableCameras();
  _requestPermissions();
  HttpOverrides.global = MyHttpOverrides();
  Get.lazyPut(() => AppController(), fenix: true);
  Get.put(SlideScreenController(), permanent: true);
  runApp(MyApp());
}

void _requestPermissions() async {
  await Permission.camera.request();
  await Permission.microphone.request();
  await Permission.storage.request();
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZigOn',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      initialRoute: '/',
      // defaultTransition: Transition.rightToLeftWithFade,
      getPages: [
        GetPage(name: PageRouteList.splash, page: () => SplashScreen()),
        GetPage(name: PageRouteList.slides, page: () => VideoSwiper()),
        GetPage(name: PageRouteList.profile, page: () => ProfileView()),
        GetPage(name: PageRouteList.discover, page: () => DiscoverView()),
        GetPage(
            name: PageRouteList.notification, page: () => NotificationsView()),
        GetPage(name: PageRouteList.viewSlides, page: () => ViewSlidesView()),
        GetPage(
            name: PageRouteList.userSettings, page: () => UserSettingsView()),
        GetPage(name: PageRouteList.camera, page: () => CameraPage()),
      ],
    );
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