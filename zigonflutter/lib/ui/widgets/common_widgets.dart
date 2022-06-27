import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zigonflutter/utility/app_utility.dart';
import 'package:zigonflutter/utility/navigation_utility.dart';

class CommonWidgets {
  static Widget bottomFloatingBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: Container(
            width: AppUtil.screenWidth(context) - 20,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(PageRouteList.slides);
                  },
                  child: const FaIcon(
                    FontAwesomeIcons.film,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const FaIcon(
                  FontAwesomeIcons.earthAsia,
                  color: Colors.grey,
                  size: 20,
                ),
                GestureDetector(
                  onTap: () {
                    //Add Slides Function
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      gradient: AppUtil.buttonGradient,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: const FaIcon(
                      FontAwesomeIcons.video,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
                const FaIcon(
                  FontAwesomeIcons.bell,
                  color: Colors.grey,
                  size: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(PageRouteList.userProfile);
                  },
                  child: const FaIcon(
                    FontAwesomeIcons.user,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
