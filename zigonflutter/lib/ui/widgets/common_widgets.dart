import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zigonflutter/utility/app_utility.dart';

class CommonWidgets {
  static Widget bottomFloatingBar(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5.0,
          sigmaY: 5.0,
        ),
        child: Container(
          width: AppUtil.screenWidth(context) - 20,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
