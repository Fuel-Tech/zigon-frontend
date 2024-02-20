import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:zigonflutter/controllers/slide_screen_controller.dart';
import 'package:zigonflutter/ui/views/discover_view/discover_view.dart';
import 'package:zigonflutter/ui/views/notifications_view/notifications_view.dart';
import 'package:zigonflutter/ui/views/profile_screen/profile_view.dart';
import 'package:zigonflutter/ui/views/slides_screen/slides_view2.dart';
import 'package:zigonflutter/ui/views/video_upload_screens/camera_page.dart';
import 'package:zigonflutter/utility/app_utility.dart';

import '../../../controllers/bottombar_controller.dart';
import '../../../main.dart';
import '../../widgets/login_widget.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => BottomBarState();
}

class BottomBarState extends State<BottomBar> {
  final BottomBarController controller = Get.put(BottomBarController());

  bool hideNavBar = false;

  toggleNavBar() {
    setState(() {
      hideNavBar = !hideNavBar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: controller.navBarController,
        backgroundColor: Colors.black,
        // decoration: NavBarDecoration(borderRadius: BorderRadius.circular(40)),
        onItemSelected: (value) {
          if (AppUtil.isLoggedIn) {
            controller.navBarController.index = value;
            if (value != 0) {
              Get.find<SlideScreenController>().stopActiveVideo();
            } else {
              Get.find<SlideScreenController>().playActiveVideo();
            }

            if (value == 2) {
              log("camera");
            }
          } else {
            log("Unable to navigate");
          }
        },
        hideNavigationBar: hideNavBar,
        bottomScreenMargin: 0,
        items: [
          // SLIDES
          PersistentBottomNavBarItem(
            contentPadding: 0,
            icon: FaIcon(
              FontAwesomeIcons.film,
              color: AppUtil.activeIconColor,
              size: 20,
            ),
            inactiveIcon: FaIcon(
              FontAwesomeIcons.film,
              color: AppUtil.inActiveIconColor,
              size: 20,
            ),
          ),
          // DISCOVER
          PersistentBottomNavBarItem(
            contentPadding: 0,
            onPressed: (p0) {
              if (AppUtil.isLoggedIn) {
                controller.navBarController.index = 1;
                Get.find<SlideScreenController>().stopActiveVideo();
              } else {
                log("Unable to navigate");
                LoginWidgets().loginBottomSheet(context);
              }
            },
            icon: FaIcon(
              FontAwesomeIcons.earthAsia,
              color: AppUtil.activeIconColor,
              size: 20,
            ),
            inactiveIcon: FaIcon(
              FontAwesomeIcons.earthAsia,
              color: AppUtil.inActiveIconColor,
              size: 20,
            ),
          ),
          // CAMERA
          PersistentBottomNavBarItem(
            activeColorPrimary: AppUtil.activeIconColor,
            onPressed: (p0) {
              controller.cameraView = true;
              controller.toggleNavBar();
              if (AppUtil.isLoggedIn) {
                // toggleNavBar();
                controller.cameraView = true;
                if (hideNavBar == false) {
                  toggleNavBar();
                }
                controller.navBarController.index = 2;
                Get.find<SlideScreenController>().stopActiveVideo();
              } else {
                log("NOT LOGGED IN");
                LoginWidgets().loginBottomSheet(context);
              }
            },
            icon: Icon(
              Icons.video_call_rounded,
              color: Colors.white,
            ),
            inactiveIcon: Icon(
              Icons.video_call_rounded,
              color: Colors.white,
              size: 29,
            ),
          ),
          // NOTIFICATION
          PersistentBottomNavBarItem(
            contentPadding: 0,
            onPressed: (p0) {
              if (AppUtil.isLoggedIn) {
                controller.navBarController.index = 3;
                Get.find<SlideScreenController>().stopActiveVideo();
              } else {
                log("Unable to navigate");
                LoginWidgets().loginBottomSheet(context);
              }
            },
            icon: FaIcon(
              FontAwesomeIcons.bell,
              color: AppUtil.activeIconColor,
              size: 20,
            ),
            inactiveIcon: FaIcon(
              FontAwesomeIcons.bell,
              color: AppUtil.inActiveIconColor,
              size: 20,
            ),
          ),
          // PROFILE
          PersistentBottomNavBarItem(
            contentPadding: 0,
            onPressed: (p0) {
              if (AppUtil.isLoggedIn) {
                controller.navBarController.index = 4;
                Get.find<SlideScreenController>().stopActiveVideo();
              } else {
                log("Unable to navigate");
                LoginWidgets().loginBottomSheet(context);
              }
            },
            icon: FaIcon(
              FontAwesomeIcons.user,
              color: AppUtil.activeIconColor,
              size: 20,
            ),
            inactiveIcon: FaIcon(
              FontAwesomeIcons.user,
              color: AppUtil.inActiveIconColor,
              size: 20,
            ),
          )
        ],
        navBarStyle: NavBarStyle.style15,
        onWillPop: (p0) async {
          if (controller.navBarController.index != 0) {
            controller.navBarController.index = 0;
            Get.find<SlideScreenController>().playActiveVideo();
            if (controller.cameraView) {
              toggleNavBar();

              cameraKey.currentState!.recordingProgresss = 0.0;
              cameraKey.currentState!.recordingTimeSecond = 0;
              cameraKey.currentState!.startedRecording = false;
              cameraKey.currentState!.isPlaying = false;
              cameraKey.currentState!.timer.cancel;

              controller.cameraView = false;
            }
            return false;
          } else {
            return true;
          }
        },
        handleAndroidBackButtonPress: false,
        screens: [
          VideoSwiper(),
          DiscoverView(),
          CameraPage(),
          NotificationsView(),
          ProfileView(),
        ],
      ),
    );
  }
}
