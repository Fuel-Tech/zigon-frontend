// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/views/profile_view.dart';
import 'ui/views/slides_view.dart';
import 'ui/views/splash_view.dart';
import 'ui/views/user_profile_view.dart';
import 'utility/navigation_utility.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with PageRouteList {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: splash, page: () => SplashScreen()),
        GetPage(name: slides, page: () => SlidesView()),
        GetPage(name: userProfile, page: () => UserProfileView()),
        GetPage(name: profile, page: () => ProfileView()),
      ],
    );
  }
}
















//flutter version 2.8.0