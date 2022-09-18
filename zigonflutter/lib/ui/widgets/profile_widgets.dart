// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:zigonflutter/utility/app_utility.dart';

mixin ProfileWidgets {
  Widget profilePictureWidget(var path) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('$path'),
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 6,
            offset: Offset(0, 4),
          )
        ],
        shape: BoxShape.circle,
      ),
    );
  }

  Widget userNameWidget(var userName) {
    return Text(
      '$userName',
      style: AppUtil.textStyle1(
        textSize: 24,
        weight: FontWeight.w700,
        textColor: Colors.black,
      ),
    );
  }

  Widget userIDWidget(var userID) {
    return Text(
      '$userID',
      style:
          AppUtil.textStyle1(weight: FontWeight.w500, textColor: Colors.black),
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
                color: Colors.black, shape: BoxShape.circle),
          ),
          const SizedBox(height: 1),
          Container(
            width: 5,
            height: 5,
            decoration: const BoxDecoration(
                color: Colors.black, shape: BoxShape.circle),
          ),
          const SizedBox(height: 1),
          Container(
            width: 5,
            height: 5,
            decoration: const BoxDecoration(
                color: Colors.black, shape: BoxShape.circle),
          ),
        ],
      ),
    );
  }

  Widget youtubeWidget() {
    return SizedBox(
      width: 26,
      height: 26,
      child: Image.asset('assets/icons/yticon.png', fit: BoxFit.fill),
    );
  }

  Widget instagramWidget() {
    return SizedBox(
      width: 26,
      height: 26,
      child: Image.asset('assets/icons/instaicon.png', fit: BoxFit.fill),
    );
  }

  Widget editProfileButton() {
    return GestureDetector(
      onTap: () {
        //Edit Profile Function
      },
      child: Container(
        width: 95,
        height: 35,
        decoration: BoxDecoration(
          color: AppUtil.primary,
          border: Border.all(color: Colors.white, width: 1.5),
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.edit,
              color: Colors.white,
              size: 16,
            ),
            Text(
              'Edit Profile',
              style: AppUtil.textStyle1(
                weight: FontWeight.w500,
                textSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
