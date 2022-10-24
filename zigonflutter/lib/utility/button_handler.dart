import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';
import 'package:zigonflutter/utility/app_utility.dart';

import '../ui/widgets/common_widgets.dart';
import 'navigation_utility.dart';

class ButtonHandler {
  static onTapHandler(
      {required ButtonTypes buttonTypes,
      SubButtonType? subButtonType,
      var value,
      required BuildContext context}) {
    final SlidesController buttonController = Get.find();
    if (buttonTypes == ButtonTypes.slide ||
        buttonTypes == ButtonTypes.share ||
        buttonTypes == ButtonTypes.slidesList ||
        buttonTypes == ButtonTypes.setting) {
      if (buttonTypes == ButtonTypes.slide) {
        buttonController.navBarHandler(NavBarSelectionItem.slide);
        Get.toNamed(PageRouteList.slides);
      } else if (buttonTypes == ButtonTypes.share) {
        var shareUrl = value;
        Share.share('Check out this video from ZigOn - $shareUrl');
      } else if (buttonTypes == ButtonTypes.slidesList) {
      } else if (buttonTypes == ButtonTypes.setting) {}
    } else {
      if (buttonController.isLoggedIn) {
        if (buttonTypes == ButtonTypes.camera) {
          Get.toNamed(PageRouteList.camera);
        } else if (buttonTypes == ButtonTypes.discover) {
          buttonController.navBarHandler(NavBarSelectionItem.discover);
        } else if (buttonTypes == ButtonTypes.notification) {
          buttonController.navBarHandler(NavBarSelectionItem.notification);
        } else if (buttonTypes == ButtonTypes.userprofile) {
          Get.toNamed(PageRouteList.userProfile);
        } else if (buttonTypes == ButtonTypes.like) {
          buttonController.likeButtonHandler(0);
        } else if (buttonTypes == ButtonTypes.comment) {
          buttonController.getComments();
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return CommonWidgets.commentDialogWidget(
                  context, buttonController);
            },
          );
        } else if (buttonTypes == ButtonTypes.followingSlidesList) {
        } else if (buttonTypes == ButtonTypes.slidesList) {
        } else if (buttonTypes == ButtonTypes.live) {
        } else if (buttonTypes == ButtonTypes.profile) {}
      } else {
        loginBottomSheet(context);
      }
    }
  }
}

loginBottomSheet(BuildContext context) {
  //Pop Login Dialog Box
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: GetBuilder<SlidesController>(builder: (controller) {
            return ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Container(
                  height: AppUtil.screenHeight(context) / 2.4,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.6),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 20),
                    child: controller.loginType == LoginTypes.none
                        ? defaultLoginState(context, controller)
                        : controller.loginType == LoginTypes.email
                            ? emailLoginState(context, controller)
                            : defaultLoginState(context, controller),
                  ),
                ),
              ),
            );
          }),
        );
      });
}

defaultLoginState(BuildContext context, SlidesController controller) {
  return Column(
    children: [
      //Login With Google or Apple
      controller.isIOS
          ? GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Ionicons.logo_apple,
                        color: Colors.black,
                      ),
                      Text(
                        'Login With Apple ID',
                        style: GoogleFonts.quicksand(
                            fontSize: 17, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            )
          : GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Ionicons.logo_google,
                        color: Colors.black,
                      ),
                      Text(
                        'Login With Google',
                        style: GoogleFonts.quicksand(
                            fontSize: 17, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
      //Login with OTP
      GestureDetector(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 55,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.mobile_friendly_outlined,
                  color: Colors.black,
                ),
                Text(
                  'Login in with OTP',
                  style:
                      GoogleFonts.quicksand(fontSize: 17, color: Colors.black),
                )
              ],
            ),
          ),
        ),
      ),
      //Login With Email
      GestureDetector(
        onTap: () {
          controller.loginTypeSelector(LoginTypes.email);
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 55,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.email,
                  color: AppUtil.primary,
                ),
                Text(
                  'Login in with Email',
                  style:
                      GoogleFonts.quicksand(fontSize: 17, color: Colors.black),
                )
              ],
            ),
          ),
        ),
      ),
      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Terms & Conditions',
          style: GoogleFonts.raleway(
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      )
    ],
  );
}

emailLoginState(BuildContext context, SlidesController controller) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                controller.loginTypeSelector(LoginTypes.none);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 20,
              )),
          Text(
            'Login With Email',
            style:
                GoogleFonts.raleway(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.transparent,
              )),
        ],
      ),
      const SizedBox(height: 20),
      TextFormField(
        controller: controller.emailFieldController,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            isDense: true,
            hintText: 'Email',
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
      ),
      const SizedBox(height: 10),
      TextFormField(
        controller: controller.passwordFieldController,
        obscureText: true,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            isDense: true,
            hintText: 'Password',
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(6))),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: GestureDetector(
          onTap: () {
            controller.userLogin();
          },
          child: Container(
            decoration: BoxDecoration(
                color: AppUtil.secondary,
                borderRadius: BorderRadius.circular(8),
                boxShadow: []),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Text(
              'Login',
              style: GoogleFonts.raleway(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    ],
  );
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
