import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zigonflutter/controllers/app_controller.dart';
import 'package:zigonflutter/controllers/slide_screen_controller.dart';
import 'package:zigonflutter/ui/views/profile_screen/profile_view.dart';
import 'package:zigonflutter/ui/widgets/login_widget.dart';
import 'package:zigonflutter/utility/app_utility.dart';
import 'package:zigonflutter/utility/firebase/dynamic_link_handler.dart';

import '../ui/views/register_view/register_view.dart';
import '../ui/widgets/common_widgets.dart';
import 'navigation_utility.dart';

class ButtonHandler {
  static onTapHandler(
      {required ButtonTypes buttonTypes,
      SubButtonType? subButtonType,
      var value,
      required BuildContext context}) {
    final AppController buttonController = Get.find();
    // LOGIN NOT REQUIRED FUNCTIONS
    if (buttonTypes == ButtonTypes.slide ||
        buttonTypes == ButtonTypes.share ||
        buttonTypes == ButtonTypes.slidesList ||
        buttonTypes == ButtonTypes.setting) {
      if (buttonTypes == ButtonTypes.slide) {
        if (buttonController.selectedNavBarItem != NavBarSelectionItem.slide) {
          buttonController.navBarHandler(NavBarSelectionItem.slide);
          Get.toNamed(PageRouteList.slides);
          Get.find<SlideScreenController>().playActiveVideo();
        }
      } else if (buttonTypes == ButtonTypes.share) {
        var videoId = value["videoId"];
        DynamicLinkHandler().shareSlideLink(videoId: videoId).then(
            (value) => Share.share('Check out this video from ZigOn - $value'));
      } else if (buttonTypes == ButtonTypes.slidesList) {
      } else if (buttonTypes == ButtonTypes.setting) {}
    } else {
      // LOGIN REQUIRED FUNCTIONS

      if (AppUtil.isLoggedIn) {
        //GOTO CAMERA
        if (buttonTypes == ButtonTypes.camera) {
          Get.find<SlideScreenController>().stopActiveVideo();
          Get.toNamed(PageRouteList.camera);
        }
        //GOTO DISCOVER
        else if (buttonTypes == ButtonTypes.discover) {
          if (buttonController.selectedNavBarItem !=
              NavBarSelectionItem.discover) {
            Get.find<SlideScreenController>().stopActiveVideo();
            buttonController.navBarHandler(NavBarSelectionItem.discover);
            Get.toNamed(PageRouteList.discover);
          }
        }
        //GOTO NOTIFICATIONS
        else if (buttonTypes == ButtonTypes.notification) {
          Get.find<SlideScreenController>().stopActiveVideo();
          buttonController.navBarHandler(NavBarSelectionItem.notification);
          Get.toNamed(PageRouteList.notification);
        }
        //GOTO USERPROFILE
        else if (buttonTypes == ButtonTypes.userprofile) {
          Get.find<SlideScreenController>().stopActiveVideo();
          buttonController.navBarHandler(NavBarSelectionItem.userprofile);
          Get.to(() => ProfileView());
        }
        // LIKE ACTION
        else if (buttonTypes == ButtonTypes.like) {
          Get.find<SlideScreenController>()
              .toggleLike(videoID: value["videoId"], index: value["index"]);
        }
        // LIKE COMMENT
        else if (buttonTypes == ButtonTypes.comment) {
          Get.find<SlideScreenController>().getComments(videoID: value);
          Get.bottomSheet(
            CommonWidgets.commentDialogWidget(context),
            isScrollControlled: false,
            backgroundColor: Colors.transparent,
          );
          // showModalBottomSheet(
          //   context: context,
          //   // isScrollControlled: true,
          //   backgroundColor: Colors.transparent,
          //   builder: (context) {
          //     return CommonWidgets.commentDialogWidget(context);
          //   },
          // );
        } else if (buttonTypes == ButtonTypes.followingSlidesList) {
        } else if (buttonTypes == ButtonTypes.slidesList) {
        } else if (buttonTypes == ButtonTypes.live) {
        } else if (buttonTypes == ButtonTypes.profile) {}
      } else {
        LoginWidgets().loginBottomSheet(context);
      }
    }
  }
}

enum SubButtonType {
  navigatePage,
  openDialog,
  toggleFunction,
  google,
  email,
  apple,
  mobile,
  forget
}

enum ButtonTypes {
  camera,
  slide,
  discover,
  notification,
  userprofile,
  profile,
  like,
  comment,
  share,
  followingSlidesList,
  slidesList,
  live,
  login,
  setting,
}
