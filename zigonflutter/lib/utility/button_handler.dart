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
        buttonController.navBarHandler(NavBarSelectionItem.slide);
        Get.toNamed(PageRouteList.slides);
        Get.find<SlideScreenController>().playActiveVideo();
      } else if (buttonTypes == ButtonTypes.share) {
        var shareUrl = value;
        Share.share('Check out this video from ZigOn - $shareUrl');
      } else if (buttonTypes == ButtonTypes.slidesList) {
      } else if (buttonTypes == ButtonTypes.setting) {}
    }
    // LOGIN REQUIRED FUNCTIONS
    else {
      if (AppUtil.isLoggedIn) {
        if (buttonTypes == ButtonTypes.camera) {
          Get.find<SlideScreenController>().stopActiveVideo();
          Get.toNamed(PageRouteList.camera);
        } else if (buttonTypes == ButtonTypes.discover) {
          Get.find<SlideScreenController>().stopActiveVideo();
          buttonController.navBarHandler(NavBarSelectionItem.discover);
          Get.toNamed(PageRouteList.discover);
        } else if (buttonTypes == ButtonTypes.notification) {
          Get.find<SlideScreenController>().stopActiveVideo();
          buttonController.navBarHandler(NavBarSelectionItem.notification);
          Get.toNamed(PageRouteList.notification);
        } else if (buttonTypes == ButtonTypes.userprofile) {
          Get.find<SlideScreenController>().stopActiveVideo();
          buttonController.navBarHandler(NavBarSelectionItem.userprofile);
          Get.to(() => ProfileView());
        } else if (buttonTypes == ButtonTypes.like) {
          Get.find<SlideScreenController>()
              .toggleLike(videoID: value["videoId"], index: value["index"]);
        } else if (buttonTypes == ButtonTypes.comment) {
          Get.find<SlideScreenController>().getComments(videoID: value);
          showModalBottomSheet(
            context: context,
            // isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (context) {
              return CommonWidgets.commentDialogWidget(context);
            },
          );
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
