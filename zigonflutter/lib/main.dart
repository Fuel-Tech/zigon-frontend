// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:camera/camera.dart';
import 'package:permission_handler/permission_handler.dart';

import 'controllers/app_controller.dart';
import 'controllers/slide_screen_controller.dart';

import 'utility/firebase/dynamic_link_handler.dart';
import 'utility/firebase/fcm_handler.dart';
import 'utility/shared_prefs.dart';

import 'ui/views/discover_view/discover_view.dart';
import 'ui/views/user_settings_screen.dart/user_settings_view.dart';
import 'ui/views/video_upload_screens/camera_page.dart';
import 'ui/views/bottom_nav_bar/bottom_nav_bar.dart';
import 'ui/views/notifications_view/notifications_view.dart';
import 'ui/views/profile_screen/profile_view.dart';
import 'ui/views/slides_screen/slides_view2.dart';
import 'ui/views/splash_view.dart';
import 'utility/navigation_utility.dart';

// options: FirebaseOptions(
//           apiKey:
//               "AAAAe8JZL3M:APA91bFk10x1PkJNwbG95-blA58siUN0VaJwIdFZt14-WKhQvnS_XZY1a9xi7QNGM_PHwx_HLIUmTVLn2q5Fy3ndJbXdypu2e0TEbgjNUVDjqp71rm-m9MolUlsQ_K2Rdmqt5boT_EQH",
//           appId: "1:531541602163:ios:65e74760096d96f3535f06",
//           messagingSenderId: "531541602163",
//           projectId: "zigonfirebase")

List<CameraDescription> cameras = [];
String? fcmToken;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await Firebase.initializeApp();
  await SharedPrefHandler().instanceInit();
  await FcmService().startFCMService();
  await DynamicLinkHandler().initDynamicLink();
  cameras = await availableCameras();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//test@123
  Get.lazyPut(() => AppController(), fenix: true);
  Get.put(SlideScreenController(), permanent: true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZigOn',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      initialRoute: '/',
      defaultTransition: Transition.rightToLeftWithFade,
      getPages: [
        GetPage(name: PageRouteList.splash, page: () => SplashScreen()),
        GetPage(
          name: PageRouteList.bottomBar,
          page: () => BottomBar(
            key: bottomBarKey,
          ),
        ),
        GetPage(name: PageRouteList.slides, page: () => VideoSwiper()),
        GetPage(name: PageRouteList.profile, page: () => ProfileView()),
        GetPage(name: PageRouteList.discover, page: () => DiscoverView()),
        GetPage(
            name: PageRouteList.notification, page: () => NotificationsView()),
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

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  fcmHandleMethod(message);
}

Future<void> requestPermissions() async {
  await Permission.camera.request();
  await Permission.microphone.request();
  await Permission.storage.request();
}





//flutter version 2.8.0