import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';
import 'package:zigonflutter/ui/widgets/common_widgets.dart';
import 'package:zigonflutter/utility/app_utility.dart';

class ButtonHandler {
  static onTapHandler(
      {required ButtonTypes buttonTypes,
      SubButtonType? subButtonType,
      required BuildContext context}) {
    final SlidesController buttonController = Get.find();
    if (buttonTypes == ButtonTypes.slide || buttonTypes == ButtonTypes.share) {
    } else {
      if (buttonController.isLoggedIn) {
        if (buttonTypes == ButtonTypes.camera) {
        } else if (buttonTypes == ButtonTypes.discover) {
        } else if (buttonTypes == ButtonTypes.notification) {
        } else if (buttonTypes == ButtonTypes.userprofile) {
        } else if (buttonTypes == ButtonTypes.like) {
        } else if (buttonTypes == ButtonTypes.comment) {
        } else if (buttonTypes == ButtonTypes.followingSlidesList) {
        } else if (buttonTypes == ButtonTypes.slidesList) {
        } else if (buttonTypes == ButtonTypes.live) {}
      } else {
        //Pop Login Dialog Box
        showModalBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            builder: (context) {
              return ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                  child: Container(
                    height: AppUtil.screenHeight(context) / 2.5,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 10),
                      child: Column(
                        children: [
                          Padding(
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
                                  Icon(
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
                          Padding(
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
                          Padding(
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
                                    'Login in with Number',
                                    style: GoogleFonts.quicksand(
                                        fontSize: 17, color: Colors.black),
                                  )
                                ],
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
                                fontSize: 10,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            });
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
  like,
  comment,
  share,
  followingSlidesList,
  slidesList,
  live,
  login
}
