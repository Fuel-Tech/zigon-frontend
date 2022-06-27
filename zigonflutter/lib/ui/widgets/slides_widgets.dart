import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zigonflutter/utility/app_utility.dart';

mixin SlidesWidget {
  watchAllSlidesButton() {
    return GestureDetector(
      onTap: () {},
      child: Text(
        'Slides',
        style: AppUtil.textStyle1(
          textSize: 20,
          weight: FontWeight.w700,
        ),
      ),
    );
  }

  onTopGradient(BuildContext context) {
    return Container(
      width: AppUtil.screenWidth(context),
      height: AppUtil.screenHeight(context),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(0.05),
            Colors.black.withOpacity(0.2),
            Colors.black.withOpacity(0.3),
            Colors.black.withOpacity(0.7),
          ],
          stops: [
            0.1,
            0.4,
            0.8,
            0.9,
          ],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
        ),
      ),
    );
  }

  Widget settingsWidget() {
    return GestureDetector(
      onTap: () {
        //Settings Function
      },
      child: Column(
        children: [
          Container(
            width: 5,
            height: 5,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
          ),
          const SizedBox(height: 1),
          Container(
            width: 5,
            height: 5,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
          ),
          const SizedBox(height: 1),
          Container(
            width: 5,
            height: 5,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
          ),
        ],
      ),
    );
  }

  watchFollowingSlidesButton() {
    return GestureDetector(
      onTap: () {},
      child: Text(
        'Following',
        style: AppUtil.textStyle1(
          textSize: 16,
          weight: FontWeight.w500,
        ),
      ),
    );
  }

  liveButton() {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          const FaIcon(
            FontAwesomeIcons.video,
            color: Colors.amber,
            size: 16,
          ),
          const SizedBox(width: 3),
          Text(
            'Live',
            style: AppUtil.textStyle1(
              textSize: 16,
              weight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
