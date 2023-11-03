import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:zigonflutter/controllers/discover_controller.dart';
import 'package:zigonflutter/controllers/slide_screen_controller.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';
import 'package:zigonflutter/ui/views/discover_view/discover_view.dart';
import 'package:zigonflutter/ui/views/notifications_view/notifications_view.dart';
import 'package:zigonflutter/ui/views/profile_screen/profile_view.dart';
import 'package:zigonflutter/ui/views/slides_screen/slides_view2.dart';
import 'package:zigonflutter/ui/views/video_upload_screens/camera_page.dart';
import 'package:zigonflutter/utility/app_utility.dart';

import '../../widgets/login_widget.dart';

final GlobalKey<BottomBarState> bottomBarKey = GlobalKey<BottomBarState>();

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => BottomBarState();
}

class BottomBarState extends State<BottomBar> {
  PersistentTabController navBarController =
      PersistentTabController(initialIndex: 0);
  bool hideNavBar = false;

  toggleNavBar() {
    hideNavBar = !hideNavBar;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: navBarController,
        backgroundColor: Colors.black,
        // decoration: NavBarDecoration(borderRadius: BorderRadius.circular(40)),
        onItemSelected: (value) {
          if (AppUtil.isLoggedIn) {
            navBarController.index = value;
            if (value != 0) {
              Get.find<SlideScreenController>().stopActiveVideo();
            } else {
              Get.find<SlideScreenController>().playActiveVideo();
            }
          } else {
            log("Unable to navigate");
          }
        },
        hideNavigationBar: hideNavBar,
        bottomScreenMargin: 0,
        popAllScreensOnTapAnyTabs: true,
        items: [
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
          PersistentBottomNavBarItem(
            contentPadding: 0,
            onPressed: (p0) {
              if (AppUtil.isLoggedIn) {
                navBarController.index = 1;
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
          PersistentBottomNavBarItem(
            activeColorPrimary: AppUtil.activeIconColor,
            onPressed: (p0) {
              if (AppUtil.isLoggedIn) {
                navBarController.index = 2;
                Get.find<SlideScreenController>().stopActiveVideo();
              } else {
                log("Unable to navigate");
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
          PersistentBottomNavBarItem(
            contentPadding: 0,
            onPressed: (p0) {
              if (AppUtil.isLoggedIn) {
                navBarController.index = 3;
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
          PersistentBottomNavBarItem(
            contentPadding: 0,
            onPressed: (p0) {
              if (AppUtil.isLoggedIn) {
                navBarController.index = 4;
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
