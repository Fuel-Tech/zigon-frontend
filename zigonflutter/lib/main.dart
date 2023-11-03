// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zigonflutter/controllers/app_controller.dart';
import 'package:zigonflutter/controllers/slide_screen_controller.dart';
import 'package:zigonflutter/ui/views/discover_view/discover_view.dart';
import 'package:zigonflutter/ui/views/user_settings_screen.dart/user_settings_view.dart';
import 'package:zigonflutter/ui/views/video_upload_screens/camera_page.dart';
import 'package:zigonflutter/ui/views/view_slides_view.dart';
import 'package:zigonflutter/utility/fcm_handler.dart';
import 'package:zigonflutter/utility/shared_prefs.dart';
import 'ui/views/bottom_nav_bar/bottom_nav_bar.dart';
import 'ui/views/notifications_view/notifications_view.dart';
import 'ui/views/profile_screen/profile_view.dart';
import 'ui/views/slides_screen/slides_view2.dart';
import 'ui/views/splash_view.dart';
import 'utility/navigation_utility.dart';
import 'package:camera/camera.dart';
import 'package:permission_handler/permission_handler.dart';

List<CameraDescription> cameras = [];
String? fcm;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefHandler().instanceInit();
  cameras = await availableCameras();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await Firebase.initializeApp();
  await _requestPermissions();
  fcm = await FirebaseMessaging.instance.getToken();
  HttpOverrides.global = MyHttpOverrides();
  Get.lazyPut(() => AppController(), fenix: true);
  Get.put(SlideScreenController(), permanent: true);
  runApp(MyApp());
}

Future<void> _requestPermissions() async {
  await Permission.camera.request();
  await Permission.microphone.request();
  await Permission.storage.request();
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FcmService().startFCMService(context);
  }

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
        GetPage(name: PageRouteList.slides, page: () => BottomBar()),
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

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  log("background message ${message.data}");
}






//flutter version 2.8.0